package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomInviteMessageParser implements IMessageParser
   {
       
      
      private var var_2201:String;
      
      private var var_1071:int;
      
      public function RoomInviteMessageParser()
      {
         super();
      }
      
      public function get senderId() : int
      {
         return this.var_1071;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1071 = param1.readInteger();
         this.var_2201 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get messageText() : String
      {
         return this.var_2201;
      }
   }
}
