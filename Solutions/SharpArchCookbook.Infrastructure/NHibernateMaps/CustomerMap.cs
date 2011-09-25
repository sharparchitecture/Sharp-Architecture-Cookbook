namespace SharpArchCookbook.Infrastructure.NHibernateMaps
{
    using Domain;

    using FluentNHibernate.Automapping;
    using FluentNHibernate.Automapping.Alterations;

    public class CustomerMap : IAutoMappingOverride<Customer>
    {
        public void Override(AutoMapping<Customer> mapping)
        {
            mapping.Table("Customer");

            mapping.Id(x => x.Id, "CustomerID");
        }
    }
}
