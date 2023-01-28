using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(project7.Startup))]
namespace project7
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
