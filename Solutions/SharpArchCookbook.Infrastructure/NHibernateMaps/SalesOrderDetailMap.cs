using FluentNHibernate.Automapping;
using FluentNHibernate.Automapping.Alterations;

namespace SharpArchCookbook.Infrastructure.NHibernateMaps
{
    using FluentNHibernate.Mapping;
    using SharpArchCookbook.Domain;

    public class SalesOrderDetailMap : IAutoMappingOverride<SalesOrderDetail>
    {
        public void Override(AutoMapping<SalesOrderDetail> mapping) 
        {
            mapping.Table("SalesLT.SalesOrderDetail");

            mapping.Id(x => x.Id, "SalesOrderDetailID");
        }
    }
}