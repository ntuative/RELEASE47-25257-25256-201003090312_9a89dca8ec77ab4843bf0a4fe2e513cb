package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1944:int;
      
      private var var_1946:int = 0;
      
      private var var_1942:String;
      
      private var var_1945:int;
      
      private var var_1943:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1944 = param1;
         var_1945 = param2;
         var_1943 = param3;
         var_1942 = param4;
      }
      
      public function get length() : int
      {
         return var_1945;
      }
      
      public function get name() : String
      {
         return var_1943;
      }
      
      public function get creator() : String
      {
         return var_1942;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1946;
      }
      
      public function get id() : int
      {
         return var_1944;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1946 = param1;
      }
   }
}
