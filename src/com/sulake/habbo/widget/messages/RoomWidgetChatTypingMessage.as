package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_714:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_526:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_714);
         var_526 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_526;
      }
   }
}
