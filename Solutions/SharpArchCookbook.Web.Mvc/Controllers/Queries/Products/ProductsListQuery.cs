// #001 Using Query Objects

namespace SharpArchCookbook.Web.Mvc.Controllers.Queries.Products
{
    using System.Linq;

    using Domain;
    using MvcContrib.Pagination;

    using Raven.Client;
    using Raven.Client.Linq;

    using ViewModels;

    public class ProductsListQuery : IProductsListQuery
    {
        private IDocumentSession session;

        public ProductsListQuery(IDocumentSession session)
        {
            this.session = session;
        }

        public IPagination<ProductViewModel> GetPagedList(int page, int size)
        {
            var query = session.Query<Product>();

            RavenQueryStatistics stats;
            
            var firstResult = (page - 1) * size;

            var viewModels = from product in query.Statistics(out stats).Skip(firstResult).Take(size)
                select new ProductViewModel
                        {
                            Id = product.Id,
                            Name = product.Name,
                            ProductNumber = product.ProductNumber,
                            ListPrice = product.ListPrice,
                            SellStartDate = product.SellStartDate,
                            SellEndDate = product.SellEndDate,
                            CategoryName = product.Category.Name
                        };

            return new CustomPagination<ProductViewModel>(viewModels, page, size, stats.TotalResults);
        }
    }
}
