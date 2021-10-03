package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_360:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_306:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_857:int;
      
      private var var_260:Boolean;
      
      private var var_2231:Boolean;
      
      private var var_1564:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_857 = param2;
         var_2231 = param3;
         var_260 = param4;
         var_1564 = param5;
      }
      
      public function get position() : int
      {
         return var_857;
      }
      
      public function get isActive() : Boolean
      {
         return var_260;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1564;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_2231;
      }
   }
}
