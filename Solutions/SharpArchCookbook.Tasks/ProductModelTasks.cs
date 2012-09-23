namespace SharpArchCookbook.Tasks
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    
    using Domain;
    using Domain.Contracts.Tasks;

    using SharpArch.Domain.PersistenceSupport;

    public class ProductModelTasks : IProductModelTasks
    {
        private readonly IRepository<ProductModel> productModelRepository;

        public ProductModelTasks(IRepository<ProductModel> productModelRepository)
        {
            this.productModelRepository = productModelRepository;
        }

        public List<ProductModel> GetAll()
        {
            var allProductModels = this.productModelRepository.GetAll().ToList();
            return allProductModels;
        }

        public ProductModel Get(int id)
        {
            return this.productModelRepository.Get(id);
        }

        public ProductModel CreateOrUpdate(ProductModel productModel)
        {
            this.productModelRepository.SaveOrUpdate(productModel);
            return productModel;
        }

        public void Delete(int id)
        {
            var productModel = this.productModelRepository.Get(id);
            this.productModelRepository.Delete(productModel);
        }
    }
}