//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BS.DB.EntityFW
{
    using System;
    using System.Collections.Generic;
    
    public partial class Log
    {
        public int Id { get; set; }
        public string Application { get; set; }
        public System.DateTime Logged { get; set; }
        public string Level { get; set; }
        public string Message { get; set; }
        public string UserName { get; set; }
        public string ServerName { get; set; }
        public string Port { get; set; }
        public string Url { get; set; }
        public Nullable<bool> Https { get; set; }
        public string ServerAddress { get; set; }
        public string Exception { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public int CreatedBy { get; set; }
    
        public virtual TBL_ShopLoginDetails TBL_ShopLoginDetails { get; set; }
    }
}
