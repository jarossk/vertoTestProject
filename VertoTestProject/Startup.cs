using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(VertoTestProject.Startup))]
namespace VertoTestProject
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
