namespace SharpArchCookbook.Domain
{
    using System;
    using SharpArch.Domain.DomainModel;

    /// <summary>
    /// Notice the EntityWithTypedId<Guid>. Techically, this is a CompositeId
    /// based off of Address and Customer, but this ends up being a chore to impelement 
    /// due to the PrimaryKeyConvention. In a real project, it would be better to throw in
    /// a CustomerAddressId column, populate it and not deal with this.
    /// </summary>
    public class CustomerAddress : EntityWithTypedId<Guid>
    {
        public virtual string AddressType { get; set; }

        public virtual Address Address { get; set; }

        public virtual Customer Customer { get; set; }

        public virtual DateTime ModifiedDate { get; set; }
    }
}