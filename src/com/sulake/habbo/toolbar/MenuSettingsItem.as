package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2007:Array;
      
      private var var_2008:String;
      
      private var var_2010:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_2008 = param1;
         var_2007 = param2;
         var_2010 = param3;
      }
      
      public function get menuId() : String
      {
         return var_2008;
      }
      
      public function get yieldList() : Array
      {
         return var_2007;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_2010;
      }
   }
}
