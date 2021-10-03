package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_553:Array;
      
      private var var_1274:int;
      
      private var var_1441:Array;
      
      private var var_552:Array;
      
      private var var_1620:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1620 = _loc2_.isWrappingEnabled;
         var_1274 = _loc2_.wrappingPrice;
         var_1441 = _loc2_.stuffTypes;
         var_552 = _loc2_.boxTypes;
         var_553 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_553;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1441;
      }
      
      public function get price() : int
      {
         return var_1274;
      }
      
      public function get boxTypes() : Array
      {
         return var_552;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1620;
      }
   }
}
