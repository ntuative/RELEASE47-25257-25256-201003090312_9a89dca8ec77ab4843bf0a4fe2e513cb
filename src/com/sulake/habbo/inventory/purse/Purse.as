package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1988:Boolean = false;
      
      private var var_1987:int = 0;
      
      private var var_1985:int = 0;
      
      private var var_1986:int = 0;
      
      private var var_1509:int = 0;
      
      private var var_1984:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1509 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1987;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1988;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1988 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1987 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1985 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1509;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1986 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1985;
      }
      
      public function get pixelBalance() : int
      {
         return var_1986;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1984 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1984;
      }
   }
}
