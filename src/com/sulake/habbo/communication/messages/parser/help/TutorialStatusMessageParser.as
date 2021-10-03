package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1063:Boolean;
      
      private var var_1061:Boolean;
      
      private var var_1062:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_1063;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_1061;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1062 = param1.readBoolean();
         var_1061 = param1.readBoolean();
         var_1063 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_1062;
      }
      
      public function flush() : Boolean
      {
         var_1062 = false;
         var_1061 = false;
         var_1063 = false;
         return true;
      }
   }
}
