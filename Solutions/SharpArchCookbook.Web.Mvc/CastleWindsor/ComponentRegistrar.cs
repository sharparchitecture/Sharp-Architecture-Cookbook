namespace SharpArchCookbook.Web.Mvc.CastleWindsor
{
    using Castle.MicroKernel.Registration;
    using Castle.Windsor;

    using SharpArch.Domain.Commands;
    using SharpArch.Domain.PersistenceSupport;
    using SharpArch.NHibernate;
    using SharpArch.NHibernate.Contracts.Repositories;
    using SharpArch.Web.Mvc.Castle;

    public class ComponentRegistrar
    {
        public static void AddComponentsTo(IWindsorContainer container) 
        {
            AddGenericRepositoriesTo(container);
            AddCustomRepositoriesTo(container);
            AddQueryObjectsTo(container);
            AddTasksTo(container);
            AddCommandHandlersTo(container);
        }

        private static void AddTasksTo(IWindsorContainer container)
        {
            container.Register(
                AllTypes
                    .FromAssemblyNamed("SharpArchCookbook.Tasks")
                    .Pick().If(t => t.Name.EndsWith("Tasks"))
                    .WithService.FirstNonGenericCoreInterface("SharpArchCookbook.Domain"));
        }

        private static void AddCustomRepositoriesTo(IWindsorContainer container) 
        {
            container.Register(
                AllTypes
                    .FromAssemblyNamed("SharpArchCookbook.Infrastructure")
                    .BasedOn(typeof(IRepositoryWithTypedId<,>))
                    .WithService.FirstNonGenericCoreInterface("SharpArchCookbook.Domain"));
        }

        private static void AddGenericRepositoriesTo(IWindsorContainer container)
        {
            container.Register(
                Component.For(typeof(IEntityDuplicateChecker))
                    .ImplementedBy(typeof(EntityDuplicateChecker))
                    .Named("entityDuplicateChecker"));

            container.Register(
                Component.For(typeof(INHibernateRepository<>))
                    .ImplementedBy(typeof(NHibernateRepository<>))
                    .Forward(typeof(IRepository<>))
                    .Named("nhibernateRepositoryType"));

            container.Register(
                Component.For(typeof(INHibernateRepositoryWithTypedId<,>))
                    .ImplementedBy(typeof(NHibernateRepositoryWithTypedId<,>))
                    .Forward(typeof(IRepositoryWithTypedId<,>))
                    .Named("nhibernateRepositoryWithTypedId"));

            container.Register(
                    Component.For(typeof(ISessionFactoryKeyProvider))
                        .ImplementedBy(typeof(DefaultSessionFactoryKeyProvider))
                        .Named("sessionFactoryKeyProvider"));

            container.Register(
                    Component.For(typeof(SharpArch.Domain.Commands.ICommandProcessor))
                        .ImplementedBy(typeof(SharpArch.Domain.Commands.CommandProcessor))
                        .Named("commandProcessor"));
                
        }

        private static void AddQueryObjectsTo(IWindsorContainer container) 
        {
            container.Register(
                AllTypes.FromAssemblyNamed("SharpArchCookbook.Web.Mvc")
                    .BasedOn<NHibernateQuery>()
                    .WithService.FirstInterface());
        }

        private static void AddCommandHandlersTo(IWindsorContainer container)
        {
            container.Register(
                AllTypes.FromAssemblyNamed("SharpArchCookbook.Tasks")
                    .BasedOn(typeof(ICommandHandler<>))
                    .WithService.FirstInterface());
        }
    }
}