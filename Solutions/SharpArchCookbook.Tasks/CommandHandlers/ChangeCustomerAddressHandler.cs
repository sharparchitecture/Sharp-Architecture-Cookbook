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

            address.AddressLine1 = command.AddressLine1;
            address.AddressLine2 = command.AddressLine2;
            address.City = command.City;
            address.StateProvince = command.StateProvince;
            address.PostalCode = command.PostalCode;
            address.ModifiedDate = command.ModifiedDate;
            address.CountryRegion = command.CountryRegion;

            this.addressRepository.SaveOrUpdate(address);
        }
    }
}

