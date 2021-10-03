package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1448:int = -1;
      
      private var var_1181:Boolean;
      
      private var var_1182:String;
      
      private var var_1818:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_1818 = String(param1["set-type"]);
         var_1182 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1181 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1448 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1182;
      }
      
      public function get staticId() : int
      {
         return var_1448;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1448 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1181;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1181 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1182 = param1;
      }
      
      public function get setType() : String
      {
         return var_1818;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
