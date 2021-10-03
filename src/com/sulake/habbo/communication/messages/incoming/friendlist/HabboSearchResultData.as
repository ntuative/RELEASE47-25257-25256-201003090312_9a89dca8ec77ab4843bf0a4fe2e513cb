package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2316:Boolean;
      
      private var var_2313:int;
      
      private var var_2314:Boolean;
      
      private var var_1523:String;
      
      private var var_1213:String;
      
      private var var_1666:int;
      
      private var var_2062:String;
      
      private var var_2315:String;
      
      private var var_2063:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1666 = param1.readInteger();
         this.var_1523 = param1.readString();
         this.var_2062 = param1.readString();
         this.var_2316 = param1.readBoolean();
         this.var_2314 = param1.readBoolean();
         param1.readString();
         this.var_2313 = param1.readInteger();
         this.var_2063 = param1.readString();
         this.var_2315 = param1.readString();
         this.var_1213 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1213;
      }
      
      public function get avatarName() : String
      {
         return this.var_1523;
      }
      
      public function get avatarId() : int
      {
         return this.var_1666;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2316;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2315;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2063;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2314;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2062;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2313;
      }
   }
}
