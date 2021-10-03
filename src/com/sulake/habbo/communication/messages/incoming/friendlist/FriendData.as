package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_609:String;
      
      private var var_1214:String;
      
      private var var_1212:String;
      
      private var var_1211:int;
      
      private var var_960:int;
      
      private var var_1213:String;
      
      private var _name:String;
      
      private var var_1116:Boolean;
      
      private var var_715:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_960 = param1.readInteger();
         this.var_715 = param1.readBoolean();
         this.var_1116 = param1.readBoolean();
         this.var_609 = param1.readString();
         this.var_1211 = param1.readInteger();
         this.var_1212 = param1.readString();
         this.var_1214 = param1.readString();
         this.var_1213 = param1.readString();
      }
      
      public function get gender() : int
      {
         return var_960;
      }
      
      public function get realName() : String
      {
         return var_1213;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1212;
      }
      
      public function get categoryId() : int
      {
         return var_1211;
      }
      
      public function get online() : Boolean
      {
         return var_715;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1116;
      }
      
      public function get lastAccess() : String
      {
         return var_1214;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_609;
      }
   }
}
