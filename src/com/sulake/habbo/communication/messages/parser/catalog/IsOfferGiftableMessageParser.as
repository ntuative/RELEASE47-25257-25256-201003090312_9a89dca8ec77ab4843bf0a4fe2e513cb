package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class IsOfferGiftableMessageParser implements IMessageParser
   {
       
      
      private var var_2216:Boolean;
      
      private var _offerId:int;
      
      public function IsOfferGiftableMessageParser()
      {
         super();
      }
      
      public function get method_2() : int
      {
         return _offerId;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _offerId = param1.readInteger();
         var_2216 = param1.readBoolean();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get isGiftable() : Boolean
      {
         return var_2216;
      }
   }
}
