package com.sulake.room.renderer.utils
{
   public class ObjectMouseData
   {
       
      
      private var var_2125:String = "";
      
      private var var_160:String = "";
      
      public function ObjectMouseData()
      {
         super();
      }
      
      public function set spriteTag(param1:String) : void
      {
         var_2125 = param1;
      }
      
      public function set objectId(param1:String) : void
      {
         var_160 = param1;
      }
      
      public function get spriteTag() : String
      {
         return var_2125;
      }
      
      public function get objectId() : String
      {
         return var_160;
      }
   }
}
