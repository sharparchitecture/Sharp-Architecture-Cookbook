namespace SharpArchCookbook.Infrastructure.NHibernateMaps
{
    using Domain;

    using FluentNHibernate.Automapping;
    using FluentNHibernate.Automapping.Alterations;

    public class ProductModelMap : IAutoMappingOverride<ProductModel>
    {
        public void Override(AutoMapping<ProductModel> mapping)
        {
            mapping.Table("ProductModel");
            mapping.Id(x => x.Id, "ProductModelID");
        }
    }
}