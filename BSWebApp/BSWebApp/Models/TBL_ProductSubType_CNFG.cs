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
    
    public partial class TBL_ProductSubType_CNFG
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TBL_ProductSubType_CNFG()
        {
            this.TBL_Products = new HashSet<TBL_Products>();
        }
    
        public int ProductSubTypeID { get; set; }
        public string ProductSubTypeName { get; set; }
        public bool IsActive { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public int CreatedBy { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_Products> TBL_Products { get; set; }
        public virtual TBL_ShopLoginDetails TBL_ShopLoginDetails { get; set; }
        public virtual TBL_ShopLoginDetails TBL_ShopLoginDetails1 { get; set; }
    }
}
