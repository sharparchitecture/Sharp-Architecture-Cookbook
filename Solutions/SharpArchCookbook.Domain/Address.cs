namespace SharpArchCookbook.Domain
{
    using System;
    using SharpArch.Domain.DomainModel;

    public class Address : Entity
    {
        public virtual string AddressLine1 { get; set; }

        public virtual string AddressLine2 { get; set; }

        public virtual string City { get; set; }

        public virtual string StateProvince { get; set; }

        public virtual string PostalCode { get; set; }

        public virtual string CountryRegion { get; set; }

        public virtual DateTime ModifiedDate { get; set; }
    }
}
