namespace SharpArchCookbook.Domain
{
    using System;

    using SharpArch.Domain.DomainModel;

    public class ProductDescription : Entity
    {
        public virtual string Description { get; set; }

        public virtual DateTime ModifiedDate { get; set; }
    }
}