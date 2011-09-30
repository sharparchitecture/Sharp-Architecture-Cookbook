namespace SharpArchCookbook.Tests
{
    using Domain;
    using NUnit.Framework;
    using SharpArch.NHibernate;
    using SharpArch.NHibernate.Contracts.Repositories;
    using SharpArch.Testing.NUnit;
    using SharpArch.Testing.NUnit.NHibernate;
    using Web.Mvc.Controllers.Queries.Products;

    [TestFixture]
    public class ProductsQueryObjectTests : RepositoryTestsBase
    {
        private readonly ProductsListQuery productsListQuery = new ProductsListQuery();
        private readonly INHibernateRepository<Product> productRepository = new NHibernateRepository<Product>();

        protected override void SetUp()
        {
          ServiceLocatorInitializer.Init();
          base.SetUp();
        }

        [Test]
        public void CanGetViewModel()
        {
            var productViewModels = this.productsListQuery.GetPagedList(1, 50);
            productViewModels.ShouldNotBeNull();
            productViewModels.TotalItems.ShouldEqual(1);
        }

        protected override void LoadTestData() 
        {
            this.CreatePersistedProducts();
        }

        private void CreatePersistedProducts()
        {
            var product = new Product { Name = "MockProduct" };
            this.productRepository.SaveOrUpdate(product);
            FlushSessionAndEvict(product);
        }
    }
}
