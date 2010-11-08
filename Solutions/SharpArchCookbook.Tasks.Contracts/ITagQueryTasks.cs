namespace SharpArchCookbook.Tasks.Contracts
{
    #region Using Directives

    using System.Collections.Generic;

    using SharpArchCookbook.Domain;

    #endregion

    public interface ITagQueryTasks
    {
        IList<Tag> GetWhereNameStartsWith(string characters);

        IList<Tag> GetMostPopularTags(int count);

        Tag GetByName(string name);
    }
}
