package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1861:int;
      
      private var var_1866:Boolean;
      
      private var var_1944:int;
      
      private var var_1382:String;
      
      private var var_2053:Boolean = false;
      
      private var var_1867:int;
      
      private var var_443:int;
      
      private var var_978:String;
      
      private var var_1862:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1294:int;
      
      private var var_1864:Boolean;
      
      private var var_2052:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1861 = param1;
         var_978 = param2;
         _objId = param3;
         var_1294 = param4;
         var_1382 = param5;
         var_1866 = param6;
         var_1864 = param7;
         var_1867 = param8;
         var_1862 = param9;
         var_1944 = param10;
         var_443 = -1;
      }
      
      public function get songId() : int
      {
         return var_1944;
      }
      
      public function get iconCallbackId() : int
      {
         return var_443;
      }
      
      public function get expiryTime() : int
      {
         return var_1867;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2052 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2053 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_443 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1864;
      }
      
      public function get slotId() : String
      {
         return var_1862;
      }
      
      public function get classId() : int
      {
         return var_1294;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1866;
      }
      
      public function get stuffData() : String
      {
         return var_1382;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1861;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2053;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2052;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_978;
      }
   }
}
