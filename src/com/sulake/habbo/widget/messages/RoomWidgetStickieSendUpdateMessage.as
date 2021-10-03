package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_458:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_573:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_734:String;
      
      private var var_160:int;
      
      private var var_200:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_160 = param2;
         var_200 = param3;
         var_734 = param4;
      }
      
      public function get objectId() : int
      {
         return var_160;
      }
      
      public function get text() : String
      {
         return var_200;
      }
      
      public function get colorHex() : String
      {
         return var_734;
      }
   }
}
