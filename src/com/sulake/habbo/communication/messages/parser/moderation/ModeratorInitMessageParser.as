package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_1717:Boolean;
      
      private var var_1408:Array;
      
      private var var_1711:Boolean;
      
      private var var_1713:Boolean;
      
      private var var_1715:Boolean;
      
      private var var_153:Array;
      
      private var var_1712:Boolean;
      
      private var var_1716:Boolean;
      
      private var var_1409:Array;
      
      private var var_1714:Boolean;
      
      private var var_1718:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_1718;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_1717;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_1711;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_1712;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_1716;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1408;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_153 = [];
         var_1408 = [];
         _roomMessageTemplates = [];
         var_1409 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_153.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1408.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1409.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_1712 = param1.readBoolean();
         var_1715 = param1.readBoolean();
         var_1711 = param1.readBoolean();
         var_1713 = param1.readBoolean();
         var_1718 = param1.readBoolean();
         var_1716 = param1.readBoolean();
         var_1717 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_1714 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_1713;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1409;
      }
      
      public function get issues() : Array
      {
         return var_153;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_1714;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_1715;
      }
   }
}
