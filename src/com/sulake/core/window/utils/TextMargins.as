package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   
   public class TextMargins implements IMargins, IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_782:int;
      
      private var _right:int;
      
      private var var_783:int;
      
      private var var_781:int;
      
      private var var_180:Function;
      
      public function TextMargins(param1:int, param2:int, param3:int, param4:int, param5:Function)
      {
         super();
         var_783 = param1;
         var_781 = param2;
         _right = param3;
         var_782 = param4;
         var_180 = param5 != null ? param5 : nullCallback;
      }
      
      public function set bottom(param1:int) : void
      {
         var_782 = param1;
         var_180(this);
      }
      
      public function get left() : int
      {
         return var_783;
      }
      
      public function get isZeroes() : Boolean
      {
         return var_783 == 0 && _right == 0 && var_781 == 0 && var_782 == 0;
      }
      
      public function get right() : int
      {
         return _right;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set top(param1:int) : void
      {
         var_781 = param1;
         var_180(this);
      }
      
      public function get top() : int
      {
         return var_781;
      }
      
      public function set left(param1:int) : void
      {
         var_783 = param1;
         var_180(this);
      }
      
      public function get bottom() : int
      {
         return var_782;
      }
      
      public function clone(param1:Function) : TextMargins
      {
         return new TextMargins(var_783,var_781,_right,var_782,param1);
      }
      
      public function dispose() : void
      {
         var_180 = null;
         _disposed = true;
      }
      
      public function set right(param1:int) : void
      {
         _right = param1;
         var_180(this);
      }
      
      private function nullCallback(param1:IMargins) : void
      {
      }
   }
}
