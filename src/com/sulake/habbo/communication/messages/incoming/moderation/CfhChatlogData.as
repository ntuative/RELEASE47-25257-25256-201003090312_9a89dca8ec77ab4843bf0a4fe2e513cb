package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1646:int;
      
      private var var_1032:int;
      
      private var var_1645:int;
      
      private var var_1393:int;
      
      private var var_109:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1393 = param1.readInteger();
         var_1645 = param1.readInteger();
         var_1032 = param1.readInteger();
         var_1646 = param1.readInteger();
         var_109 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1393);
      }
      
      public function get chatRecordId() : int
      {
         return var_1646;
      }
      
      public function get reportedUserId() : int
      {
         return var_1032;
      }
      
      public function get callerUserId() : int
      {
         return var_1645;
      }
      
      public function get callId() : int
      {
         return var_1393;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_109;
      }
   }
}
