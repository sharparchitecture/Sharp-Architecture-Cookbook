namespace SharpArchCookbook.Tasks.Contracts
{
    public interface IProfileTasks
    {
        Profile GetProfileByUserName(string userName);

        Profile GetProfileById(int profileId);

        void RemoveAssertion(Profile profile, int assertionId);

        void AddAssertion(string userName, int categoryId, string tagName);

        void CreateProfile(string userName, string firstName, string lastName);

        void DeleteProfile(string userName);
    }
}