namespace SharpArchCookbook.Tasks.Contracts
{
    #region Using Directives

    using System.Collections.Generic;

    using SharpArchCookbook.Domain;

    #endregion

    public interface ICategoryQueryTasks
    {
        IList<Category> GetAll();

        Category Get(int categoryId);
    }
}
