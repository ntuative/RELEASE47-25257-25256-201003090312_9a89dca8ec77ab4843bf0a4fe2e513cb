package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1516:String;
      
      private var var_929:String;
      
      private var var_1517:String;
      
      private var var_1515:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1515 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1516 = _loc5_[0];
         var_1517 = _loc5_[1];
         _name = param2;
         var_929 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1516;
      }
      
      public function get languageCode() : String
      {
         return var_1515;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_929;
      }
      
      public function get encoding() : String
      {
         return var_1517;
      }
      
      public function get id() : String
      {
         return var_1515 + "_" + var_1516 + "." + var_1517;
      }
   }
}
