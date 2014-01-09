using Castle.MicroKernel.Registration;
using Castle.MicroKernel.SubSystems.Configuration;
using Castle.Windsor;
using SharpArch.Domain.Commands;
using SharpArch.Domain.Events;

namespace SharpArchCookbook.Web.Mvc.CastleWindsor
{
    public class HandlersInstaller : IWindsorInstaller
    {
        public void Install(IWindsorContainer container, IConfigurationStore store)
        {
            container.Register(
                Classes.FromAssemblyNamed("SharpArchCookbook.Tasks")
                    .BasedOn(typeof(ICommandHandler<>))
                    .WithService.FirstInterface().LifestylePerWebRequest());

            container.Register(
                Classes.FromAssemblyNamed("SharpArchCookbook.Tasks")
                    .BasedOn(typeof(ICommandHandler<,>))
                    .WithService.FirstInterface().LifestylePerWebRequest());

            container.Register(
                Classes.FromAssemblyNamed("SharpArchCookbook.Tasks")
                    .BasedOn(typeof(IHandles<>))
                    .WithService.FirstInterface().LifestylePerWebRequest());
        }
    }
}