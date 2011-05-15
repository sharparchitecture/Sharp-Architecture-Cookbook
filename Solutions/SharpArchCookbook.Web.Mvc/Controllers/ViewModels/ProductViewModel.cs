// #001 Using Query Objects

namespace SharpArchCookbook.Web.Mvc.Controllers.ViewModels
{
    using System;

    public class ProductViewModel
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string ProductNumber { get; set; }

        public double ListPrice { get; set; }

        public DateTime SellStartDate { get; set; }

        public DateTime SellEndDate { get; set; }

        public string CategoryName { get; set; }
    }
}