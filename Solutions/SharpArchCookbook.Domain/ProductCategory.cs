namespace SharpArchCookbook.Domain
{
    using System;
    using System.Collections.Generic;

    using SharpArch.Domain.DomainModel;

    public class ProductCategory : Entity
    {
        public virtual ProductCategory Parent { get; set; }

        public virtual string Name { get; set; }

        public virtual DateTime ModifiedDate { get; set; }
    }
}
