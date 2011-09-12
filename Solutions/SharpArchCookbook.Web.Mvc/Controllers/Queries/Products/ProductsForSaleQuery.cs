namespace SharpArchCookbook.Web.Mvc.Controllers.Queries.Products
{
  using System;
  using System.Collections.Generic;

  using SharpArch.NHibernate;

  using SharpArchCookbook.Domain;

  class ProductsForSaleQuery : NHibernateQuery, IProductsForSaleQuery
  {
    public IList<Product> GetProductsForSale()
    {
      return Session.QueryOver<Product>()
        .Where(x => x.SellEndDate > new DateTime(2003, 5, 30))
        .OrderBy(x => x.Name).Asc
        .List();
    }
  }
}