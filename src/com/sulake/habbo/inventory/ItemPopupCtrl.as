package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      private static const const_1101:int = 100;
      
      private static const const_1099:int = 200;
      
      private static const const_1098:int = 180;
      
      public static const const_851:int = 1;
      
      public static const const_361:int = 2;
      
      private static const const_1100:int = 250;
      
      private static const const_776:int = 5;
       
      
      private var var_588:BitmapData;
      
      private var var_307:Timer;
      
      private var var_8:IWindowContainer;
      
      private var var_710:BitmapData;
      
      private var var_306:Timer;
      
      private var var_71:IWindowContainer;
      
      private var var_1520:int = 2;
      
      private var _assets:IAssetLibrary;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         var_306 = new Timer(const_1100,1);
         var_307 = new Timer(const_1101,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         var_71 = param1;
         var_71.visible = false;
         _assets = param2;
         var_306.addEventListener(TimerEvent.TIMER,onDisplayTimer);
         var_307.addEventListener(TimerEvent.TIMER,onHideTimer);
         var _loc3_:BitmapDataAsset = _assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_710 = _loc3_.content as BitmapData;
         }
         _loc3_ = _assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_588 = _loc3_.content as BitmapData;
         }
      }
      
      public function hide() : void
      {
         var_71.visible = false;
         var_307.reset();
         var_306.reset();
         if(var_8 != null)
         {
            var_8.removeChild(var_71);
         }
      }
      
      public function hideDelayed() : void
      {
         var_307.reset();
         var_306.reset();
         var_307.start();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         hide();
      }
      
      public function dispose() : void
      {
         if(var_306 != null)
         {
            var_306.removeEventListener(TimerEvent.TIMER,onDisplayTimer);
            var_306.stop();
            var_306 = null;
         }
         if(var_307 != null)
         {
            var_307.removeEventListener(TimerEvent.TIMER,onHideTimer);
            var_307.stop();
            var_307 = null;
         }
         _assets = null;
         var_71 = null;
         var_8 = null;
         var_588 = null;
         var_710 = null;
      }
      
      public function showDelayed() : void
      {
         var_307.reset();
         var_306.reset();
         var_306.start();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         show();
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(var_71 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(var_8 != null)
         {
            var_8.removeChild(var_71);
         }
         var_8 = param1;
         var_1520 = param4;
         var _loc5_:ITextWindow = ITextWindow(var_71.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = var_71.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1098,param3.width),Math.min(const_1099,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (0 - _loc6_.width) / 2;
            var_71.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(var_71 == null || false)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(var_71.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_851:
               _loc2_.bitmap = var_710.clone();
               _loc2_.width = var_710.width;
               _loc2_.height = var_710.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = -1;
               break;
            case const_361:
               _loc2_.bitmap = var_588.clone();
               _loc2_.width = var_588.width;
               _loc2_.height = var_588.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = 1;
         }
         _loc2_.invalidate();
      }
      
      public function show() : void
      {
         var_307.reset();
         var_306.reset();
         if(var_8 == null)
         {
            return;
         }
         var_71.visible = true;
         var_8.addChild(var_71);
         refreshArrow(var_1520);
         switch(var_1520)
         {
            case const_851:
               var_71.x = 0 - const_776;
               break;
            case const_361:
               var_71.x = var_8.width + const_776;
         }
         var_71.y = (0 - 0) / 2;
      }
   }
}
