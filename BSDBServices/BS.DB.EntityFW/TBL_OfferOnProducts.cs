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
    
    public partial class TBL_OfferOnProducts
    {
        public int ID { get; set; }
        public int OfferID { get; set; }
        public int ProductID { get; set; }
        public bool IsActive { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public int CreatedBy { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
    
        public virtual TBL_ShopLoginDetails TBL_ShopLoginDetails { get; set; }
        public virtual TBL_ShopLoginDetails TBL_ShopLoginDetails1 { get; set; }
        public virtual TBL_ShopOffers TBL_ShopOffers { get; set; }
    }
}
