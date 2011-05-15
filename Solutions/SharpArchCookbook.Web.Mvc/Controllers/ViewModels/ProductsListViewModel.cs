// #001 Using Query Objects

namespace SharpArchCookbook.Web.Mvc.Controllers.ViewModels
{
    using MvcContrib.Pagination;

    public class ProductsListViewModel
    {
        public IPagination<ProductViewModel> Products { get; set; }
    }
}