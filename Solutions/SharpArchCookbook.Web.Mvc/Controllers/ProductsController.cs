// #001 Using Query Objects

namespace SharpArchCookbook.Web.Mvc.Controllers
{
    using System.Web.Mvc;

    using Domain.Contracts.Tasks;
    using Queries.Products;
    using ViewModels;
    using System.Linq;

    public class ProductsController : Controller
    {
        private const int DefaultPageSize = 50;

        private readonly IProductsListQuery productsListQuery;
        private readonly IProductTask productTasks;

        public ProductsController(IProductsListQuery productsListQuery, IProductTask productTasks)
        {
            this.productsListQuery = productsListQuery;
            this.productTasks = productTasks;
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
            var viewModel = this.productTasks.GetProductsForSale();
            return View(viewModel);
        }
    }
}
