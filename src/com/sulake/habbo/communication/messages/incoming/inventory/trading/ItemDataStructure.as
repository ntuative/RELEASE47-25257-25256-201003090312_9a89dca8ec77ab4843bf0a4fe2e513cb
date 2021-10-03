package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_978:String;
      
      private var var_1845:int;
      
      private var var_1842:int;
      
      private var var_1456:int;
      
      private var var_1847:int;
      
      private var _category:int;
      
      private var var_2365:int;
      
      private var var_1843:int;
      
      private var var_1844:int;
      
      private var var_1846:int;
      
      private var var_1841:int;
      
      private var var_1848:Boolean;
      
      private var var_1382:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1845 = param1;
         var_978 = param2;
         var_1842 = param3;
         var_1846 = param4;
         _category = param5;
         var_1382 = param6;
         var_1456 = param7;
         var_1844 = param8;
         var_1843 = param9;
         var_1841 = param10;
         var_1847 = param11;
         var_1848 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_1846;
      }
      
      public function get extra() : int
      {
         return var_1456;
      }
      
      public function get stuffData() : String
      {
         return var_1382;
      }
      
      public function get groupable() : Boolean
      {
         return var_1848;
      }
      
      public function get creationMonth() : int
      {
         return var_1841;
      }
      
      public function get roomItemID() : int
      {
         return var_1842;
      }
      
      public function get itemType() : String
      {
         return var_978;
      }
      
      public function get itemID() : int
      {
         return var_1845;
      }
      
      public function get songID() : int
      {
         return var_1456;
      }
      
      public function get timeToExpiration() : int
      {
         return var_1844;
      }
      
      public function get creationYear() : int
      {
         return var_1847;
      }
      
      public function get creationDay() : int
      {
         return var_1843;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
