namespace SharpArchCookbook.Infrastructure.NHibernateMaps
{
    using FluentNHibernate.Mapping;
    using SharpArchCookbook.Domain;

    public class ProductModelProductDescriptionMap : ClassMap<ProductModeProductionDescription>
    {
        public ProductModelProductDescriptionMap() 
        {
            Table("SalesLT.ProductModeProductionDescription");

            CompositeId().KeyReference(x => x.ProductModel, "ProductModelID")
                         .KeyReference(x => x.ProductDescription, "ProductDescriptionID");
        }
    }
}