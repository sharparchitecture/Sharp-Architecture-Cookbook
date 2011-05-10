namespace SharpCookbook.Infrastructure.NHibernateMaps
{
    using Domain;

    using FluentNHibernate.Mapping;

    public class AddressMap : ClassMap<Address>
    {
        public AddressMap() 
        {
            Table("SalesLT.Address");

            Id(x => x.Id, "AddressID");
        }
    }
}
