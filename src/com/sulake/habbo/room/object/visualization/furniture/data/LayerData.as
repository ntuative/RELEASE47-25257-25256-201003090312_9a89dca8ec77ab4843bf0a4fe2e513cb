package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_388:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_400:int = 0;
      
      public static const const_1004:int = 2;
      
      public static const const_964:int = 1;
      
      public static const const_738:Boolean = false;
      
      public static const const_558:String = "";
      
      public static const const_394:int = 0;
      
      public static const const_481:int = 0;
      
      public static const const_452:int = 0;
       
      
      private var var_2188:int = 0;
      
      private var var_1604:String = "";
      
      private var var_1530:int = 0;
      
      private var var_2189:int = 0;
      
      private var var_2190:Number = 0;
      
      private var var_1601:int = 255;
      
      private var var_2191:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_2188;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1530 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_2190;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_2189 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_2188 = param1;
      }
      
      public function get tag() : String
      {
         return var_1604;
      }
      
      public function get alpha() : int
      {
         return var_1601;
      }
      
      public function get ink() : int
      {
         return var_1530;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_2190 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_2189;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_2191 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_2191;
      }
      
      public function set tag(param1:String) : void
      {
         var_1604 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1601 = param1;
      }
   }
}
