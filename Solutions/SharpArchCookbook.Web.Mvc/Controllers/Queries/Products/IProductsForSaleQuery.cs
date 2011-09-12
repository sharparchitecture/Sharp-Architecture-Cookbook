namespace SharpArchCookbook.Web.Mvc.Controllers.Queries.Products
{
  using System.Collections.Generic;

  using SharpArchCookbook.Domain;

  public interface IProductsForSaleQuery
  {
    IList<Product> GetProductsForSale();
  }
}