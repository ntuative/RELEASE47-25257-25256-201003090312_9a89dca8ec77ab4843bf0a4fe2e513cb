package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_874:LegacyWallGeometry = null;
      
      private var var_593:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_595:TileHeightMap = null;
      
      private var var_2098:String = null;
      
      private var _roomId:int = 0;
      
      private var var_594:SelectedRoomObjectData = null;
      
      private var var_875:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_874 = new LegacyWallGeometry();
         var_875 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_593 != null)
         {
            var_593.dispose();
         }
         var_593 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_595 != null)
         {
            var_595.dispose();
         }
         var_595 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_2098 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_874;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_594;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_875;
      }
      
      public function dispose() : void
      {
         if(var_595 != null)
         {
            var_595.dispose();
            var_595 = null;
         }
         if(var_874 != null)
         {
            var_874.dispose();
            var_874 = null;
         }
         if(var_875 != null)
         {
            var_875.dispose();
            var_875 = null;
         }
         if(var_593 != null)
         {
            var_593.dispose();
            var_593 = null;
         }
         if(var_594 != null)
         {
            var_594.dispose();
            var_594 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_595;
      }
      
      public function get worldType() : String
      {
         return var_2098;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_594 != null)
         {
            var_594.dispose();
         }
         var_594 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_593;
      }
   }
}
