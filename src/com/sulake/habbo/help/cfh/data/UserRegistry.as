package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1118:int = 80;
       
      
      private var var_516:Map;
      
      private var var_740:String = "";
      
      private var var_1333:Array;
      
      public function UserRegistry()
      {
         var_516 = new Map();
         var_1333 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_516.getValue(var_1333.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_740;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_516.getValue(param1) != null)
         {
            var_516.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_740);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_740 == "")
         {
            var_1333.push(param1);
         }
         var_516.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_516;
      }
      
      public function unregisterRoom() : void
      {
         var_740 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_516.length > const_1118)
         {
            _loc1_ = var_516.getKey(0);
            var_516.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_740 = param1;
         if(var_740 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
