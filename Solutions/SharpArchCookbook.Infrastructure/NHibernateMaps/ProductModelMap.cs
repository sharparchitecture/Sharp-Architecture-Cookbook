namespace SharpArchCookbook.Infrastructure.NHibernateMaps
{
    using FluentNHibernate.Mapping;
    using SharpArchCookbook.Domain;

    public class ProductModelMap : ClassMap<ProductModel>
    {
        public ProductModelMap()
        {
            Table("SalesLT.ProductModel");

            Id(x => x.Id, "ProductModelID");
        }
    }
}