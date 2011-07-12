namespace SharpArchCookbook.Tasks
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    
    using Domain;
    using Domain.Contracts.Tasks;

    using SharpArch.NHibernate.Contracts.Repositories;
    using SharpArch.NHibernate.Web.Mvc;
    
    public class ProductModelTasks : IProductModelTasks
    {
        private readonly INHibernateRepository<ProductModel> productModelRepository;

        public ProductModelTasks(INHibernateRepository<ProductModel> productModelRepository)
        {
            this.productModelRepository = productModelRepository;
        }

        [Transaction]
        public List<ProductModel> GetAll()
        {
            var allProductModels = this.productModelRepository.GetAll().ToList();
            return allProductModels;
        }

        [Transaction]
        public ProductModel Get(int id)
        {
            return this.productModelRepository.Get(id);
        }

        [Transaction]
        public ProductModel CreateOrUpdate(ProductModel productModel)
        {
            productModel.ModifiedDate = DateTime.Now;
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