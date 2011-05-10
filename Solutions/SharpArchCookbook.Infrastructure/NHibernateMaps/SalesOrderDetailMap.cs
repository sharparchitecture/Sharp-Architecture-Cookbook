namespace SharpArchCookbook.Infrastructure.NHibernateMaps
{
    using FluentNHibernate.Mapping;
    using SharpArchCookbook.Domain;

    public class SalesOrderDetailMap : ClassMap<SalesOrderDetail>
    {
        public SalesOrderDetailMap() {
            Table("SalesLT.SalesOrderDetail");

            Id(x => x.Id, "SalesOrderDetailID");
        }
    }
}