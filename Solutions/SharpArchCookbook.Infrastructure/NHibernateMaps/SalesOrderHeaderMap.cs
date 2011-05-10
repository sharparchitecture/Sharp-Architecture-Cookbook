namespace SharpArchCookbook.Infrastructure.NHibernateMaps
{
    using FluentNHibernate.Mapping;
    using SharpArchCookbook.Domain;

    public class SalesOrderHeaderMap : ClassMap<SalesOrderHeader>
    {
        public SalesOrderHeaderMap() 
        {
            Table("SalesLT.SalesOrderHeader");

            Id(x => x.Id, "SalesOrderID");
        }
    }
}