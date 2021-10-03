package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1236:int;
      
      private var var_963:String;
      
      private var var_672:Array;
      
      private var var_997:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_672.slice();
      }
      
      public function flush() : Boolean
      {
         var_963 = "";
         var_997 = [];
         var_672 = [];
         var_1236 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1236;
      }
      
      public function get question() : String
      {
         return var_963;
      }
      
      public function get choices() : Array
      {
         return var_997.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_963 = param1.readString();
         var_997 = [];
         var_672 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_997.push(param1.readString());
            var_672.push(param1.readInteger());
            _loc3_++;
         }
         var_1236 = param1.readInteger();
         return true;
      }
   }
}
