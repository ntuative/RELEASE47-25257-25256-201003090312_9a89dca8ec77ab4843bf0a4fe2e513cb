package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_1157:String = "";
      
      private var var_1158:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1158 = "";
         var_1157 = "";
         return true;
      }
      
      public function get productName() : String
      {
         return var_1157;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1158 = param1.readString();
         var_1157 = param1.readString();
         return true;
      }
      
      public function get productDescription() : String
      {
         return var_1158;
      }
   }
}
