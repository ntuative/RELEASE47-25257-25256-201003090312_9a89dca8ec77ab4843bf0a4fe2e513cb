package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1038:int = 1;
      
      private static const const_1031:int = 3;
      
      private static const const_1039:int = 2;
      
      private static const const_1040:int = 15;
       
      
      private var var_784:int;
      
      private var var_229:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_229 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1039)
         {
            var_229 = new Array();
            var_229.push(const_1038);
            var_784 = const_1040;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_784 > 0)
         {
            --var_784;
         }
         if(var_784 == 0)
         {
            if(false)
            {
               super.setAnimation(var_229.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
