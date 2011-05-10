namespace SharpArchCookbook.Domain
{
    using System;
    using SharpArch.Domain.DomainModel;

    public class CustomerAddress : Entity
    {
        public virtual string AddressType { get; set; }

        public virtual Address Address { get; set; }

        public virtual Customer Customer { get; set; }

        public virtual DateTime ModifiedDate { get; set; }
    }
}