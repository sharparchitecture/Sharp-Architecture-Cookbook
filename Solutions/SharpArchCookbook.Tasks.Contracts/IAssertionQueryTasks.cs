namespace SharpArchCookbook.Tasks.Contracts
{
    #region Using Directives

    using System.Collections.Generic;

    using SharpArchCookbook.Domain;

    #endregion

    public interface IAssertionQueryTasks
    {
        IList<Assertion> ByTag(string tagName);
    }
}
