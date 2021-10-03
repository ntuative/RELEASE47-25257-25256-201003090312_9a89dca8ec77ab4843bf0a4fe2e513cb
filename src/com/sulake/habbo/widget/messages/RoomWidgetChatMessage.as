package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_123:int = 0;
      
      public static const const_129:int = 1;
      
      public static const const_101:int = 2;
      
      public static const const_547:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1331:int = 0;
      
      private var var_1760:String = "";
      
      private var var_200:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_200 = param2;
         var_1331 = param3;
         var_1760 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1760;
      }
      
      public function get chatType() : int
      {
         return var_1331;
      }
      
      public function get text() : String
      {
         return var_200;
      }
   }
}
