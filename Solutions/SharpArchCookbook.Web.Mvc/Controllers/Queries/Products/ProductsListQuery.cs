// #001 Using Query Objects

namespace SharpArchCookbook.Web.Mvc.Controllers.Queries.Products
{
    using Domain;
    using MvcContrib.Pagination;
    using NHibernate.Transform;
    using SharpArch.NHibernate;
    using ViewModels;

    public class ProductsListQuery : NHibernateQuery, IProductsListQuery
    {
        public IPagination<ProductViewModel> GetPagedList(int page, int size)
        {
            var query = Session.QueryOver<Product>().OrderBy(x => x.Name).Asc;

            var count = query.ToRowCountQuery();
            var totalCount = count.FutureValue<int>();

            var firstResult = (index - 1) * size;

            ProductViewModel viewModel = null;
            ProductCategory categoryAlias = null;
            
            var viewModels =
               query.JoinAlias(x => x.Category, () => categoryAlias)
                    .SelectList(list => list
                                         .Select(x => x.Id).WithAlias(() => viewModel.Id)
                                         .Select(x => x.Name).WithAlias(() => viewModel.Name)
                                         .Select(x => x.ProductNumber).WithAlias(() => viewModel.ProductNumber)
                                         .Select(x => x.ListPrice).WithAlias(() => viewModel.ListPrice)
                                         .Select(x => x.SellStartDate).WithAlias(() => viewModel.SellEndDate)
                                         .Select(x => x.SellEndDate).WithAlias(() => viewModel.SellEndDate)

                                         // Flattening the object graph
                                         .Select(x => categoryAlias.Name).WithAlias(() => viewModel.CategoryName))
                .TransformUsing(Transformers.AliasToBean(typeof(ProductViewModel)))
                .Skip(firstResult)
                .Take(size)
                .Future<ProductViewModel>();

            return new CustomPagination<ProductViewModel>(viewModels, page, size, totalCount.Value);
        }
    }
}
