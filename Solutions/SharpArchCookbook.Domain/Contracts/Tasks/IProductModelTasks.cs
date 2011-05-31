namespace SharpArchCookbook.Domain.Contracts.Tasks
{
    using System.Collections.Generic;

    public interface IProductModelTasks
    {
        List<ProductModel> GetAll();

        ProductModel Get(int id);

        ProductModel CreateOrUpdate(ProductModel productModel);

        void Delete(int id);
    }
}
