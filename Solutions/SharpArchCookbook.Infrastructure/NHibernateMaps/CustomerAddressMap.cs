namespace SharpArchCookbook.Infrastructure.NHibernateMaps
{
    using FluentNHibernate.Mapping;

    using SharpArchCookbook.Domain;

    public class CustomerAddressMap : ClassMap<CustomerAddress>
    {
        public CustomerAddressMap() 
        {
            Table("SalesLT.CustomerAddress");

            CompositeId().KeyReference(x => x.Customer, "CustomerID")
                         .KeyReference(x => x.Address, "AddressID");
        }
    }
}