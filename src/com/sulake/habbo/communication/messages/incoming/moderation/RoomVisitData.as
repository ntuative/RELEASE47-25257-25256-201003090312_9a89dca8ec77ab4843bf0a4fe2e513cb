package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_740:String;
      
      private var var_1876:int;
      
      private var var_1482:Boolean;
      
      private var _roomId:int;
      
      private var var_1877:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1482 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_740 = param1.readString();
         var_1877 = param1.readInteger();
         var_1876 = param1.readInteger();
      }
      
      public function get method_7() : Boolean
      {
         return var_1482;
      }
      
      public function get roomName() : String
      {
         return var_740;
      }
      
      public function get enterMinute() : int
      {
         return var_1876;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1877;
      }
   }
}
