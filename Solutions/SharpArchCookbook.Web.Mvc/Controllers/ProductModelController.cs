namespace SharpArchCookbook.Web.Mvc.Controllers
{
    using System.Web.Mvc;
    using Domain;
    using MvcContrib;
    using SharpArch.NHibernate.Web.Mvc;
    using Tasks;

    public class ProductModelController : Controller
    {
        private readonly ProductModelTasks productModelTasks;

        public ProductModelController(ProductModelTasks productModelTasks)
        {
            this.productModelTasks = productModelTasks;
        }

        public ActionResult Index()
        {
            return View(this.productModelTasks.GetAll());
        }

        [HttpGet]
        public ActionResult Edit(int id)
        {
            return View(this.productModelTasks.Get(id));
        }

        [HttpGet]
        public ActionResult CreateOrUpdate()
        {
            var newProductModel = new ProductModel();
            return View(newProductModel);
        }
        
        [Transaction]
        [ValidateAntiForgeryToken]
        [HttpPost]
        public ActionResult CreateOrUpdate(ProductModel productModel)
        {
            if (productModel.IsValid())
            {
                this.productModelTasks.CreateOrUpdate(productModel);
                return this.RedirectToAction(x => x.Index());
            }

            return View(productModel);
        }

    }
}
