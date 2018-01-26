using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AssessmentCenterWEB.Startup))]
namespace AssessmentCenterWEB
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
