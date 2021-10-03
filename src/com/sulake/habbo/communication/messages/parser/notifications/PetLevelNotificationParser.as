package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_609:String;
      
      private var var_1731:int;
      
      private var var_2060:String;
      
      private var var_1079:int;
      
      private var var_1282:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1282;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1282 = param1.readInteger();
         var_2060 = param1.readString();
         var_1731 = param1.readInteger();
         var_609 = param1.readString();
         var_1079 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_2060;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_609;
      }
      
      public function get petType() : int
      {
         return var_1079;
      }
      
      public function get level() : int
      {
         return var_1731;
      }
   }
}
