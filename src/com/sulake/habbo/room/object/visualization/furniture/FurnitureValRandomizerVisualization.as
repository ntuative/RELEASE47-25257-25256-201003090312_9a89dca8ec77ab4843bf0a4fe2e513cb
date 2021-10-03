package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1077:int = 31;
      
      private static const const_1031:int = 32;
      
      private static const const_489:int = 30;
      
      private static const const_765:int = 20;
      
      private static const const_488:int = 10;
       
      
      private var var_546:Boolean = false;
      
      private var var_229:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_229 = new Array();
         super();
         super.setAnimation(const_489);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_546 = true;
            var_229 = new Array();
            var_229.push(const_1077);
            var_229.push(const_1031);
            return;
         }
         if(param1 > 0 && param1 <= const_488)
         {
            if(var_546)
            {
               var_546 = false;
               var_229 = new Array();
               if(_direction == 2)
               {
                  var_229.push(const_765 + 5 - param1);
                  var_229.push(const_488 + 5 - param1);
               }
               else
               {
                  var_229.push(const_765 + param1);
                  var_229.push(const_488 + param1);
               }
               var_229.push(const_489);
               return;
            }
            super.setAnimation(const_489);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
