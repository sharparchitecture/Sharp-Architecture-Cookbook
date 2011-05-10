namespace SharpArchCookbook.Domain
{
    using System;
    using System.Data.SqlTypes;

    using SharpArch.Domain.DomainModel;

    public class SalesOrderHeader : Entity
    {
        public virtual int RevisionNumber { get; set; }

        public virtual DateTime OrderDate { get; set; }

        public virtual DateTime DueDate { get; set; }

        public virtual DateTime ShipDate { get; set; }

        public virtual SalesStatus Status { get; set; }

        public virtual bool OnlineOrderFlag { get; set; }

        public virtual string SalesOrderNumber { get; set; }

        public virtual string PurchaseOrderNumber { get; set; }

        public virtual Customer Customer { get; set; }

        public virtual CustomerAddress ShipToAddress { get; set; }

        public virtual CustomerAddress BillToAddress { get; set; }

        public virtual string ShipMethod { get; set; }

        public virtual SqlMoney SubTotal { get; set; }

        public virtual SqlMoney TaxAmount { get; set; }

        public virtual SqlMoney Freight { get; set; }

        public virtual SqlMoney TotalDue { get; set; }

        public virtual DateTime ModifiedDate { get; set; }
    }
}