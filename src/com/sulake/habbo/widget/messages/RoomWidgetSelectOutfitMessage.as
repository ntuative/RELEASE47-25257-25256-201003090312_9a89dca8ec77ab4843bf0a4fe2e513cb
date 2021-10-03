package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_987:String = "select_outfit";
       
      
      private var var_1837:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_987);
         var_1837 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_1837;
      }
   }
}
