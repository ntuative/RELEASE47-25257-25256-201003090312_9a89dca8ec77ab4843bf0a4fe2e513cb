package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_978:int;
      
      private var var_1183:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_978 = param1;
         var_1183 = param2;
      }
      
      public function get itemType() : int
      {
         return var_978;
      }
      
      public function get itemName() : String
      {
         return var_1183;
      }
   }
}
