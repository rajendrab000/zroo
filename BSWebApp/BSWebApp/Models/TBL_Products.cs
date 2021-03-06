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
    using System.ComponentModel.DataAnnotations;
    public partial class TBL_Products
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TBL_Products()
        {
            this.TBL_ProductImages = new HashSet<TBL_ProductImages>();
        }
    
        public int ProductID { get; set; }

        [Required]
        [Display(Name = "Product Name")]
        public string ProductName { get; set; }

        [Display(Name= "Product Brand")]
        public string ProductBrand { get; set; }

        [Display(Name = "Bar Code")]
        public string BarCode { get; set; }

        [Display(Name = "Product Type")]
        public Nullable<int> ProductTypeID { get; set; }

        
        public int ShopID { get; set; }

       // [Display(Name = "Availablity")]
        public bool IsAvailable { get; set; }

        [Display(Name = "Available Quantity")]
        public decimal AvailableQuantity { get; set; }

        [Display(Name = "Other Product Details")]
        public string OtherJsonDetails { get; set; }

        [Display(Name = "Is Active")]
        public bool IsActive { get; set; }

        [Display(Name = "Product Category")]
        public int ProductCategoryID { get; set; }

        [Display(Name = "Product Sub Type")]
        public int ProductSubTypeID { get; set; }
        public decimal MRP { get; set; }

        [Display(Name = "Shop Price")]
        public decimal ShopPrice { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public int CreatedBy { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
    
        public virtual TBL_ProductCategories_CNFG TBL_ProductCategories_CNFG { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ProductImages> TBL_ProductImages { get; set; }
        public virtual TBL_ProductType_CNFG TBL_ProductType_CNFG { get; set; }
        public virtual TBL_ShopLoginDetails TBL_ShopLoginDetails { get; set; }
        public virtual TBL_ShopLoginDetails TBL_ShopLoginDetails1 { get; set; }
        public virtual TBL_Shops TBL_Shops { get; set; }
        public virtual TBL_ProductSubType_CNFG TBL_ProductSubType_CNFG { get; set; }
    }
}
