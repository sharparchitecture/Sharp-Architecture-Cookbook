namespace SharpArchCookbook.Infrastructure.NHibernateMaps
{
    using System;

    using Domain;
    using FluentNHibernate.Automapping;
    using FluentNHibernate.Automapping.Alterations;

    public class CustomerAddressMap : IAutoMappingOverride<CustomerAddress>
    {
        public void Override(AutoMapping<CustomerAddress> mapping)
        {
            mapping.Table("CustomerAddress");

            mapping.Id(x => x.Id, "rowguid");
        }
    }
}