namespace SharpArchCookbook.Infrastructure.NHibernateMaps
{
    using FluentNHibernate.Mapping;

    using SharpArchCookbook.Domain;

    public class CustomerMap : ClassMap<Customer>
    {
        public CustomerMap()
        {
            Table("SalesLT.Customer");

            Id(x => x.Id, "CustomerID");
        }
    }
}
