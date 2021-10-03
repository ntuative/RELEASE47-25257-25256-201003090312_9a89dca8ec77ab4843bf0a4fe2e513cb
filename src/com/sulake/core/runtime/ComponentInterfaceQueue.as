package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1334:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_906:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1334 = param1;
         var_906 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_906;
      }
      
      public function get identifier() : IID
      {
         return var_1334;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1334 = null;
            while(false)
            {
               var_906.pop();
            }
            var_906 = null;
         }
      }
   }
}
