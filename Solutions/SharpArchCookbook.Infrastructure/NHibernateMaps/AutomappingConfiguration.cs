namespace SharpArchCookbook.Infrastructure.NHibernateMaps
{
    using System;
    using System.Linq;

    using FluentNHibernate;
    using FluentNHibernate.Automapping;

    using SharpArch.Domain.DomainModel;

    public class AutomappingConfiguration : DefaultAutomappingConfiguration
    {
        public override bool ShouldMap(Type type)
        {
            return type.GetInterfaces().Any(x =>
                                         x.IsGenericType && 
                                         x.GetGenericTypeDefinition() == typeof(IEntityWithTypedId<>));

        }

        public override bool IsId(Member member)
        {
            return member.Name == "Id";
        }
    }
}