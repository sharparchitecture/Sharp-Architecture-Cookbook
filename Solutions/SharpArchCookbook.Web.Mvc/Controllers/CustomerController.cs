using MvcContrib;

namespace SharpArchCookbook.Web.Mvc.Controllers
{
    using System.Web.Mvc;
    using SharpArch.Domain.Commands;
    using SharpArchCookbook.Tasks.Commands;

    using ViewModels;

    public class CustomerController : Controller
    {
        private readonly ICommandProcessor commandProcessor;

        public CustomerController(ICommandProcessor commandProcessor)
        {
            this.commandProcessor = commandProcessor;
        }

        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult AddressChange(int addressId)
        {
            var viewModel = new AddressChangeFormViewModel(addressId);
            return View(viewModel);
        }

        [HttpPost]
        public ActionResult AddressChange(AddressChangeFormViewModel viewModel)
        {
            var command = new ChangeCustomerAddressCommand(
                                                           viewModel.PreviousAddressId,
                                                           viewModel.AddressLine1,
                                                           viewModel.AddressLine2,
                                                           viewModel.City,
                                                           viewModel.StateProvince,
                                                           viewModel.PostalCode);

            var results = this.commandProcessor.Process(command);

            if (results.Success)
            {
                return this.RedirectToAction(x => x.Index());
            }

            return View(viewModel);
        }
    }
}
