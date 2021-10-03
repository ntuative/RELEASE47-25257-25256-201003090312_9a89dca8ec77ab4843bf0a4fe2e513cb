package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1001:int = 0;
      
      private var var_1220:int = 0;
      
      private var var_1906:String = "";
      
      private var var_1002:int = 0;
      
      private var var_1905:String = "";
      
      private var var_1908:int = 0;
      
      private var var_1491:String = "";
      
      private var var_1907:int = 0;
      
      private var var_1904:int = 0;
      
      private var var_1910:String = "";
      
      private var var_1909:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1907 = param1;
         var_1910 = param2;
         var_1491 = param3;
         var_1906 = param4;
         var_1905 = param5;
         if(param6)
         {
            var_1220 = 1;
         }
         else
         {
            var_1220 = 0;
         }
         var_1908 = param7;
         var_1904 = param8;
         var_1002 = param9;
         var_1909 = param10;
         var_1001 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1907,var_1910,var_1491,var_1906,var_1905,var_1220,var_1908,var_1904,var_1002,var_1909,var_1001];
      }
      
      public function dispose() : void
      {
      }
   }
}
