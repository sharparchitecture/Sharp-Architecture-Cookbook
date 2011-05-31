namespace SharpArchCookbook.Domain
{
    using System;
    using System.Data.SqlTypes;

    using SharpArch.Domain.DomainModel;

    public class ProductModel : Entity
    {
        public virtual string Name { get; set; }

        public virtual DateTime ModifiedDate { get; set; }
    }
}
