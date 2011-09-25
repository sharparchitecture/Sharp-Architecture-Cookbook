namespace SharpArchCookbook.Infrastructure.NHibernateMaps
{
    using Domain;
    using FluentNHibernate.Automapping;
    using FluentNHibernate.Automapping.Alterations;

    public class SalesOrderHeaderMap : IAutoMappingOverride<SalesOrderHeader>
    {
        public void Override(AutoMapping<SalesOrderHeader> mapping) 
        {
            mapping.Table("SalesOrderHeader");

            mapping.Id(x => x.Id, "SalesOrderID");
        }
    }
}