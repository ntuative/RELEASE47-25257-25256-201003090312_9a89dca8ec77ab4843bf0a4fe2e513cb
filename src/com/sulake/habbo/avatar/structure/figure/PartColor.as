package com.sulake.habbo.avatar.structure.figure
{
   import flash.geom.ColorTransform;
   
   public class PartColor implements IPartColor
   {
       
      
      private var var_1466:uint;
      
      private var _rgb:uint;
      
      private var _index:int;
      
      private var var_1468:Number;
      
      private var _b:uint;
      
      private var var_1467:Number;
      
      private var var_1469:uint;
      
      private var var_1802:int;
      
      private var var_1465:Number;
      
      private var _colorTransform:ColorTransform;
      
      private var _id:int;
      
      private var var_1627:Boolean = false;
      
      public function PartColor(param1:XML)
      {
         super();
         _id = parseInt(param1.@id);
         _index = parseInt(param1.@index);
         var_1802 = parseInt(param1.@club);
         var_1627 = Boolean(parseInt(param1.@selectable));
         var _loc2_:String = param1.text();
         _rgb = parseInt(_loc2_,16);
         var_1466 = _rgb >> 16 & 255;
         var_1469 = _rgb >> 8 & 255;
         _b = _rgb >> 0 & 255;
         var_1465 = var_1466 / 255 * 1;
         var_1467 = var_1469 / 255 * 1;
         var_1468 = _b / 255 * 1;
         _colorTransform = new ColorTransform(var_1465,var_1467,var_1468);
      }
      
      public function get colorTransform() : ColorTransform
      {
         return _colorTransform;
      }
      
      public function get rgb() : uint
      {
         return _rgb;
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get blueMultiplier() : Number
      {
         return var_1468;
      }
      
      public function get r() : uint
      {
         return var_1466;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1627;
      }
      
      public function get b() : uint
      {
         return _b;
      }
      
      public function get greenMultiplier() : Number
      {
         return var_1467;
      }
      
      public function get g() : uint
      {
         return var_1469;
      }
      
      public function get redMultiplier() : Number
      {
         return var_1465;
      }
      
      public function get clubLevel() : int
      {
         return var_1802;
      }
   }
}
