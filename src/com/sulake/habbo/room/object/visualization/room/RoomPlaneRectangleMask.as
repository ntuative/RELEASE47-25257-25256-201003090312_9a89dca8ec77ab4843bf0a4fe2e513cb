package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1965:Number = 0;
      
      private var var_1648:Number = 0;
      
      private var var_1647:Number = 0;
      
      private var var_1966:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1648 = param1;
         var_1647 = param2;
         var_1965 = param3;
         var_1966 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1648;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1965;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1647;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1966;
      }
   }
}
