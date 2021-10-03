package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1887:int;
      
      private var var_2043:String;
      
      private var var_1884:int;
      
      private var _disposed:Boolean;
      
      private var var_2044:int;
      
      private var var_2042:String;
      
      private var var_1155:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_2042 = param1.readString();
         var_1887 = param1.readInteger();
         var_1884 = param1.readInteger();
         var_2043 = param1.readString();
         var_2044 = param1.readInteger();
         var_1155 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_2044;
      }
      
      public function get worldId() : int
      {
         return var_1884;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_2042;
      }
      
      public function get unitPort() : int
      {
         return var_1887;
      }
      
      public function get castLibs() : String
      {
         return var_2043;
      }
      
      public function get nodeId() : int
      {
         return var_1155;
      }
   }
}
