package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_120:DisplayObject;
      
      private var var_2292:uint;
      
      private var var_792:IWindowToolTipAgentService;
      
      private var var_791:IWindowMouseScalingService;
      
      private var var_211:IWindowContext;
      
      private var var_794:IWindowFocusManagerService;
      
      private var var_793:IWindowMouseListenerService;
      
      private var var_795:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2292 = 0;
         var_120 = param2;
         var_211 = param1;
         var_795 = new WindowMouseDragger(param2);
         var_791 = new WindowMouseScaler(param2);
         var_793 = new WindowMouseListener(param2);
         var_794 = new FocusManager(param2);
         var_792 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_791;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_794;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_792;
      }
      
      public function dispose() : void
      {
         if(var_795 != null)
         {
            var_795.dispose();
            var_795 = null;
         }
         if(var_791 != null)
         {
            var_791.dispose();
            var_791 = null;
         }
         if(var_793 != null)
         {
            var_793.dispose();
            var_793 = null;
         }
         if(var_794 != null)
         {
            var_794.dispose();
            var_794 = null;
         }
         if(var_792 != null)
         {
            var_792.dispose();
            var_792 = null;
         }
         var_211 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_793;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_795;
      }
   }
}
