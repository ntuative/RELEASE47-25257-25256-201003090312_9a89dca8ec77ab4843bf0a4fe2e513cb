package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var var_2017:int;
      
      private var var_1274:int;
      
      private var var_1762:int;
      
      private var var_1963:int = -1;
      
      private var var_371:int;
      
      private var var_1964:int;
      
      private var _image:BitmapData;
      
      private var _offerId:int;
      
      private var var_1273:int;
      
      private var var_1902:int;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int = -1)
      {
         super();
         _offerId = param1;
         var_1902 = param2;
         var_1964 = param3;
         var_1274 = param4;
         var_371 = param5;
         var_1762 = param6;
         var_1273 = param7;
      }
      
      public function set imageCallback(param1:int) : void
      {
         var_2017 = param1;
      }
      
      public function get imageCallback() : int
      {
         return var_2017;
      }
      
      public function get price() : int
      {
         return var_1274;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1963;
      }
      
      public function get offerCount() : int
      {
         return var_1273;
      }
      
      public function get method_2() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1964;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         var_1963 = param1;
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
            _image = null;
         }
      }
      
      public function set price(param1:int) : void
      {
         var_1274 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1273 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get status() : int
      {
         return var_371;
      }
      
      public function get averagePrice() : int
      {
         return var_1762;
      }
      
      public function set method_2(param1:int) : void
      {
         _offerId = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(_image != null)
         {
            _image.dispose();
         }
         _image = param1;
      }
      
      public function get furniId() : int
      {
         return var_1902;
      }
   }
}
