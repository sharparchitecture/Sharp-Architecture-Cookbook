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

        //public virtual IEnumerable<ProductCategory> Parents
        //{
        //    get
        //    {
        //        var currentNode = this;

        //        while (currentNode != null) 
        //        {
        //            yield return currentNode;
        //            currentNode = currentNode.Parent;
        //        }
        //    }
        //}
    }
}
