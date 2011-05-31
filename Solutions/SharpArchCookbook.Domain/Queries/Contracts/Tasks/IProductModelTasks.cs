using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SharpArchCookbook.Domain.Queries.Contracts.Tasks
{
    public interface IProductModelTasks
    {
        IList<ProductModel> GetAll();

        ProductModel Get(int id);

        ProductModel CreateOrUpdate(ProductModel productModel);

        void Delete(int id);
    }
}
