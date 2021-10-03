package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1629:int;
      
      private var var_1628:Boolean;
      
      private var _offerId:int;
      
      private var var_1627:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1628 = param1.readBoolean();
         var_1629 = param1.readInteger();
         var_1627 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1627;
      }
      
      public function get monthsRequired() : int
      {
         return var_1629;
      }
      
      public function get isVip() : Boolean
      {
         return var_1628;
      }
      
      public function get method_2() : int
      {
         return _offerId;
      }
   }
}
