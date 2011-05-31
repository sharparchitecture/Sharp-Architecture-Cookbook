namespace SharpArchCookbook.Tasks.CommandHandlers
{
    using Commands;
    using Domain;

    using SharpArch.Domain.Commands;
    using SharpArch.NHibernate.Contracts.Repositories;

    public class ChangeCustomerAddressHandler : ICommandHandler<ChangeCustomerAddressCommand>
    {
        private readonly INHibernateRepository<CustomerAddress> customerAddressRepository;

        public ChangeCustomerAddressHandler(INHibernateRepository<CustomerAddress> customerAddressRepository)
        {
            this.customerAddressRepository = customerAddressRepository;
        }

        public ICommandResult Handle(ChangeCustomerAddressCommand command)
        {
            var customerAddress = this.customerAddressRepository.Get(command.CustomerAddressId);
            var newAddress = new Address
                                 {
                                     AddressLine1 = command.AddressLine1,
                                     AddressLine2 = command.AddressLine2,
                                     City = command.City,
                                     StateProvince = command.StateProvince,
                                     PostalCode = command.PostalCode,
                                     ModifiedDate = command.ModifiedDate
                                 };

            customerAddress.Address = newAddress;
            this.customerAddressRepository.SaveOrUpdate(customerAddress);

            return new ChangeCustomerAddressResult(true);
        }
    }
}
