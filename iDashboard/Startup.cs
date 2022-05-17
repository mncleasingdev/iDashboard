using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(iDashboard.Startup))]
namespace iDashboard
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
