namespace SharpArchCookbook.Tasks.CommandHandlers
{
    using Commands;
    using Domain;

    using SharpArch.Domain.Commands;
    using SharpArch.Domain.PersistenceSupport;

    public class ChangeCustomerAddressHandler : ICommandHandler<ChangeCustomerAddressCommand>
    {
        private readonly IRepository<Address> addressRepository;

        public ChangeCustomerAddressHandler(IRepository<Address> addressRepository)
        {
            this.addressRepository = addressRepository;
        }

        public void Handle(ChangeCustomerAddressCommand command)
        {
            var address = this.addressRepository.Get(command.Id);
            var newAddress = new Address
                                 {
                                     AddressLine1 = command.AddressLine1,
                                     AddressLine2 = command.AddressLine2,
                                     City = command.City,
                                     StateProvince = command.StateProvince,
                                     PostalCode = command.PostalCode,
                                     ModifiedDate = command.ModifiedDate,
                                     CountryRegion = command.CountryRegion
                                 };

            address = newAddress;
            this.addressRepository.SaveOrUpdate(address);
        }
    }
}
