package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1425:Array;
      
      private var var_1762:int;
      
      private var var_1766:int;
      
      private var var_1763:int;
      
      private var var_1765:int;
      
      private var _dayOffsets:Array;
      
      private var var_1764:int;
      
      private var var_1426:Array;
      
      public function MarketplaceItemStatsParser()
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
      
      public function get furniTypeId() : int
      {
         return var_1766;
      }
      
      public function get historyLength() : int
      {
         return var_1765;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1763;
      }
      
      public function get offerCount() : int
      {
         return var_1764;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1426;
      }
      
      public function get averagePrice() : int
      {
         return var_1762;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1762 = param1.readInteger();
         var_1764 = param1.readInteger();
         var_1765 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1425 = [];
         var_1426 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1425.push(param1.readInteger());
            var_1426.push(param1.readInteger());
            _loc3_++;
         }
         var_1763 = param1.readInteger();
         var_1766 = param1.readInteger();
         return true;
      }
   }
}
