package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1690:int;
      
      private var var_401:Boolean;
      
      private var var_1691:Boolean;
      
      private var var_775:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1691 = param1.readBoolean();
         if(var_1691)
         {
            var_1690 = param1.readInteger();
            var_401 = param1.readBoolean();
         }
         else
         {
            var_775 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_775 != null)
         {
            var_775.dispose();
            var_775 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1690;
      }
      
      public function get owner() : Boolean
      {
         return var_401;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1691;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_775;
      }
   }
}
