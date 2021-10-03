package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1213:String = "F";
      
      public static const const_879:String = "M";
       
      
      private var var_83:Number = 0;
      
      private var var_609:String = "";
      
      private var var_2085:int = 0;
      
      private var var_2023:String = "";
      
      private var var_2021:int = 0;
      
      private var var_2022:int = 0;
      
      private var var_2024:String = "";
      
      private var var_1329:String = "";
      
      private var _id:int = 0;
      
      private var var_197:Boolean = false;
      
      private var var_233:int = 0;
      
      private var var_2084:String = "";
      
      private var _name:String = "";
      
      private var var_2020:int = 0;
      
      private var _y:Number = 0;
      
      private var var_84:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_84;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_233;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_197)
         {
            var_233 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_197)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2085;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_197)
         {
            var_2021 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2084;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_197)
         {
            var_2024 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_197)
         {
            var_2084 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_197)
         {
            var_2022 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_197)
         {
            var_609 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_197)
         {
            var_2085 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_197)
         {
            var_1329 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_2021;
      }
      
      public function get groupID() : String
      {
         return var_2024;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_197)
         {
            var_2020 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_197)
         {
            var_2023 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_197 = true;
      }
      
      public function get sex() : String
      {
         return var_1329;
      }
      
      public function get figure() : String
      {
         return var_609;
      }
      
      public function get webID() : int
      {
         return var_2020;
      }
      
      public function get custom() : String
      {
         return var_2023;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_197)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_197)
         {
            var_84 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_197)
         {
            var_83 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_83;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_2022;
      }
   }
}
