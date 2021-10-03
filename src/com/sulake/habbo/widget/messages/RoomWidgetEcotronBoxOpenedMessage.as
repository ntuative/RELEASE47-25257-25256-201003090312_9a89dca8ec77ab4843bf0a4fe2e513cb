package com.sulake.habbo.widget.messages
{
   public class RoomWidgetEcotronBoxOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1246:String = "RWEBOM_ECOTRONBOX_OPENED";
       
      
      private var var_1294:int;
      
      private var var_978:String;
      
      public function RoomWidgetEcotronBoxOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         var_978 = param2;
         var_1294 = param3;
      }
      
      public function get classId() : int
      {
         return var_1294;
      }
      
      public function get itemType() : String
      {
         return var_978;
      }
   }
}
