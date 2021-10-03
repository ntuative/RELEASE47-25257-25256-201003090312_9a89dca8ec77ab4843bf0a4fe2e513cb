package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1453:String;
      
      private var var_1530:String;
      
      private var var_1078:String;
      
      private var var_435:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1453 = String(param1.@align);
         var_1078 = String(param1.@base);
         var_1530 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_435 = Number(_loc2_);
            if(var_435 > 1)
            {
               var_435 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1453;
      }
      
      public function get ink() : String
      {
         return var_1530;
      }
      
      public function get base() : String
      {
         return var_1078;
      }
      
      public function get isBlended() : Boolean
      {
         return var_435 != 1;
      }
      
      public function get blend() : Number
      {
         return var_435;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
