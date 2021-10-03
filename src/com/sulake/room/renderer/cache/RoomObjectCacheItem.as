package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_550:RoomObjectLocationCacheItem = null;
      
      private var var_170:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_550 = new RoomObjectLocationCacheItem(param1);
         var_170 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_550;
      }
      
      public function dispose() : void
      {
         if(var_550 != null)
         {
            var_550.dispose();
            var_550 = null;
         }
         if(var_170 != null)
         {
            var_170.dispose();
            var_170 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_170;
      }
   }
}
