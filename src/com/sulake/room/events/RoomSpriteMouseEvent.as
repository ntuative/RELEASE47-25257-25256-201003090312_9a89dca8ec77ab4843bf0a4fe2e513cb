package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1668:Boolean = false;
      
      private var var_1670:Boolean = false;
      
      private var var_2125:String = "";
      
      private var _type:String = "";
      
      private var var_1669:Boolean = false;
      
      private var var_1743:Number = 0;
      
      private var var_2199:Number = 0;
      
      private var var_2198:Number = 0;
      
      private var var_2200:String = "";
      
      private var var_1741:Number = 0;
      
      private var var_1671:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_2200 = param2;
         var_2125 = param3;
         var_2199 = param4;
         var_2198 = param5;
         var_1743 = param6;
         var_1741 = param7;
         var_1671 = param8;
         var_1670 = param9;
         var_1669 = param10;
         var_1668 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1671;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1668;
      }
      
      public function get localX() : Number
      {
         return var_1743;
      }
      
      public function get localY() : Number
      {
         return var_1741;
      }
      
      public function get canvasId() : String
      {
         return var_2200;
      }
      
      public function get altKey() : Boolean
      {
         return var_1670;
      }
      
      public function get spriteTag() : String
      {
         return var_2125;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_2199;
      }
      
      public function get screenY() : Number
      {
         return var_2198;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1669;
      }
   }
}
