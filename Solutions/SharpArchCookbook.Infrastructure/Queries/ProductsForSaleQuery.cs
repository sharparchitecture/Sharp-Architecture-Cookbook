namespace SharpArchCookbook.Infrastructure.Queries
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    
    using Domain;
    using Domain.Queries.Contracts.Queries;
    using NHibernate.Linq;
    using SharpArch.NHibernate;

    // One file per Query
    public class ProductsForSaleQuery : NHibernateQuery<Product>, IProductsForSaleQuery
    {
        public override IList<Product> ExecuteQuery()
        {
            return (from product in Session.Query<Product>()
                    where product.DiscontinuedDate.Date > DateTime.Now.Date
                    where product.SellEndDate.Date > DateTime.Now.Date
                    where product.SellStartDate.Date < DateTime.Now.Date
                    select product).ToList();
        }
    }
}
