package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_952:String = "price_type_none";
      
      public static const const_432:String = "pricing_model_multi";
      
      public static const const_387:String = "price_type_credits";
      
      public static const const_356:String = "price_type_credits_and_pixels";
      
      public static const const_390:String = "pricing_model_bundle";
      
      public static const const_418:String = "pricing_model_single";
      
      public static const const_640:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1384:String = "pricing_model_unknown";
      
      public static const const_411:String = "price_type_pixels";
       
      
      private var var_829:int;
      
      private var _offerId:int;
      
      private var var_830:int;
      
      private var var_394:String;
      
      private var var_566:String;
      
      private var var_1900:int;
      
      private var var_537:ICatalogPage;
      
      private var var_1216:String;
      
      private var var_393:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.method_2;
         var_1216 = param1.localizationId;
         var_829 = param1.priceInCredits;
         var_830 = param1.priceInPixels;
         var_537 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_394;
      }
      
      public function get page() : ICatalogPage
      {
         return var_537;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1900 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_393;
      }
      
      public function get localizationId() : String
      {
         return var_1216;
      }
      
      public function get method_2() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_830;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1216 = "";
         var_829 = 0;
         var_830 = 0;
         var_537 = null;
         if(var_393 != null)
         {
            var_393.dispose();
            var_393 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_566;
      }
      
      public function get previewCallbackId() : int
      {
         return var_1900;
      }
      
      public function get priceInCredits() : int
      {
         return var_829;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_394 = const_418;
            }
            else
            {
               var_394 = const_432;
            }
         }
         else if(param1.length > 1)
         {
            var_394 = const_390;
         }
         else
         {
            var_394 = const_1384;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_394)
         {
            case const_418:
               var_393 = new SingleProductContainer(this,param1);
               break;
            case const_432:
               var_393 = new MultiProductContainer(this,param1);
               break;
            case const_390:
               var_393 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_394);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_829 > 0 && var_830 > 0)
         {
            var_566 = const_356;
         }
         else if(var_829 > 0)
         {
            var_566 = const_387;
         }
         else if(var_830 > 0)
         {
            var_566 = const_411;
         }
         else
         {
            var_566 = const_952;
         }
      }
   }
}
