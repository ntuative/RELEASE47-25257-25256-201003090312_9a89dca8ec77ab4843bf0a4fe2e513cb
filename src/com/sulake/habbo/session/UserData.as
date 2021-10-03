package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_609:String = "";
      
      private var var_2023:String = "";
      
      private var var_2021:int = 0;
      
      private var var_2022:int = 0;
      
      private var _type:int = 0;
      
      private var var_2024:String = "";
      
      private var var_1329:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_2020:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_2021 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_2024 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_609 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_1329 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_2021;
      }
      
      public function set webID(param1:int) : void
      {
         var_2020 = param1;
      }
      
      public function get groupID() : String
      {
         return var_2024;
      }
      
      public function set custom(param1:String) : void
      {
         var_2023 = param1;
      }
      
      public function get figure() : String
      {
         return var_609;
      }
      
      public function get sex() : String
      {
         return var_1329;
      }
      
      public function get custom() : String
      {
         return var_2023;
      }
      
      public function get webID() : int
      {
         return var_2020;
      }
      
      public function set xp(param1:int) : void
      {
         var_2022 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_2022;
      }
   }
}
