package com.sulake.habbo.navigator
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class AlertView implements IDisposable
   {
      
      private static var var_1486:Dictionary = new Dictionary();
       
      
      private var _disposed:Boolean;
      
      private var var_257:IFrameWindow;
      
      private var _navigator:HabboNavigator;
      
      private var _title:String;
      
      private var var_1242:String;
      
      public function AlertView(param1:HabboNavigator, param2:String, param3:String = null)
      {
         super();
         _navigator = param1;
         var_1242 = param2;
         _title = param3;
      }
      
      function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_257 != null)
         {
            var_257.destroy();
            var_257 = null;
         }
         _navigator = null;
      }
      
      private function getAlert() : IFrameWindow
      {
         var _loc1_:IFrameWindow = IFrameWindow(_navigator.getXmlWindow(this.var_1242));
         var _loc2_:IWindow = _loc1_.findChildByTag("close");
         _loc2_.procedure = onClose;
         return _loc1_;
      }
      
      public function get navigator() : HabboNavigator
      {
         return _navigator;
      }
      
      function setupContent(param1:IWindowContainer) : void
      {
      }
      
      public function show() : void
      {
         var _loc1_:IFrameWindow = IFrameWindow(var_1486[var_1242]);
         if(_loc1_ != null)
         {
            _loc1_.dispose();
         }
         var_257 = getAlert();
         if(_title != null)
         {
            var_257.caption = _title;
         }
         setupContent(var_257.content);
         var _loc2_:Rectangle = Util.getLocationRelativeTo(var_257.desktop,var_257.width,var_257.height);
         var_257.x = _loc2_.x;
         var_257.y = _loc2_.y;
         var_1486[var_1242] = var_257;
      }
   }
}
