namespace SharpArchCookbook.Domain
{
    using System;
    using System.ComponentModel.DataAnnotations;
    using SharpArch.Domain.DomainModel;

    public class ProductModel : Entity
    {
        [Required]
        [StringLength(100, MinimumLength = 10)]
        public virtual string Name { get; set; }

        public virtual DateTime ModifiedDate { get; set; }
    }
}
