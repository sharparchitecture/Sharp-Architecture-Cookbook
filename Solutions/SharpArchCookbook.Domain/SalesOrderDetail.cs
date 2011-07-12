namespace SharpArchCookbook.Domain
{
    using System;
    using System.Data.SqlTypes;

    using SharpArch.Domain.DomainModel;

    public class SalesOrderDetail : Entity
    {
        public virtual SalesOrderDetail Detail { get; set; }

        public virtual int Quantity { get; set; }

        public virtual Product Product { get; set; }

        // public virtual SqlMoney UnitPrice { get; set; }

        // public virtual SqlMoney LineTotal { get; set; }

        public virtual DateTime ModifiedDate { get; set; }
    }
}