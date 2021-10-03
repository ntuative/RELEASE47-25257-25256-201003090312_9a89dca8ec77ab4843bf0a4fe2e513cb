package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_2214:String;
      
      private var var_960:String;
      
      private var var_1862:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1862 = param1.readInteger();
         var_2214 = param1.readString();
         var_960 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_960;
      }
      
      public function get figureString() : String
      {
         return var_2214;
      }
      
      public function get slotId() : int
      {
         return var_1862;
      }
   }
}
