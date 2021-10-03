package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_954:String = "inventory_badges";
      
      public static const const_1324:String = "inventory_clothes";
      
      public static const const_1343:String = "inventory_furniture";
      
      public static const const_660:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_863:String = "inventory_effects";
       
      
      private var var_1857:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_660);
         var_1857 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1857;
      }
   }
}
