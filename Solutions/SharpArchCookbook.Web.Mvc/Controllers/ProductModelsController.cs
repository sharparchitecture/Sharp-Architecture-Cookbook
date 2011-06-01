using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace SharpArchCookbook.Web.Mvc.Controllers
{
    using System.Web.Mvc;
    using Domain;
    using Domain.Contracts.Tasks;
    using MvcContrib;
    using SharpArch.NHibernate.Web.Mvc;

    public class ProductModelsController : Controller
    {
        private readonly IProductModelTasks productModelTasks;

        public ProductModelsController(IProductModelTasks productModelTasks)
        {
            this.productModelTasks = productModelTasks;
        }

        public ActionResult Index()
        {
            return View(this.productModelTasks.GetAll());
        }

        [HttpGet]
        public ActionResult CreateOrUpdate(int id)
        {
            return View(this.productModelTasks.Get(id));
        }
      
        [Transaction]
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
