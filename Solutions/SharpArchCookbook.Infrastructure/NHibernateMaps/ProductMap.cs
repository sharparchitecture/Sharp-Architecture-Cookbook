namespace SharpArchCookbook.Infrastructure.NHibernateMaps
{
    using Domain;

    using FluentNHibernate.Automapping;
    using FluentNHibernate.Automapping.Alterations;

    public class ProductMap : IAutoMappingOverride<Product>
    {
        public void Override(AutoMapping<Product> mapping)
        {
            mapping.Table("Product");

            mapping.Id(x => x.Id, "ProductID");

            mapping.References(x => x.Category, "ProductCategoryID").Cascade.All();
            mapping.References(x => x.Model, "ProductModelID");
        }
    }
}