// #001 Using Query Objects

namespace SharpArchCookbook.Web.Mvc.Controllers.Queries.Products
{
    using MvcContrib.Pagination;
    using ViewModels;

    public interface IProductsListQuery
    {
        IPagination<ProductViewModel> GetPagedList(int index, int size);
    }
}
