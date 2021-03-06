//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System.ComponentModel;

namespace BS.DB.EntityFW
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class TBL_ShopLoginDetails
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TBL_ShopLoginDetails()
        {
            this.TBL_AdminOffers = new HashSet<TBL_AdminOffers>();
            this.TBL_AdminOffers1 = new HashSet<TBL_AdminOffers>();
            this.TBL_Cities_CNFG = new HashSet<TBL_Cities_CNFG>();
            this.TBL_Cities_CNFG1 = new HashSet<TBL_Cities_CNFG>();
            this.TBL_InActiveShopList_CNFG = new HashSet<TBL_InActiveShopList_CNFG>();
            this.TBL_InActiveShopList_CNFG1 = new HashSet<TBL_InActiveShopList_CNFG>();
            this.TBL_InActiveShopReasons_CNFG = new HashSet<TBL_InActiveShopReasons_CNFG>();
            this.TBL_InActiveShopReasons_CNFG1 = new HashSet<TBL_InActiveShopReasons_CNFG>();
            this.TBL_Infrastructure_CNFG = new HashSet<TBL_Infrastructure_CNFG>();
            this.TBL_Infrastructure_CNFG1 = new HashSet<TBL_Infrastructure_CNFG>();
            this.TBL_InfrastructureCategories_CNFG = new HashSet<TBL_InfrastructureCategories_CNFG>();
            this.TBL_InfrastructureCategories_CNFG1 = new HashSet<TBL_InfrastructureCategories_CNFG>();
            this.TBL_OfferOnProducts = new HashSet<TBL_OfferOnProducts>();
            this.TBL_OfferOnProducts1 = new HashSet<TBL_OfferOnProducts>();
            this.TBL_PostalCodes_CNFG = new HashSet<TBL_PostalCodes_CNFG>();
            this.TBL_PostalCodes_CNFG1 = new HashSet<TBL_PostalCodes_CNFG>();
            this.TBL_ProductCategories_CNFG = new HashSet<TBL_ProductCategories_CNFG>();
            this.TBL_ProductCategories_CNFG1 = new HashSet<TBL_ProductCategories_CNFG>();
            this.TBL_ProductImages = new HashSet<TBL_ProductImages>();
            this.TBL_ProductImages1 = new HashSet<TBL_ProductImages>();
            this.TBL_Products = new HashSet<TBL_Products>();
            this.TBL_Products1 = new HashSet<TBL_Products>();
            this.TBL_ProductSubType_CNFG = new HashSet<TBL_ProductSubType_CNFG>();
            this.TBL_ProductSubType_CNFG1 = new HashSet<TBL_ProductSubType_CNFG>();
            this.TBL_ProductType_CNFG = new HashSet<TBL_ProductType_CNFG>();
            this.TBL_ProductType_CNFG1 = new HashSet<TBL_ProductType_CNFG>();
            this.TBL_ShopCategory_CNFG = new HashSet<TBL_ShopCategory_CNFG>();
            this.TBL_ShopCategory_CNFG1 = new HashSet<TBL_ShopCategory_CNFG>();
            this.TBL_ShopDirectory = new HashSet<TBL_ShopDirectory>();
            this.TBL_ShopDirectory1 = new HashSet<TBL_ShopDirectory>();
            this.Logs = new HashSet<Log>();
            this.TBL_ShopLoginDetails1 = new HashSet<TBL_ShopLoginDetails>();
            this.TBL_ShopLoginDetails11 = new HashSet<TBL_ShopLoginDetails>();
            this.TBL_ShopOffers = new HashSet<TBL_ShopOffers>();
            this.TBL_ShopOffers1 = new HashSet<TBL_ShopOffers>();
            this.TBL_Shops = new HashSet<TBL_Shops>();
            this.TBL_Shops5TopProducts = new HashSet<TBL_Shops5TopProducts>();
            this.TBL_ShopsInPostalCodes = new HashSet<TBL_ShopsInPostalCodes>();
            this.TBL_Shops1 = new HashSet<TBL_Shops>();
            this.TBL_Shops5TopProducts1 = new HashSet<TBL_Shops5TopProducts>();
            this.TBL_ShopsInPostalCodes1 = new HashSet<TBL_ShopsInPostalCodes>();
            this.TBL_ShopTypes_CNFG = new HashSet<TBL_ShopTypes_CNFG>();
            this.TBL_ShopTypes_CNFG1 = new HashSet<TBL_ShopTypes_CNFG>();
            this.TBL_States_CNFG = new HashSet<TBL_States_CNFG>();
            this.TBL_States_CNFG1 = new HashSet<TBL_States_CNFG>();
        }
    
        public int ShopLoginDetailsID { get; set; }
        [Required]
        public string LoginName { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [DataType(DataType.Password)]
        [Compare(nameof(Password), ErrorMessage = "Passwords don't match.")]
        [DisplayName("Confirm Password")]
       public string ConfirmPassword { get; set; }

        [Required]
        public string FirstName { get; set; }
        public string LastName { get; set; }

        [Required]
        [EmailAddress]
        public string EmailID { get; set; }
        public Nullable<int> ShopDirectoryID { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<int> CreatedBy { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public Nullable<int> UpdatedBy { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_AdminOffers> TBL_AdminOffers { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_AdminOffers> TBL_AdminOffers1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_Cities_CNFG> TBL_Cities_CNFG { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_Cities_CNFG> TBL_Cities_CNFG1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_InActiveShopList_CNFG> TBL_InActiveShopList_CNFG { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_InActiveShopList_CNFG> TBL_InActiveShopList_CNFG1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_InActiveShopReasons_CNFG> TBL_InActiveShopReasons_CNFG { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_InActiveShopReasons_CNFG> TBL_InActiveShopReasons_CNFG1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_Infrastructure_CNFG> TBL_Infrastructure_CNFG { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_Infrastructure_CNFG> TBL_Infrastructure_CNFG1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_InfrastructureCategories_CNFG> TBL_InfrastructureCategories_CNFG { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_InfrastructureCategories_CNFG> TBL_InfrastructureCategories_CNFG1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_OfferOnProducts> TBL_OfferOnProducts { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_OfferOnProducts> TBL_OfferOnProducts1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_PostalCodes_CNFG> TBL_PostalCodes_CNFG { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_PostalCodes_CNFG> TBL_PostalCodes_CNFG1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ProductCategories_CNFG> TBL_ProductCategories_CNFG { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ProductCategories_CNFG> TBL_ProductCategories_CNFG1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ProductImages> TBL_ProductImages { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ProductImages> TBL_ProductImages1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_Products> TBL_Products { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_Products> TBL_Products1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ProductSubType_CNFG> TBL_ProductSubType_CNFG { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ProductSubType_CNFG> TBL_ProductSubType_CNFG1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ProductType_CNFG> TBL_ProductType_CNFG { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ProductType_CNFG> TBL_ProductType_CNFG1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ShopCategory_CNFG> TBL_ShopCategory_CNFG { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ShopCategory_CNFG> TBL_ShopCategory_CNFG1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ShopDirectory> TBL_ShopDirectory { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ShopDirectory> TBL_ShopDirectory1 { get; set; }
        public virtual TBL_ShopDirectory TBL_ShopDirectory2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Log> Logs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ShopLoginDetails> TBL_ShopLoginDetails1 { get; set; }
        public virtual TBL_ShopLoginDetails TBL_ShopLoginDetails2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ShopLoginDetails> TBL_ShopLoginDetails11 { get; set; }
        public virtual TBL_ShopLoginDetails TBL_ShopLoginDetails3 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ShopOffers> TBL_ShopOffers { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ShopOffers> TBL_ShopOffers1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_Shops> TBL_Shops { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_Shops5TopProducts> TBL_Shops5TopProducts { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ShopsInPostalCodes> TBL_ShopsInPostalCodes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_Shops> TBL_Shops1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_Shops5TopProducts> TBL_Shops5TopProducts1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ShopsInPostalCodes> TBL_ShopsInPostalCodes1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ShopTypes_CNFG> TBL_ShopTypes_CNFG { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_ShopTypes_CNFG> TBL_ShopTypes_CNFG1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_States_CNFG> TBL_States_CNFG { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TBL_States_CNFG> TBL_States_CNFG1 { get; set; }
    }
}
