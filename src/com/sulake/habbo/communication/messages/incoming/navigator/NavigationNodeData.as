package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1155:int;
      
      private var var_1565:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1155 = param1;
         var_1565 = param2;
         Logger.log("READ NODE: " + var_1155 + ", " + var_1565);
      }
      
      public function get nodeName() : String
      {
         return var_1565;
      }
      
      public function get nodeId() : int
      {
         return var_1155;
      }
   }
}
