package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_505:int = 2;
      
      public static const const_978:int = 6;
      
      public static const const_688:int = 1;
      
      public static const const_590:int = 3;
      
      public static const const_950:int = 4;
      
      public static const const_643:int = 5;
       
      
      private var var_2233:String;
      
      private var var_1071:int;
      
      private var var_2201:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_1071 = param2;
         var_2201 = param3;
         var_2233 = param4;
      }
      
      public function get time() : String
      {
         return var_2233;
      }
      
      public function get senderId() : int
      {
         return var_1071;
      }
      
      public function get messageText() : String
      {
         return var_2201;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
