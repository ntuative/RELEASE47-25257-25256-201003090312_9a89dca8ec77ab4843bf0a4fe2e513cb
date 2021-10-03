package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_873:Array;
      
      private var var_829:int;
      
      private var var_1216:String;
      
      private var _offerId:int;
      
      private var var_830:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1216 = param1.readString();
         var_829 = param1.readInteger();
         var_830 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_873 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_873.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_873;
      }
      
      public function get priceInCredits() : int
      {
         return var_829;
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
   }
}
