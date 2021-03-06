package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomChatlogData
   {
       
      
      private var var_740:String;
      
      private var var_1483:Array;
      
      private var var_1482:Boolean;
      
      private var _roomId:int;
      
      public function RoomChatlogData(param1:IMessageDataWrapper)
      {
         var_1483 = new Array();
         super();
         var_1482 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_740 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_1483.push(new ChatlineData(param1));
            _loc3_++;
         }
         Logger.log("READ ROOMCHATLOGDATA: " + var_1482 + ", " + _roomId + ", " + var_740 + ", " + chatlog.length);
      }
      
      public function get method_7() : Boolean
      {
         return var_1482;
      }
      
      public function get roomName() : String
      {
         return var_740;
      }
      
      public function get chatlog() : Array
      {
         return var_1483;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
