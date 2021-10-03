package com.sulake.habbo.widget.events
{
   public class RoomWidgetCreditFurniUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_522:String = "RWCFUE_CREDIT_FURNI_UPDATE";
       
      
      private var var_160:int;
      
      private var var_1749:Number;
      
      public function RoomWidgetCreditFurniUpdateEvent(param1:String, param2:int, param3:Number, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         var_1749 = param3;
         var_160 = param2;
      }
      
      public function get creditValue() : Number
      {
         return var_1749;
      }
      
      public function get objectId() : int
      {
         return var_160;
      }
   }
}
