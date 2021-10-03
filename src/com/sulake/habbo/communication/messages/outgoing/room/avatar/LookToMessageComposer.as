package com.sulake.habbo.communication.messages.outgoing.room.avatar
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LookToMessageComposer implements IMessageComposer
   {
       
      
      private var var_2064:int;
      
      private var var_2065:int;
      
      public function LookToMessageComposer(param1:int, param2:int)
      {
         super();
         var_2064 = param1;
         var_2065 = param2;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [var_2064,var_2065];
      }
   }
}
