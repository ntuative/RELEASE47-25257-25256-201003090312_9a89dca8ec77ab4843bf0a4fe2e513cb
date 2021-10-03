package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_204:String = "e";
      
      public static const const_81:String = "i";
      
      public static const const_83:String = "s";
       
      
      private var var_1060:String;
      
      private var var_1321:String;
      
      private var var_1323:int;
      
      private var var_2210:int;
      
      private var var_1059:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1321 = param1.readString();
         var_2210 = param1.readInteger();
         var_1060 = param1.readString();
         var_1059 = param1.readInteger();
         var_1323 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_1059;
      }
      
      public function get productType() : String
      {
         return var_1321;
      }
      
      public function get expiration() : int
      {
         return var_1323;
      }
      
      public function get furniClassId() : int
      {
         return var_2210;
      }
      
      public function get extraParam() : String
      {
         return var_1060;
      }
   }
}
