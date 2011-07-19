namespace SharpArchCookbook.Infrastructure.NHibernateMaps
{
    using Domain;

    using FluentNHibernate.Automapping;
    using FluentNHibernate.Automapping.Alterations;

    public class AddressMap : IAutoMappingOverride<Address>
    {
        public void Override(AutoMapping<Address> mapping)
        {
            mapping.Table("`SalesLT.Address`");

            mapping.Id(x => x.Id, "AddressID");
        }
    }
}
