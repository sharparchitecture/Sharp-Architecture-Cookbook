namespace SharpArchCookbook.Tasks.Contracts
{
    #region Using Directives

    using System.Collections.Generic;

    using SharpArchCookbook.Domain;

    #endregion

    public interface INewsQueryTasks
    {
        IList<NewsItem> GetProjectBuzz();

        IList<NewsItem> GetDevelopmentTeamBuzz();
    }
}