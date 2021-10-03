package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_426:uint;
      
      private var var_1065:IUnknown;
      
      private var var_1326:String;
      
      private var var_1066:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1066 = param1;
         var_1326 = getQualifiedClassName(var_1066);
         var_1065 = param2;
         var_426 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1066;
      }
      
      public function get disposed() : Boolean
      {
         return var_1065 == null;
      }
      
      public function get references() : uint
      {
         return var_426;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_426) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1065;
      }
      
      public function get iis() : String
      {
         return var_1326;
      }
      
      public function reserve() : uint
      {
         return ++var_426;
      }
      
      public function dispose() : void
      {
         var_1066 = null;
         var_1326 = null;
         var_1065 = null;
         var_426 = 0;
      }
   }
}
