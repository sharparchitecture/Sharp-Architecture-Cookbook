namespace SharpArchCookbook.Infrastructure.NHibernateMaps
{
    using Domain;

    using FluentNHibernate.Automapping;
    using FluentNHibernate.Automapping.Alterations;

    public class ProductModelProductDescriptionMap : IAutoMappingOverride<ProductModeProductionDescription>
    {
        public void Override(AutoMapping<ProductModeProductionDescription> mapping)
        {
            mapping.Table("`SalesLT.ProductModeProductionDescription`");

            mapping.CompositeId().KeyReference(x => x.ProductModel, "ProductModelID")
                                 .KeyReference(x => x.ProductDescription, "ProductDescriptionID");
        }
    }
}