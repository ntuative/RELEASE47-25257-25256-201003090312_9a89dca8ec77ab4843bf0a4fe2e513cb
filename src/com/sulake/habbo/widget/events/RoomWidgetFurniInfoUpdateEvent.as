package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetFurniInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_658:String = "RWFIUE_FURNI";
       
      
      private var var_1272:Boolean = false;
      
      private var _id:int = 0;
      
      private var var_1323:int = -1;
      
      private var var_1270:Boolean = false;
      
      private var var_1931:Boolean = false;
      
      private var _category:int = 0;
      
      private var var_2038:Boolean = false;
      
      private var var_2039:Boolean = false;
      
      private var _name:String = "";
      
      private var _image:BitmapData = null;
      
      private var var_1121:String = "";
      
      public function RoomWidgetFurniInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set isRoomController(param1:Boolean) : void
      {
         var_1272 = param1;
      }
      
      public function get description() : String
      {
         return var_1121;
      }
      
      public function set isStickie(param1:Boolean) : void
      {
         var_2038 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set isWallItem(param1:Boolean) : void
      {
         var_2039 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get isAnyRoomController() : Boolean
      {
         return var_1931;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get isWallItem() : Boolean
      {
         return var_2039;
      }
      
      public function get isRoomController() : Boolean
      {
         return var_1272;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function set expiration(param1:int) : void
      {
         var_1323 = param1;
      }
      
      public function get isStickie() : Boolean
      {
         return var_2038;
      }
      
      public function get expiration() : int
      {
         return var_1323;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1270 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1270;
      }
      
      public function set isAnyRoomController(param1:Boolean) : void
      {
         var_1931 = param1;
      }
      
      public function set id(param1:int) : void
      {
         _id = param1;
      }
      
      public function set category(param1:int) : void
      {
         _category = param1;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function set description(param1:String) : void
      {
         var_1121 = param1;
      }
   }
}
