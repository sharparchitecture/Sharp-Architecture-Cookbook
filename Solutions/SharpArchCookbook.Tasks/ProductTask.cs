namespace SharpArchCookbook.Tasks.Contracts
{
    using System.Collections.Generic;
    
    using Domain;
    using Domain.Contracts.Tasks;
    using Domain.Queries.Contracts.Queries;
    using SharpArch.NHibernate.Contracts.Repositories;

    public class ProductTask : IProductTask
    {
        private readonly INHibernateRepository<Product> productRepository;
        private readonly IProductsForSaleQuery productsForSaleQuery;

        public ProductTask(INHibernateRepository<Product> productRepository, IProductsForSaleQuery productsForSaleQuery)
        {
            this.productRepository = productRepository;
            this.productsForSaleQuery = productsForSaleQuery;
        }

        public IList<Product> GetProductsForSale()
        {
            return this.productRepository.PerformQuery(this.productsForSaleQuery);
        }
    }
}