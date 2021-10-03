package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1520:int = 9;
      
      public static const const_1609:int = 4;
      
      public static const const_1462:int = 1;
      
      public static const const_1348:int = 10;
      
      public static const const_1527:int = 2;
      
      public static const const_1242:int = 7;
      
      public static const const_1355:int = 11;
      
      public static const const_1453:int = 3;
      
      public static const const_1214:int = 8;
      
      public static const const_1247:int = 5;
      
      public static const const_1482:int = 6;
      
      public static const const_1342:int = 12;
       
      
      private var var_2223:String;
      
      private var _roomId:int;
      
      private var var_1127:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2223;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1127 = param1.readInteger();
         var_2223 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1127;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
