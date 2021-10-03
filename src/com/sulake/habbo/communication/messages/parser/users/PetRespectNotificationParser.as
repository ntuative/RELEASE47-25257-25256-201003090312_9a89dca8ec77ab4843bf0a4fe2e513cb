package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1835:int;
      
      private var var_1115:PetData;
      
      private var var_2215:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1835;
      }
      
      public function get petData() : PetData
      {
         return var_1115;
      }
      
      public function flush() : Boolean
      {
         var_1115 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_2215;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1835 = param1.readInteger();
         var_2215 = param1.readInteger();
         var_1115 = new PetData(param1);
         return true;
      }
   }
}
