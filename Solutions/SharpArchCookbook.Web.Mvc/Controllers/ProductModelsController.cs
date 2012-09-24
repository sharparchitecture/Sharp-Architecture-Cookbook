namespace SharpArchCookbook.Web.Mvc.Controllers
{
    using System.Web.Mvc;
    using Domain;
    using Domain.Contracts.Tasks;
    using MvcContrib;
    using SharpArch.RavenDb.Web.Mvc;

    using SharpArchCookbook.Web.Mvc.Controllers.Queries.Products;

    public class ProductModelsController : Controller
    {
        private readonly IProductModelTasks productModelTasks;

        private readonly IProductModelsListQuery query;

        public ProductModelsController(IProductModelTasks productModelTasks, IProductModelsListQuery query)
        {
            this.productModelTasks = productModelTasks;
            this.query = query;
        }

        [UnitOfWork]
        public ActionResult Index(int? page)
        {
            return View(this.query.GetPagedList(page ?? 1, 10));
        }

        [UnitOfWork]
        [HttpGet]
        public ActionResult CreateOrUpdate(int id)
        {
            return View(this.productModelTasks.Get(id));
        }
      
        [UnitOfWork]
        [ValidateAntiForgeryToken]
        [HttpPost]
        public ActionResult CreateOrUpdate(ProductModel productModel)
        {
            if (ModelState.IsValid && productModel.IsValid())
            {
                this.productModelTasks.CreateOrUpdate(productModel);
                return this.RedirectToAction(x => x.Index(null));
            }

            return View(productModel);
        }

    }
}
