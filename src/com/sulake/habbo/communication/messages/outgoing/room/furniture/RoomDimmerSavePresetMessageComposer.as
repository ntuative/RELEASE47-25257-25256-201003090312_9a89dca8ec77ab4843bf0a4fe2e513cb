package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1652:int;
      
      private var var_1650:int;
      
      private var var_1875:Boolean;
      
      private var var_1874:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1873:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1650 = param1;
         var_1652 = param2;
         var_1874 = param3;
         var_1873 = param4;
         var_1875 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1650,var_1652,var_1874,var_1873,int(var_1875)];
      }
      
      public function dispose() : void
      {
      }
   }
}
