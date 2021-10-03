package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_347:Number = 0.5;
      
      private static const const_784:int = 3;
      
      private static const const_1116:Number = 1;
       
      
      private var var_2181:Boolean = false;
      
      private var var_2183:Boolean = false;
      
      private var var_1068:int = 0;
      
      private var var_275:Vector3d = null;
      
      private var var_2177:int = 0;
      
      private var var_2184:int = 0;
      
      private var var_2185:Boolean = false;
      
      private var var_2180:int = -2;
      
      private var var_2176:Boolean = false;
      
      private var var_2179:int = 0;
      
      private var var_2182:int = -1;
      
      private var var_428:Vector3d = null;
      
      private var var_2178:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_2177;
      }
      
      public function get targetId() : int
      {
         return var_2182;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_2179 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_2177 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_2181 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_2182 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_2183 = param1;
      }
      
      public function dispose() : void
      {
         var_428 = null;
         var_275 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_428 == null)
         {
            var_428 = new Vector3d();
         }
         var_428.assign(param1);
         var_1068 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_2180;
      }
      
      public function get screenHt() : int
      {
         return var_2178;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_2184 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_275;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_2178 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_2179;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_2181;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_2183;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_428 != null && var_275 != null)
         {
            ++var_1068;
            _loc2_ = Vector3d.dif(var_428,var_275);
            if(_loc2_.length <= const_347)
            {
               var_275 = var_428;
               var_428 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_347 * (const_784 + 1))
               {
                  _loc2_.mul(const_347);
               }
               else if(var_1068 <= const_784)
               {
                  _loc2_.mul(const_347);
               }
               else
               {
                  _loc2_.mul(const_1116);
               }
               var_275 = Vector3d.sum(var_275,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_2185 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_2184;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2176 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_2180 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_275 != null)
         {
            return;
         }
         var_275 = new Vector3d();
         var_275.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_2185;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2176;
      }
   }
}
