namespace SharpArchCookbook.Tasks.Commands
{
    public class AddCustomerAddressCommand : AddressCommandBase
    {
        public AddCustomerAddressCommand(
            string addressLine1,
            string addressLine2,
            string city,
            string stateProvince,
            string postalCode,
            string countryRegion)
            : base(addressLine1, addressLine2, city, stateProvince, postalCode, countryRegion)
        {
        }
    }
}