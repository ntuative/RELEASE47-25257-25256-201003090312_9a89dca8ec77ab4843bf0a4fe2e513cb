package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class GenerateSecretKeyMessageComposer implements IMessageComposer
   {
       
      
      private var var_1649:String;
      
      public function GenerateSecretKeyMessageComposer(param1:String)
      {
         super();
         var_1649 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1649];
      }
      
      public function dispose() : void
      {
      }
   }
}
