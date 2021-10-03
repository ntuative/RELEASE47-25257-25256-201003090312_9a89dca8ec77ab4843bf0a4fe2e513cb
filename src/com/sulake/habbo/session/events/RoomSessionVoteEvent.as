package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_119:String = "RSPE_VOTE_RESULT";
      
      public static const const_114:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1236:int = 0;
      
      private var var_963:String = "";
      
      private var var_672:Array;
      
      private var var_997:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_997 = [];
         var_672 = [];
         super(param1,param2,param7,param8);
         var_963 = param3;
         var_997 = param4;
         var_672 = param5;
         if(var_672 == null)
         {
            var_672 = [];
         }
         var_1236 = param6;
      }
      
      public function get votes() : Array
      {
         return var_672.slice();
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
   }
}
