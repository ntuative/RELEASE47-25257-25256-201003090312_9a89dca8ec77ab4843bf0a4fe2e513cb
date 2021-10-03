package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_670:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_555:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_272:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1529:Point;
      
      private var var_1528:Rectangle;
      
      private var var_202:Number = 0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1528 = param2;
         var_1529 = param3;
         var_202 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1528 != null)
         {
            return var_1528.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_202;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1529 != null)
         {
            return var_1529.clone();
         }
         return null;
      }
   }
}
