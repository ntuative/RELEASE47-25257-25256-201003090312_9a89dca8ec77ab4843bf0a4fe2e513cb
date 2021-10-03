package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1487:int = 2;
      
      public static const const_289:int = 4;
      
      public static const const_1332:int = 1;
      
      public static const const_1376:int = 3;
       
      
      private var var_1064:int = 0;
      
      private var var_900:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1064;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1064 = param1.readInteger();
         if(var_1064 == 3)
         {
            var_900 = param1.readString();
         }
         else
         {
            var_900 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1064 = 0;
         var_900 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_900;
      }
   }
}
