package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectDimmerStateUpdateEvent extends RoomObjectEvent
   {
      
      public static const const_60:String = "RODSUE_DIMMER_STATE";
       
      
      private var var_1090:int;
      
      private var _color:uint;
      
      private var var_1091:int;
      
      private var var_1771:int;
      
      private var var_36:int;
      
      public function RoomObjectDimmerStateUpdateEvent(param1:int, param2:String, param3:int, param4:int, param5:int, param6:uint, param7:int, param8:Boolean = false, param9:Boolean = false)
      {
         super(const_60,param1,param2,param8,param9);
         var_36 = param3;
         var_1771 = param4;
         var_1090 = param5;
         _color = param6;
         var_1091 = param7;
      }
      
      public function get brightness() : uint
      {
         return var_1091;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectId() : int
      {
         return var_1090;
      }
      
      public function get state() : int
      {
         return var_36;
      }
      
      public function get presetId() : int
      {
         return var_1771;
      }
   }
}
