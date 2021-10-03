package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_143:int = 1;
      
      public static const const_1371:int = 3;
      
      public static const const_431:int = 2;
       
      
      private var var_1886:int;
      
      private var var_1887:int;
      
      private var var_1885:int;
      
      private var var_1884:int;
      
      private var var_36:int;
      
      private var var_400:int;
      
      private var var_1237:int;
      
      private var var_1889:int;
      
      private var var_1032:int;
      
      private var _roomResources:String;
      
      private var var_1646:int;
      
      private var var_1881:int;
      
      private var var_1888:String;
      
      private var var_1880:String;
      
      private var var_1878:int = 0;
      
      private var var_1290:String;
      
      private var _message:String;
      
      private var var_1879:int;
      
      private var var_1882:String;
      
      private var var_1211:int;
      
      private var var_740:String;
      
      private var var_1883:String;
      
      private var var_1462:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1032 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_1878 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_1881;
      }
      
      public function set roomName(param1:String) : void
      {
         var_740 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1646 = param1;
      }
      
      public function get state() : int
      {
         return var_36;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_740;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1884 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_36 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1887;
      }
      
      public function get priority() : int
      {
         return var_1886 + var_1878;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1889 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1880;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1462) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1211;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_1881 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1237;
      }
      
      public function set flatType(param1:String) : void
      {
         var_1888 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1646;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1884;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_1883 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1290 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1889;
      }
      
      public function set priority(param1:int) : void
      {
         var_1886 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1887 = param1;
      }
      
      public function get flatType() : String
      {
         return var_1888;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_1885 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1880 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1879 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1290;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1237 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_1885;
      }
      
      public function set flatId(param1:int) : void
      {
         var_400 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1211 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1462 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1879;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_1882 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1462;
      }
      
      public function get reportedUserId() : int
      {
         return var_1032;
      }
      
      public function get flatId() : int
      {
         return var_400;
      }
      
      public function get flatOwnerName() : String
      {
         return var_1883;
      }
      
      public function get reporterUserName() : String
      {
         return var_1882;
      }
   }
}
