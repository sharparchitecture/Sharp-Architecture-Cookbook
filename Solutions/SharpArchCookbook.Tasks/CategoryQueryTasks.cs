namespace SharpArchCookbook.Tasks
{
    #region Using Directives

    using System.Collections.Generic;
    using System.Linq;

    using Domain;
    using Domain.Contracts.Repositories;
    using Domain.Contracts.Tasks;
    using Domain.Specifications;

    using SharpArchCookbook.Tasks.Contracts;

    #endregion

    public class CategoryQueryTasks : ICategoryQueryTasks
    {
        private readonly ICategoryRepository categoryRepository;

        public CategoryQueryTasks(ICategoryRepository categoryRepository)
        {
            this.categoryRepository = categoryRepository;
        }

        public IList<Category> GetAll()
        {
            return this.categoryRepository.FindAll().ToList();
        }

        public Category Get(int categoryId)
        {
            return this.categoryRepository.FindOne(new CategoryByIdSpecification(categoryId));
        }
    }
}
