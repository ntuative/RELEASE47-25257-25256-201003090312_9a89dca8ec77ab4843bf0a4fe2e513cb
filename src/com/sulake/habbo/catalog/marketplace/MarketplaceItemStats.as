package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1425:Array;
      
      private var var_1762:int;
      
      private var var_1766:int;
      
      private var var_1765:int;
      
      private var var_1763:int;
      
      private var _dayOffsets:Array;
      
      private var var_1764:int;
      
      private var var_1426:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1425;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1425 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1766;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1426 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1762 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1765;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1763;
      }
      
      public function get offerCount() : int
      {
         return var_1764;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1764 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1426;
      }
      
      public function get averagePrice() : int
      {
         return var_1762;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1763 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1765 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1766 = param1;
      }
   }
}
