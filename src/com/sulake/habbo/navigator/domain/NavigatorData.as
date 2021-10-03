package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1404:int = 10;
       
      
      private var var_1399:NavigatorSettingsMessageParser;
      
      private var var_1128:int;
      
      private var var_1663:int;
      
      private var var_1661:Boolean;
      
      private var var_947:Array;
      
      private var var_770:Dictionary;
      
      private var var_948:Array;
      
      private var var_2285:int;
      
      private var var_1664:int;
      
      private var var_1666:int;
      
      private var var_1665:int;
      
      private var var_536:PublicRoomShortData;
      
      private var var_380:RoomEventData;
      
      private var var_123:MsgWithRequestId;
      
      private var var_1662:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1667:Boolean;
      
      private var var_183:GuestRoomData;
      
      private var var_633:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_947 = new Array();
         var_948 = new Array();
         var_770 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1663;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1667;
      }
      
      public function startLoading() : void
      {
         this.var_633 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1667 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_380 != null)
         {
            var_380.dispose();
         }
         var_380 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_123 != null && var_123 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_123 != null && var_123 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_123 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_183;
      }
      
      public function get allCategories() : Array
      {
         return var_947;
      }
      
      public function onRoomExit() : void
      {
         if(var_380 != null)
         {
            var_380.dispose();
            var_380 = null;
         }
         if(var_536 != null)
         {
            var_536.dispose();
            var_536 = null;
         }
         if(var_183 != null)
         {
            var_183.dispose();
            var_183 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_123 = param1;
         var_633 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1399;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_123 = param1;
         var_633 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_536 = null;
         var_183 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_536 = param1.publicSpace;
            var_380 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2285 = param1.limit;
         this.var_1128 = param1.favouriteRoomIds.length;
         this.var_770 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_770[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_123 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_536;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1661;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_123 = param1;
         var_633 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1666 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_183 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_633;
      }
      
      public function get visibleCategories() : Array
      {
         return var_948;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_947 = param1;
         var_948 = new Array();
         for each(_loc2_ in var_947)
         {
            if(_loc2_.visible)
            {
               var_948.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_1664;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1665;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1399 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_123 == null)
         {
            return;
         }
         var_123.dispose();
         var_123 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_380;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_770[param1] = !!param2 ? "yes" : null;
         var_1128 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_123 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1666;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_123 != null && var_123 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1661 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1664 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1662 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_183 != null)
         {
            var_183.dispose();
         }
         var_183 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_183 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1399.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1128 >= var_2285;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1665 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1662;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_183 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1663 = param1;
      }
   }
}
