namespace SharpArchCookbook.Domain
{
    using System;

    using SharpArch.Domain.DomainModel;

    public class ProductModeProductionDescription : Entity
    {
        public virtual ProductModel ProductModel { get; set; }

        public virtual ProductDescription ProductDescription { get; set; }

        public virtual string Culture { get; set; }

        public virtual DateTime ModifiedDate { get; set; }
    }
}