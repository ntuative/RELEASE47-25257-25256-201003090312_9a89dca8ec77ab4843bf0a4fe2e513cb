package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_109:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1871:int;
      
      private var var_400:int;
      
      private var var_659:RoomData;
      
      private var var_1729:int;
      
      private var _ownerName:String;
      
      private var var_2123:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_400 = param1.readInteger();
         var_1871 = param1.readInteger();
         var_2123 = param1.readBoolean();
         var_1729 = param1.readInteger();
         _ownerName = param1.readString();
         var_109 = new RoomData(param1);
         var_659 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1871;
      }
      
      public function get event() : RoomData
      {
         return var_659;
      }
      
      public function get room() : RoomData
      {
         return var_109;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_109 != null)
         {
            var_109.dispose();
            var_109 = null;
         }
         if(var_659 != null)
         {
            var_659.dispose();
            var_659 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_400;
      }
      
      public function get ownerId() : int
      {
         return var_1729;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_2123;
      }
   }
}
