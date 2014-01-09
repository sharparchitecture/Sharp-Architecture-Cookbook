using System.Web.Mvc;
using Castle.MicroKernel.Registration;
using Castle.MicroKernel.SubSystems.Configuration;
using Castle.Windsor;

namespace SharpArchCookbook.Web.Mvc.CastleWindsor
{
    public class ControllerInstaller : IWindsorInstaller
    {
        public void Install(IWindsorContainer container, IConfigurationStore store)
        {
            container.Register(
                Classes
                    .FromThisAssembly()
                    .BasedOn<IController>()
                    .Configure(c => c.Named(c.Implementation.Name)).LifestyleTransient()
                );
        }
    }
}