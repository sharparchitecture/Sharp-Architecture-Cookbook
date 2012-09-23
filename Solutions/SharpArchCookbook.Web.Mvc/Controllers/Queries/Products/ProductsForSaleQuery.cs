namespace SharpArchCookbook.Web.Mvc.Controllers.Queries.Products
{
  using System;
  using System.Collections.Generic;
  using System.Linq;

  using Raven.Client;

  using SharpArch.RavenDb;

  using SharpArchCookbook.Domain;

  public class ProductsForSaleQuery : IProductsForSaleQuery
  {
      private Raven.Client.IDocumentSession session;

      public ProductsForSaleQuery(IDocumentSession session)
      {
          this.session = session;
      }

      public IList<Product> GetProductsForSale()
    {
      return session.Load<Product>()
        .Where(x => x.SellEndDate > new DateTime(2003, 5, 30))
        .OrderBy(x => x.Name).ToList();
    }
  }
}