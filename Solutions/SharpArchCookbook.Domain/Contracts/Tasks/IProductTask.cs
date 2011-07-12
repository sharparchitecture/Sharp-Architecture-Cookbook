namespace SharpArchCookbook.Domain.Contracts.Tasks
{
    using System.Collections.Generic;
    using Domain;

    public interface IProductTask
    {
        IList<Product> GetProductsForSale();
    }
}
