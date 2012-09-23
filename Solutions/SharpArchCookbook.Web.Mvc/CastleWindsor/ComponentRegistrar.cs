namespace SharpArchCookbook.Web.Mvc.CastleWindsor
{
    using Castle.MicroKernel.Registration;
    using Castle.Windsor;

    using SharpArch.Domain.Commands;
    using SharpArch.Domain.PersistenceSupport;
    using SharpArch.RavenDb;
    using SharpArch.RavenDb.Contracts.Repositories;
    using SharpArch.Web.Mvc.Castle;

    public class ComponentRegistrar
    {
        public ComponentRegistrar()
        {
        }

        public static void AddComponentsTo(IWindsorContainer container) 
        {
            AddGenericRepositoriesTo(container);
            AddCustomRepositoriesTo(container);
            AddQueryObjectsTo(container);
            AddTasksTo(container);
            AddCommandHandlersTo(container);

            container.Install(new RavenInstaller());
        }

        private static void AddTasksTo(IWindsorContainer container)
        {
            container.Register(
                AllTypes
                    .FromAssemblyNamed("SharpArchCookbook.Tasks")
                    .Pick().If(t => t.Name.EndsWith("Tasks"))
                    .WithService.FirstNonGenericCoreInterface("SharpArchCookbook.Domain")
                    .LifestyleTransient());
        }

        private static void AddCustomRepositoriesTo(IWindsorContainer container) 
        {
            container.Register(
                AllTypes
                    .FromAssemblyNamed("SharpArchCookbook.Infrastructure")
                    .BasedOn(typeof(IRepositoryWithTypedId<,>))
                    .WithService.FirstNonGenericCoreInterface("SharpArchCookbook.Domain")
                    .LifestyleTransient());
        }

        private static void AddGenericRepositoriesTo(IWindsorContainer container)
        {
            container.Register(
                Component.For(typeof(IRavenDbRepository<>))
                    .ImplementedBy(typeof(RavenDbRepository<>))
                    .Forward(typeof(IRepository<>))
                    .Named("ravenRepositoryType")
                    .LifestyleTransient());

            container.Register(
                Component.For(typeof(IRavenDbRepositoryWithTypedId<,>))
                    .ImplementedBy(typeof(RavenDbRepositoryWithTypedId<,>))
                    .Forward(typeof(IRepositoryWithTypedId<,>))
                    .Named("ravenRepositoryWithTypedId")
                    .LifestyleTransient());

            container.Register(
                    Component.For(typeof(SharpArch.Domain.Commands.ICommandProcessor))
                        .ImplementedBy(typeof(SharpArch.Domain.Commands.CommandProcessor))
                        .Named("commandProcessor")
                        .LifestyleTransient());
                
        }

        private static void AddQueryObjectsTo(IWindsorContainer container)
        {
            container.Register(
                AllTypes.FromAssemblyNamed("SharpArchCookbook.Web.Mvc")
                    .Where(t => t.Name.EndsWith("Query"))
                    .WithService.FirstInterface()
                    .LifestyleTransient());
        }

        private static void AddCommandHandlersTo(IWindsorContainer container)
        {
            container.Register(
                AllTypes.FromAssemblyNamed("SharpArchCookbook.Tasks")
                    .BasedOn(typeof(ICommandHandler<>))
                    .WithService.FirstInterface()
                    .LifestyleTransient());
        }
    }
}