package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1800:String;
      
      private var var_609:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_609 = param1;
         var_1800 = param2;
      }
      
      public function get race() : String
      {
         return var_1800;
      }
      
      public function get figure() : String
      {
         return var_609;
      }
   }
}
