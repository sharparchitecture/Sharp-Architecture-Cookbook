namespace SharpArchCookbook.Web.Mvc.Controllers
{
    using System;
    using System.Linq;
    using System.Web.Mvc;

    using Domain;
    
    using MvcContrib;
    
    using SharpArch.Domain.Commands;
    using SharpArch.RavenDb.Contracts.Repositories;
    using SharpArch.RavenDb.Web.Mvc;

    using Tasks.Commands;
    using ViewModels;
    

    public class CustomerController : Controller
    {
        private readonly ICommandProcessor commandProcessor;

        private readonly IRavenDbRepository<Address> customerAddressRepository;

        public CustomerController(ICommandProcessor commandProcessor, IRavenDbRepository<Address> customerAddressRepository)
        {
            this.commandProcessor = commandProcessor;
            this.customerAddressRepository = customerAddressRepository;
        }

        [UnitOfWork]
        [HttpGet]
        public ActionResult Index()
        {
            var tenLittleCustomers = this.customerAddressRepository.GetAll().Take(10).ToList();
            return View(tenLittleCustomers);
        }

        [UnitOfWork]
        [HttpGet]
        public ActionResult ChangeAddress(int id)
        {
            var viewModel = this.customerAddressRepository.Get(id);
            return View(viewModel);
        }

        [UnitOfWork]
        [ValidateAntiForgeryToken]
        [HttpPost]
        public ActionResult ChangeAddress(Address address)
        {
            var command = new ChangeCustomerAddressCommand(
                                                           address.Id,
                                                           address.AddressLine1,
                                                           address.AddressLine2,
                                                           address.City,
                                                           address.StateProvince,
                                                           address.PostalCode,
                                                           address.CountryRegion);

            this.commandProcessor.Process(command);

            return View(address);
        }
    }
}
