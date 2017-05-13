﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using BS.DB.EntityFW;
using BS.DB.EntityFW.CommonTypes;
using System.Web.Http.Results;

namespace BS.WebAPI.Services.Controllers
{
    public class ShopOffersController : ApiController
    {
        private ShopOffers_Activity ShopOffersActivity = new ShopOffers_Activity();
        [System.Web.Http.HttpGet]
        public JsonResult<BSEntityFramework_ResultType> GetShopOffersDetail(int id)
        {
            var BSResult = ShopOffersActivity.GetShopOffer(id);
            return Json<BSEntityFramework_ResultType>(BSResult);
        }

        [System.Web.Http.HttpGet]
        public JsonResult<BSEntityFramework_ResultType> GetAllShopOfferss()
        {
            var BSResult = ShopOffersActivity.GetAllShopOffers();
            return Json<BSEntityFramework_ResultType>(BSResult);
        }

        [HttpPost]
        public JsonResult<BSEntityFramework_ResultType> PostNewShopOffers(TBL_ShopOffers newShopOffers)
        {
            var BSResult = ShopOffersActivity.InsertShopOffer(newShopOffers);
            return Json<BSEntityFramework_ResultType>(BSResult);
        }

        [HttpPut]
        public JsonResult<BSEntityFramework_ResultType> PutUpdateShopOffers(TBL_ShopOffers upateShopOffers)
        {
            var BSResult = ShopOffersActivity.UpdateShopOffer(upateShopOffers);
            return Json<BSEntityFramework_ResultType>(BSResult);
        }



    }
}
