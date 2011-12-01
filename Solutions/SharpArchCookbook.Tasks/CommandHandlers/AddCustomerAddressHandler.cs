namespace SharpArchCookbook.Tasks.CommandHandlers
{
    using SharpArch.Domain.Commands;
    using SharpArch.Domain.PersistenceSupport;

    using SharpArchCookbook.Domain;
    using SharpArchCookbook.Tasks.Commands;

    public class AddCustomerAddressHandler : ICommandHandler<AddCustomerAddressCommand>
    {
        private readonly IRepository<Address> addressRepository;

        public AddCustomerAddressHandler(IRepository<Address> addressRepository)
        {
            this.addressRepository = addressRepository;
        }

        public void Handle(AddCustomerAddressCommand command)
        {
            var address = new Address
                {
                    AddressLine1 = command.AddressLine1,
                    AddressLine2 = command.AddressLine2,
                    City = command.City,
                    StateProvince = command.StateProvince,
                    PostalCode = command.PostalCode,
                    ModifiedDate = command.ModifiedDate,
                    CountryRegion = command.CountryRegion
                };

            this.addressRepository.SaveOrUpdate(address);
        }
    }
}