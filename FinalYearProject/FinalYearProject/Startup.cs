﻿using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FinalYearProject.Startup))]
namespace FinalYearProject
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
