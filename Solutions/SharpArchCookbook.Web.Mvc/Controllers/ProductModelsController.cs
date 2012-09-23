namespace SharpArchCookbook.Web.Mvc.Controllers
{
    using System.Web.Mvc;
    using Domain;
    using Domain.Contracts.Tasks;
    using MvcContrib;
    using SharpArch.RavenDb.Web.Mvc;

    public class ProductModelsController : Controller
    {
        private readonly IProductModelTasks productModelTasks;

        public ProductModelsController(IProductModelTasks productModelTasks)
        {
            this.productModelTasks = productModelTasks;
        }

        [UnitOfWork]
        public ActionResult Index()
        {
            return View(this.productModelTasks.GetAll());
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
                return this.RedirectToAction(x => x.Index());
            }

            return View(productModel);
        }

    }
}
