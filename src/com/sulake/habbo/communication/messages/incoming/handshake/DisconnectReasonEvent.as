package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1269:String = "DisconnectReasonPeerConnectionLost";
      
      public static const const_1013:String = "DisconnectReasonTimeout";
      
      public static const const_580:String = "DisconnectReasonDisconnected";
      
      public static const const_289:String = "DisconnectReasonBanned";
      
      public static const const_789:String = "DisconnectReasonLoggedOut";
      
      public static const const_844:String = "DisconnectReasonConcurrentLogin";
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : String
      {
         var _loc1_:int = (this.var_6 as DisconnectReasonParser).reason;
         switch(_loc1_)
         {
            case -1:
               return const_580;
            case 0:
               return const_580;
            case 1:
               return const_789;
            case 1009:
            case 2:
               return const_844;
            case 3:
               return const_1013;
            case 4:
               return const_1269;
            default:
               return const_580;
         }
      }
   }
}
