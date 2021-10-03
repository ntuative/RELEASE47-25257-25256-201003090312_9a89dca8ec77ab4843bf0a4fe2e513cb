package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1796:String;
      
      private var var_900:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_1796 = param1;
         var_900 = param2;
      }
      
      public function get postureType() : String
      {
         return var_1796;
      }
      
      public function get parameter() : String
      {
         return var_900;
      }
   }
}
