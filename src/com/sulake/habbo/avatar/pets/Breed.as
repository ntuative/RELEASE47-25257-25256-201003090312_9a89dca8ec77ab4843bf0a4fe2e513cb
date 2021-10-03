package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_960:String;
      
      private var _id:int;
      
      private var var_2050:String = "";
      
      private var var_2051:int;
      
      private var var_2049:String;
      
      private var var_1801:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_2051 = parseInt(param1.@pattern);
         var_960 = String(param1.@gender);
         var_1801 = Boolean(parseInt(param1.@colorable));
         var_2050 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_2050;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1801;
      }
      
      public function get gender() : String
      {
         return var_960;
      }
      
      public function get patternId() : int
      {
         return var_2051;
      }
      
      public function get avatarFigureString() : String
      {
         return var_2049;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_2049 = param1;
      }
   }
}
