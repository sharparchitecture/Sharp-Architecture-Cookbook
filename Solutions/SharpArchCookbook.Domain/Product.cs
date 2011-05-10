namespace SharpArchCookbook.Domain
{
    using System;
    using System.ComponentModel.DataAnnotations;

    using SharpArch.Domain.DomainModel;

    public class Product : Entity
    {
        [Required(ErrorMessage = "Gotta have a name dude")]
        public virtual string Name { get; set; }

        public virtual string ProductNumber { get; set; }

        public virtual string Color { get; set; }

        public virtual double StandardCost { get; set; }

        public virtual double ListPrice { get; set; }

        public virtual string Size { get; set; }

        public virtual decimal Weight { get; set; }

        public virtual ProductCategory Category { get; set; }

        public virtual ProductModel Model { get; set; }

        public virtual DateTime SellStartDate { get; set; }

        public virtual DateTime SellEndDate { get; set; }

        public virtual DateTime DiscontinuedDate { get; set; }

        public virtual byte[] ThumbNailPhoto { get; set; }

        public virtual string ThumbnailPhotoFileName { get; set; }

        public virtual DateTime ModifiedDate { get; set; }
    }
}