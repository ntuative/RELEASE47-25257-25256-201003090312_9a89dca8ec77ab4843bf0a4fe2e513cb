package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1644:Boolean;
      
      private var var_1627:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1644 = Boolean(parseInt(param1.@club));
         var_1627 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1644;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1627;
      }
   }
}
