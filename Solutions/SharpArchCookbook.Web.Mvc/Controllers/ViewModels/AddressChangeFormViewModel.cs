namespace SharpArchCookbook.Web.Mvc.Controllers.ViewModels
{
    using System;

    public class AddressChangeFormViewModel
    {
        public AddressChangeFormViewModel(int addressId)
        {
            this.PreviousAddressId = addressId;
        }

        public int PreviousAddressId { get; set; }

        public string AddressLine1 { get; set; }

        public string AddressLine2 { get; set; }

        public string City { get; set; }

        public string StateProvince { get; set; }

        public string PostalCode { get; set; }
    }
}