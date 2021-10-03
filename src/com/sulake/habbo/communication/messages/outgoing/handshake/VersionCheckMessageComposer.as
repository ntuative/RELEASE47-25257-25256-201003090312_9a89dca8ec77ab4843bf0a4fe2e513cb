package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2211:String;
      
      private var var_1145:String;
      
      private var var_2212:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_2212 = param1;
         var_1145 = param2;
         var_2211 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2212,var_1145,var_2211];
      }
      
      public function dispose() : void
      {
      }
   }
}
