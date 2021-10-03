package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_656:int = -1;
      
      public static const const_806:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_1983:int = -1;
      
      private var var_83:int = 0;
      
      private var var_1259:int = 1;
      
      private var var_846:int = 1;
      
      private var var_1981:Boolean = false;
      
      private var var_1982:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_83 = param2;
         _y = param3;
         var_1981 = param5;
         if(param4 < 0)
         {
            param4 = const_656;
         }
         var_846 = param4;
         var_1259 = param4;
         if(param6 >= 0)
         {
            var_1983 = param6;
            var_1982 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_846 > 0 && param1 > var_846)
         {
            param1 = var_846;
         }
         var_1259 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_846;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_1982;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_846 < 0)
         {
            return const_656;
         }
         return var_1259;
      }
      
      public function get activeSequence() : int
      {
         return var_1983;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_1981;
      }
      
      public function get x() : int
      {
         return var_83;
      }
   }
}
