package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1382:String;
      
      private var var_978:String;
      
      private var var_1865:Boolean;
      
      private var var_1456:int;
      
      private var var_1861:int;
      
      private var var_1863:Boolean;
      
      private var var_1862:String = "";
      
      private var var_1866:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1294:int;
      
      private var var_1864:Boolean;
      
      private var var_1944:int = -1;
      
      private var var_1867:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1861 = param1;
         var_978 = param2;
         _objId = param3;
         var_1294 = param4;
         _category = param5;
         var_1382 = param6;
         var_1865 = param7;
         var_1866 = param8;
         var_1864 = param9;
         var_1863 = param10;
         var_1867 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1862;
      }
      
      public function get extra() : int
      {
         return var_1456;
      }
      
      public function get classId() : int
      {
         return var_1294;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1863;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1865;
      }
      
      public function get stripId() : int
      {
         return var_1861;
      }
      
      public function get stuffData() : String
      {
         return var_1382;
      }
      
      public function get songId() : int
      {
         return var_1944;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1862 = param1;
         var_1456 = param2;
      }
      
      public function get itemType() : String
      {
         return var_978;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1867;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1864;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1866;
      }
   }
}
