namespace SharpArchCookbook.Tasks
{
    using System.Collections.Generic;
    
    using Domain;
    using Domain.Contracts.Queries;
    using Domain.Contracts.Tasks;
    using SharpArch.NHibernate.Contracts.Repositories;

    public class ProductTasks : IProductTasks
    {
        private readonly INHibernateRepository<Product> productRepository;
        private readonly IProductsForSaleQuery productsForSaleQuery;

        public ProductTasks(INHibernateRepository<Product> productRepository, IProductsForSaleQuery productsForSaleQuery)
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