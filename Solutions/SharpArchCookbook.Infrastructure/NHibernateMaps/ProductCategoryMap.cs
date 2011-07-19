namespace SharpArchCookbook.Infrastructure.NHibernateMaps
{
    using FluentNHibernate.Automapping;
    using FluentNHibernate.Automapping.Alterations;

    using SharpArchCookbook.Domain;

    public class ProductCategoryMap : IAutoMappingOverride<ProductCategory>
    {
        public void Override(AutoMapping<ProductCategory> mapping)
        {
            mapping.Table("`SalesLT.ProductCategory`");

            mapping.Id(x => x.Id, "ProductCategoryID");

            mapping.References(x => x.Parent, "ParentProductCategoryID");
        }
    }
}