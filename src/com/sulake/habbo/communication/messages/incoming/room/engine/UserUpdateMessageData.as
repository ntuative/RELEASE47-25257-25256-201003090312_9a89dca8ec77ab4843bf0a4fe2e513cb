package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_84:Number = 0;
      
      private var var_233:int = 0;
      
      private var var_1684:int = 0;
      
      private var var_1686:Number = 0;
      
      private var var_1687:Number = 0;
      
      private var var_1688:Number = 0;
      
      private var var_1689:Number = 0;
      
      private var var_1685:Boolean = false;
      
      private var var_83:Number = 0;
      
      private var _id:int = 0;
      
      private var var_203:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_203 = [];
         super();
         _id = param1;
         var_83 = param2;
         _y = param3;
         var_84 = param4;
         var_1689 = param5;
         var_233 = param6;
         var_1684 = param7;
         var_1686 = param8;
         var_1687 = param9;
         var_1688 = param10;
         var_1685 = param11;
         var_203 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_84;
      }
      
      public function get dir() : int
      {
         return var_233;
      }
      
      public function get localZ() : Number
      {
         return var_1689;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1685;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1684;
      }
      
      public function get targetX() : Number
      {
         return var_1686;
      }
      
      public function get targetY() : Number
      {
         return var_1687;
      }
      
      public function get targetZ() : Number
      {
         return var_1688;
      }
      
      public function get x() : Number
      {
         return var_83;
      }
      
      public function get actions() : Array
      {
         return var_203.slice();
      }
   }
}
