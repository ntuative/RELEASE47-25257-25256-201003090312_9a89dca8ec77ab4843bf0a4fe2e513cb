package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_238:String = "RWFAM_MOVE";
      
      public static const const_678:String = "RWFUAM_ROTATE";
      
      public static const const_625:String = "RWFAM_PICKUP";
       
      
      private var var_1902:int = 0;
      
      private var var_1901:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1902 = param2;
         var_1901 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1902;
      }
      
      public function get furniCategory() : int
      {
         return var_1901;
      }
   }
}
