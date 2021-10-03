package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1010:Boolean;
      
      private var var_1283:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1010 = param1.readInteger() > 0;
         var_1283 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_1010;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1283;
      }
      
      public function flush() : Boolean
      {
         var_1010 = false;
         var_1283 = false;
         return true;
      }
   }
}
