package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1731:int;
      
      private var var_1835:int;
      
      private var var_1733:int;
      
      private var var_1732:int;
      
      private var _nutrition:int;
      
      private var var_1282:int;
      
      private var var_1728:int;
      
      private var var_1734:int;
      
      private var _energy:int;
      
      private var var_1738:int;
      
      private var var_1736:int;
      
      private var _ownerName:String;
      
      private var var_1729:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1731;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_1835 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1731 = param1;
      }
      
      public function get petId() : int
      {
         return var_1282;
      }
      
      public function get experienceMax() : int
      {
         return var_1734;
      }
      
      public function get nutritionMax() : int
      {
         return var_1732;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1728 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1729;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1282 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1736;
      }
      
      public function get respect() : int
      {
         return var_1835;
      }
      
      public function get levelMax() : int
      {
         return var_1728;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1734 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1733 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1732 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1729 = param1;
      }
      
      public function get experience() : int
      {
         return var_1733;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1736 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1738 = param1;
      }
      
      public function get age() : int
      {
         return var_1738;
      }
   }
}
