package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1785:Class;
      
      private var var_1784:Class;
      
      private var var_1786:String;
      
      private var var_1165:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1786 = param1;
         var_1784 = param2;
         var_1785 = param3;
         if(rest == null)
         {
            var_1165 = new Array();
         }
         else
         {
            var_1165 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1785;
      }
      
      public function get assetClass() : Class
      {
         return var_1784;
      }
      
      public function get mimeType() : String
      {
         return var_1786;
      }
      
      public function get fileTypes() : Array
      {
         return var_1165;
      }
   }
}
