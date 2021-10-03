package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_2078:int;
      
      private var var_2081:String;
      
      private var var_1569:IActionDefinition;
      
      private var var_2077:Boolean;
      
      private var _color:IPartColor;
      
      private var var_2082:String;
      
      private var var_2079:String;
      
      private var var_1801:Boolean;
      
      private var var_2080:ColorTransform;
      
      private var var_1625:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_2081 = param1;
         var_2082 = param2;
         var_2078 = param3;
         _color = param4;
         _frames = param5;
         var_1569 = param6;
         var_1801 = param7;
         var_1625 = param8;
         var_2079 = param9;
         var_2077 = param10;
         var_2080 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1801;
      }
      
      public function get partType() : String
      {
         return var_2082;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1625;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_2077;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_2078;
      }
      
      public function get flippedPartType() : String
      {
         return var_2079;
      }
      
      public function get bodyPartId() : String
      {
         return var_2081;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1569;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_2080;
      }
   }
}
