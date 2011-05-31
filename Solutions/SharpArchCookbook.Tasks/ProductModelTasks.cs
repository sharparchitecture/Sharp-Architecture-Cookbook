namespace SharpArchCookbook.Tasks
{
    using System.Collections.Generic;
    
    using Domain;
    using Domain.Queries.Contracts.Tasks;

    using SharpArch.NHibernate;
    using SharpArch.NHibernate.Web.Mvc;

    public class ProductModelTasks : IProductModelTasks
    {
        private readonly NHibernateRepository<ProductModel> productModelRepository;

        public ProductModelTasks(NHibernateRepository<ProductModel> productModelRepository)
        {
            this.productModelRepository = productModelRepository;
        }

        [Transaction]
        public IList<ProductModel> GetAll()
        {
            return this.productModelRepository.GetAll();
        }

        [Transaction]
        public ProductModel Get(int id)
        {
            return this.productModelRepository.Get(id);
        }

        [Transaction]
        public ProductModel CreateOrUpdate(ProductModel productModel)
        {
            this.productModelRepository.SaveOrUpdate(productModel);
            return productModel;
        }

        [Transaction]
        public void Delete(int id)
        {
            var productModel = this.productModelRepository.Get(id);
            this.productModelRepository.Delete(productModel);
        }
    }
}