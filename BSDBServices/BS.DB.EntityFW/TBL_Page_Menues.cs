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
    
    public partial class TBL_Page_Menues
    {
        public int Page_MenuesID { get; set; }
        public Nullable<int> MenuID { get; set; }
        public Nullable<int> PageID { get; set; }
        public Nullable<bool> IsActive { get; set; }
    
        public virtual TBL_Menues TBL_Menues { get; set; }
        public virtual TBL_Pages TBL_Pages { get; set; }
    }
}
