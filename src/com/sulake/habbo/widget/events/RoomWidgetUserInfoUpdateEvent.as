package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_191:String = "RWUIUE_PEER";
      
      public static const const_208:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1327:String = "BOT";
      
      public static const const_881:int = 2;
      
      public static const const_1300:int = 0;
      
      public static const const_1014:int = 3;
       
      
      private var var_1212:String = "";
      
      private var var_2240:Boolean = false;
      
      private var var_2022:int = 0;
      
      private var var_1938:int = 0;
      
      private var var_2241:Boolean = false;
      
      private var var_1213:String = "";
      
      private var var_2239:Boolean = false;
      
      private var var_761:int = 0;
      
      private var var_2242:Boolean = true;
      
      private var var_968:int = 0;
      
      private var var_2234:Boolean = false;
      
      private var var_1270:Boolean = false;
      
      private var var_2235:Boolean = false;
      
      private var var_1937:int = 0;
      
      private var var_2237:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_256:Array;
      
      private var var_1271:Boolean = false;
      
      private var _name:String = "";
      
      private var var_2020:int = 0;
      
      private var var_2236:Boolean = false;
      
      private var var_2238:int = 0;
      
      private var var_1939:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_256 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1938;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1938 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_2240;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_2242;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_2242 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_2239 = param1;
      }
      
      public function get motto() : String
      {
         return var_1212;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_2234 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1270;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1212 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_2236;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1939;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1270 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_2237;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1937 = param1;
      }
      
      public function get badges() : Array
      {
         return var_256;
      }
      
      public function get amIController() : Boolean
      {
         return var_2241;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_2241 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_2236 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_2238 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1939 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1213 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_2239;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_2234;
      }
      
      public function get carryItem() : int
      {
         return var_1937;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1271;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1271 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_761 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_2238;
      }
      
      public function get realName() : String
      {
         return var_1213;
      }
      
      public function set webID(param1:int) : void
      {
         var_2020 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_256 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_2235 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_2237 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_761;
      }
      
      public function get webID() : int
      {
         return var_2020;
      }
      
      public function set groupId(param1:int) : void
      {
         var_968 = param1;
      }
      
      public function get xp() : int
      {
         return var_2022;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_2240 = param1;
      }
      
      public function get groupId() : int
      {
         return var_968;
      }
      
      public function get canTrade() : Boolean
      {
         return var_2235;
      }
      
      public function set xp(param1:int) : void
      {
         var_2022 = param1;
      }
   }
}
