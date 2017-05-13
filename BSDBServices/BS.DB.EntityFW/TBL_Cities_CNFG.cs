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
    
    public partial class TBL_Cities_CNFG
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TBL_Cities_CNFG()
        {
            this.TBL_AdminOffers = new HashSet<TBL_AdminOffers>();
            this.TBL_Infrastructure_CNFG = new HashSet<TBL_Infrastructure_CNFG>();
            this.TBL_PostalCodes_CNFG = new HashSet<TBL_PostalCodes_CNFG>();
        }
    
        public int CityID { get; set; }
        public string CityName { get; set; }
        public bool IsActive { get; set; }
        public int StateID { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public int CreatedBy { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_AdminOffers> TBL_AdminOffers { get; set; }
        public virtual TBL_ShopLoginDetails TBL_ShopLoginDetails { get; set; }
        public virtual TBL_ShopLoginDetails TBL_ShopLoginDetails1 { get; set; }
        public virtual TBL_States_CNFG TBL_States_CNFG { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_Infrastructure_CNFG> TBL_Infrastructure_CNFG { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_PostalCodes_CNFG> TBL_PostalCodes_CNFG { get; set; }
    }
}