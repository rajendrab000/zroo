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
    
    public partial class TBL_Pages
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TBL_Pages()
        {
            this.TBL_ControlModule_Pages = new HashSet<TBL_ControlModule_Pages>();
            this.TBL_Page_Menues = new HashSet<TBL_Page_Menues>();
            this.TBL_Page_Plugins = new HashSet<TBL_Page_Plugins>();
        }
    
        public int PageID { get; set; }
        public string PageName { get; set; }
        public string ModuleInfo { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public System.DateTime CreateDate { get; set; }
        public int CreatedBy { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
        public string PageURL { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ControlModule_Pages> TBL_ControlModule_Pages { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_Page_Menues> TBL_Page_Menues { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_Page_Plugins> TBL_Page_Plugins { get; set; }
        public virtual TBL_ShopLoginDetails TBL_ShopLoginDetails { get; set; }
        public virtual TBL_ShopLoginDetails TBL_ShopLoginDetails1 { get; set; }
    }
}
