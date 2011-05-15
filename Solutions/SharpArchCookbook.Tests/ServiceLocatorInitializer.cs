namespace SharpArchCookbook.Tests
{
    using Castle.Windsor;
    using SharpArch.Domain.PersistenceSupport;
    using SharpArch.NHibernate;
    using Castle.MicroKernel.Registration;
    using CommonServiceLocator.WindsorAdapter;
    using Microsoft.Practices.ServiceLocation;

    public class ServiceLocatorInitializer
    {
        public static void Init() 
        {
            IWindsorContainer container = new WindsorContainer();

            container.Register(
                    Component
                        .For(typeof(IEntityDuplicateChecker))
                        .ImplementedBy(typeof(EntityDuplicateChecker))
                        .Named("entityDuplicateChecker"));

            ServiceLocator.SetLocatorProvider(() => new WindsorServiceLocator(container));
        }
    }
}
