package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1274:int;
      
      private var var_1963:int = -1;
      
      private var var_371:int;
      
      private var var_1762:int;
      
      private var var_1964:int;
      
      private var _offerId:int;
      
      private var var_1273:int;
      
      private var var_1902:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1902 = param2;
         var_1964 = param3;
         var_1274 = param4;
         var_371 = param5;
         var_1963 = param6;
         var_1762 = param7;
         var_1273 = param8;
      }
      
      public function get status() : int
      {
         return var_371;
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
      
      public function get averagePrice() : int
      {
         return var_1762;
      }
      
      public function get furniId() : int
      {
         return var_1902;
      }
   }
}
