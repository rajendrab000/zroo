﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BS.WebAPI.Services.Common
{
    public class WebAppConfig
    {
        public static string GetConfigValue(string key)
        {
            string webapiurl = System.Configuration.ConfigurationManager.AppSettings[key];
            return webapiurl;
            
        }
    }
}