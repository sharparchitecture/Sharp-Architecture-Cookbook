namespace SharpArchCookbook.Infrastructure.NHibernateMaps
{
    using FluentNHibernate.Automapping;
    using FluentNHibernate.Automapping.Alterations;

    using SharpArchCookbook.Domain;

    public class ProductMap : IAutoMappingOverride<Product>
    {
        public void Override(AutoMapping<Product> mapping)
        {
            mapping.Table("SalesLT.Product");

            mapping.Id(x => x.Id, "ProductID");

            mapping.References(x => x.Category, "ProductCategoryID").Cascade.All();
            mapping.References(x => x.Model, "ProductModelID");
        }
    }
}