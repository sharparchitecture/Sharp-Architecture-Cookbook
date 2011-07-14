namespace SharpArchCookbook.Domain.Contracts.Tasks
{
    using System.Collections.Generic;
    using Domain;

    public interface IProductTasks
    {
        IList<Product> GetProductsForSale();
    }
}
