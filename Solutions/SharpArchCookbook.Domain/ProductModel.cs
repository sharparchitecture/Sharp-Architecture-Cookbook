namespace SharpArchCookbook.Domain
{
    using System;
    using System.ComponentModel.DataAnnotations;
    using SharpArch.Domain.DomainModel;

    public class ProductModel : Entity
    {
        // [Required(ErrorMessage = "Name is required.")]
        // [RegularExpression(@"{^[A-Za-z]+$}", ErrorMessage = "Only letters are allowed.")]
        [StringLength(50, MinimumLength = 1)]
        public virtual string Name { get; set; }

        public virtual DateTime ModifiedDate { get; set; }
    }
}
