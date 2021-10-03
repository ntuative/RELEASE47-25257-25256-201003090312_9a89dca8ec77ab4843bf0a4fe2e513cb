package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_642:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1652:int;
      
      private var var_1650:int;
      
      private var var_1651:Boolean;
      
      private var var_1091:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_642);
         var_1650 = param1;
         var_1652 = param2;
         _color = param3;
         var_1091 = param4;
         var_1651 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1652;
      }
      
      public function get presetNumber() : int
      {
         return var_1650;
      }
      
      public function get brightness() : int
      {
         return var_1091;
      }
      
      public function get apply() : Boolean
      {
         return var_1651;
      }
   }
}
