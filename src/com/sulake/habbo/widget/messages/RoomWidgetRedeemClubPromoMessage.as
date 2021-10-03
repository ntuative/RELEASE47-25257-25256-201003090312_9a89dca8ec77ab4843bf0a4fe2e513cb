package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRedeemClubPromoMessage extends RoomWidgetMessage
   {
      
      public static const const_657:String = "rwrcp_redeem_club_promo";
       
      
      private var var_1769:String;
      
      private var var_1770:Boolean;
      
      public function RoomWidgetRedeemClubPromoMessage(param1:String, param2:String, param3:Boolean)
      {
         super(param1);
         var_1769 = param2;
         var_1770 = param3;
      }
      
      public function get code() : String
      {
         return var_1769;
      }
      
      public function get isTrial() : Boolean
      {
         return var_1770;
      }
   }
}
