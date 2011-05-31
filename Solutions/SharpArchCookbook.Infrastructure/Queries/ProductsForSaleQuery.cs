namespace SharpArchCookbook.Infrastructure.Queries
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    
    using Domain;
    using Domain.Contracts.Queries;

    using NHibernate.Linq;
    using SharpArch.NHibernate;

    // One file per Query
    public class ProductsForSaleQuery : NHibernateQuery<Product>, IProductsForSaleQuery
    {
        public override IList<Product> ExecuteQuery()
        {
            return (from product in Session.Query<Product>()
                    where product.SellEndDate.Date > DateTime.Parse("5/30/2003")
                    select product).ToList();
        }
    }
}
