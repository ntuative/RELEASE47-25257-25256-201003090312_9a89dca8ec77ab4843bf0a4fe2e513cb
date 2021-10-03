package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1393:int = 4;
      
      public static const const_550:int = 3;
      
      public static const const_695:int = 2;
      
      public static const const_858:int = 1;
       
      
      private var var_2150:String;
      
      private var _disposed:Boolean;
      
      private var var_1871:int;
      
      private var var_2149:Boolean;
      
      private var var_921:String;
      
      private var var_895:PublicRoomData;
      
      private var var_2148:int;
      
      private var _index:int;
      
      private var var_2152:String;
      
      private var _type:int;
      
      private var var_1604:String;
      
      private var var_894:GuestRoomData;
      
      private var var_2151:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_2150 = param1.readString();
         var_2151 = param1.readString();
         var_2149 = param1.readInteger() == 1;
         var_2152 = param1.readString();
         var_921 = param1.readString();
         var_2148 = param1.readInteger();
         var_1871 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_858)
         {
            var_1604 = param1.readString();
         }
         else if(_type == const_550)
         {
            var_895 = new PublicRoomData(param1);
         }
         else if(_type == const_695)
         {
            var_894 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_2148;
      }
      
      public function get popupCaption() : String
      {
         return var_2150;
      }
      
      public function get userCount() : int
      {
         return var_1871;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_2149;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_858)
         {
            return 0;
         }
         if(this.type == const_695)
         {
            return this.var_894.maxUserCount;
         }
         if(this.type == const_550)
         {
            return this.var_895.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_2151;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_894 != null)
         {
            this.var_894.dispose();
            this.var_894 = null;
         }
         if(this.var_895 != null)
         {
            this.var_895.dispose();
            this.var_895 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_894;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_2152;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_895;
      }
      
      public function get picRef() : String
      {
         return var_921;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1604;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
