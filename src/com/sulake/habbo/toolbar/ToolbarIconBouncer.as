package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1788:Number;
      
      private var var_550:Number = 0;
      
      private var var_1789:Number;
      
      private var var_549:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1788 = param1;
         var_1789 = param2;
      }
      
      public function update() : void
      {
         var_549 += var_1789;
         var_550 += var_549;
         if(var_550 > 0)
         {
            var_550 = 0;
            var_549 = var_1788 * -1 * var_549;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_549 = param1;
         var_550 = 0;
      }
      
      public function get location() : Number
      {
         return var_550;
      }
   }
}
