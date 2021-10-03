package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1871:int;
      
      private var var_2134:String;
      
      private var var_2136:int;
      
      private var var_2133:int;
      
      private var var_659:Boolean;
      
      private var var_1639:Boolean;
      
      private var var_400:int;
      
      private var var_1121:String;
      
      private var var_1636:int;
      
      private var var_1211:int;
      
      private var _ownerName:String;
      
      private var var_740:String;
      
      private var var_2135:int;
      
      private var var_2132:RoomThumbnailData;
      
      private var var_1972:Boolean;
      
      private var var_618:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_618 = new Array();
         super();
         var_400 = param1.readInteger();
         var_659 = param1.readBoolean();
         var_740 = param1.readString();
         _ownerName = param1.readString();
         var_1636 = param1.readInteger();
         var_1871 = param1.readInteger();
         var_2135 = param1.readInteger();
         var_1121 = param1.readString();
         var_2136 = param1.readInteger();
         var_1972 = param1.readBoolean();
         var_2133 = param1.readInteger();
         var_1211 = param1.readInteger();
         var_2134 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_618.push(_loc4_);
            _loc3_++;
         }
         var_2132 = new RoomThumbnailData(param1);
         var_1639 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2135;
      }
      
      public function get roomName() : String
      {
         return var_740;
      }
      
      public function get userCount() : int
      {
         return var_1871;
      }
      
      public function get score() : int
      {
         return var_2133;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2134;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1972;
      }
      
      public function get tags() : Array
      {
         return var_618;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1639;
      }
      
      public function get event() : Boolean
      {
         return var_659;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_618 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1211;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2136;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2132;
      }
      
      public function get doorMode() : int
      {
         return var_1636;
      }
      
      public function get flatId() : int
      {
         return var_400;
      }
      
      public function get description() : String
      {
         return var_1121;
      }
   }
}
