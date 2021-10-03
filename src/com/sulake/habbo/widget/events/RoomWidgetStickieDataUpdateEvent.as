package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_711:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_200:String;
      
      private var var_734:String;
      
      private var var_1557:String;
      
      private var var_160:int = -1;
      
      private var var_13:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_160 = param2;
         var_1557 = param3;
         var_200 = param4;
         var_734 = param5;
         var_13 = param6;
      }
      
      public function get objectType() : String
      {
         return var_1557;
      }
      
      public function get colorHex() : String
      {
         return var_734;
      }
      
      public function get text() : String
      {
         return var_200;
      }
      
      public function get objectId() : int
      {
         return var_160;
      }
      
      public function get controller() : Boolean
      {
         return var_13;
      }
   }
}
