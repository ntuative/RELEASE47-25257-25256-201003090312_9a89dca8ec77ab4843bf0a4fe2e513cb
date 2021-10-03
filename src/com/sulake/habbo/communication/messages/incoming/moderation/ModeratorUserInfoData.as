package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_1679:int;
      
      private var var_1678:int;
      
      private var var_1680:int;
      
      private var _userName:String;
      
      private var var_1682:int;
      
      private var var_1683:int;
      
      private var var_1681:int;
      
      private var _userId:int;
      
      private var var_715:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_1683 = param1.readInteger();
         var_1682 = param1.readInteger();
         var_715 = param1.readBoolean();
         var_1680 = param1.readInteger();
         var_1678 = param1.readInteger();
         var_1679 = param1.readInteger();
         var_1681 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_1681;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_715;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_1682;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_1678;
      }
      
      public function get cautionCount() : int
      {
         return var_1679;
      }
      
      public function get cfhCount() : int
      {
         return var_1680;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_1683;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
