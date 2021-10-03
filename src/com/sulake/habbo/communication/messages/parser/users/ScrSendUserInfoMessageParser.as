package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1952:int;
      
      private var var_1157:String;
      
      private var var_1953:int;
      
      private var var_1951:int;
      
      private var var_1950:int;
      
      private var var_1954:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1157;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_1954;
      }
      
      public function get responseType() : int
      {
         return var_1951;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_1953;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1157 = param1.readString();
         var_1953 = param1.readInteger();
         var_1952 = param1.readInteger();
         var_1950 = param1.readInteger();
         var_1951 = param1.readInteger();
         var_1954 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_1952;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_1950;
      }
   }
}
