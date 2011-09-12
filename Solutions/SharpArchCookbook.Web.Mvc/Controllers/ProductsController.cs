// #001 Using Query Objects

namespace SharpArchCookbook.Web.Mvc.Controllers
{
    using System.Web.Mvc;

    using Queries.Products;
    using ViewModels;

    public class ProductsController : Controller
    {
        private const int DefaultPageSize = 50;

        private readonly IProductsListQuery productsListQuery;

        private readonly IProductsForSaleQuery productsForSaleQuery;

        public ProductsController(IProductsListQuery productsListQuery, IProductsForSaleQuery productsForSaleQuery)
        {
            this.productsListQuery = productsListQuery;
            this.productsForSaleQuery = productsForSaleQuery;
        }

        public ActionResult Index(int? page)
        {
            var viewModel = new ProductsListViewModel
                                {
                                    Products = this.productsListQuery.GetPagedList(page ?? 1, DefaultPageSize)
                                };
            return View(viewModel);
        }

        public ActionResult ForSale() 
        {
            var viewModel = this.productsForSaleQuery.GetProductsForSale();
            return View(viewModel);
        }
    }
}
