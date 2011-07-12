// #001 Using Query Objects

namespace SharpArchCookbook.Web.Mvc.Controllers.ViewModels
{
    using System;
    using System.ComponentModel.DataAnnotations;

    public class ProductViewModel
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public string CategoryName { get; set; }

        public string ProductNumber { get; set; }

        [DisplayFormat(DataFormatString = "{0:C}")]
        public double ListPrice { get; set; }

        [DisplayFormat(DataFormatString = "{0:d}")]
        public DateTime? SellStartDate { get; set; }

        [DisplayFormat(DataFormatString = "{0:d}")]
        public DateTime? SellEndDate { get; set; }
    }
}