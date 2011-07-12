namespace SharpArchCookbook.Web.Mvc.Controllers
{
    using System;
    using System.Linq;
    using System.Web.Mvc;

    using Domain;
    
    using MvcContrib;
    
    using SharpArch.Domain.Commands;
    using SharpArch.NHibernate.Contracts.Repositories;
    using Tasks.Commands;
    using ViewModels;
    

    public class CustomerController : Controller
    {
        private readonly ICommandProcessor commandProcessor;

        private readonly INHibernateRepository<Address> customerAddressRepository;

        public CustomerController(ICommandProcessor commandProcessor, INHibernateRepository<Address> customerAddressRepository)
        {
            this.commandProcessor = commandProcessor;
            this.customerAddressRepository = customerAddressRepository;
        }

        public ActionResult Index()
        {
            var tenLittleCustomers = this.customerAddressRepository.GetAll().Take(10).ToList();
            return View(tenLittleCustomers);
        }

        [HttpGet]
        public ActionResult AddressChange(int addressId)
        {
            var viewModel = this.customerAddressRepository.Get(addressId);
            return View(viewModel);
        }

        [HttpPost]
        public ActionResult AddressChange(Address viewModel)
        {
            var command = new ChangeCustomerAddressCommand(
                                                           viewModel.Id,
                                                           viewModel.AddressLine1,
                                                           viewModel.AddressLine2,
                                                           viewModel.City,
                                                           viewModel.StateProvince,
                                                           viewModel.PostalCode,
                                                           viewModel.CountryRegion);

            var results = this.commandProcessor.Process(command);

            if (results.Success)
            {
                return this.RedirectToAction(x => x.Index());
            }

            return View(viewModel);
        }
    }
}
