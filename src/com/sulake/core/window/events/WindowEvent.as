package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_288:String = "WE_CHILD_RESIZED";
      
      public static const const_1310:String = "WE_CLOSE";
      
      public static const const_1243:String = "WE_DESTROY";
      
      public static const const_147:String = "WE_CHANGE";
      
      public static const const_1206:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1435:String = "WE_PARENT_RESIZE";
      
      public static const const_92:String = "WE_UPDATE";
      
      public static const const_1207:String = "WE_MAXIMIZE";
      
      public static const const_480:String = "WE_DESTROYED";
      
      public static const const_855:String = "WE_UNSELECT";
      
      public static const const_1231:String = "WE_MAXIMIZED";
      
      public static const const_1594:String = "WE_UNLOCKED";
      
      public static const const_433:String = "WE_CHILD_REMOVED";
      
      public static const const_163:String = "WE_OK";
      
      public static const const_45:String = "WE_RESIZED";
      
      public static const const_1236:String = "WE_ACTIVATE";
      
      public static const const_247:String = "WE_ENABLED";
      
      public static const const_412:String = "WE_CHILD_RELOCATED";
      
      public static const const_1224:String = "WE_CREATE";
      
      public static const const_575:String = "WE_SELECT";
      
      public static const const_175:String = "";
      
      public static const const_1535:String = "WE_LOCKED";
      
      public static const const_1502:String = "WE_PARENT_RELOCATE";
      
      public static const const_1501:String = "WE_CHILD_REMOVE";
      
      public static const const_1579:String = "WE_CHILD_RELOCATE";
      
      public static const const_1570:String = "WE_LOCK";
      
      public static const const_203:String = "WE_FOCUSED";
      
      public static const const_644:String = "WE_UNSELECTED";
      
      public static const const_915:String = "WE_DEACTIVATED";
      
      public static const const_1367:String = "WE_MINIMIZED";
      
      public static const const_1567:String = "WE_ARRANGED";
      
      public static const const_1436:String = "WE_UNLOCK";
      
      public static const const_1510:String = "WE_ATTACH";
      
      public static const const_1308:String = "WE_OPEN";
      
      public static const const_1146:String = "WE_RESTORE";
      
      public static const const_1508:String = "WE_PARENT_RELOCATED";
      
      public static const const_1318:String = "WE_RELOCATE";
      
      public static const const_1496:String = "WE_CHILD_RESIZE";
      
      public static const const_1538:String = "WE_ARRANGE";
      
      public static const const_1144:String = "WE_OPENED";
      
      public static const const_1303:String = "WE_CLOSED";
      
      public static const const_1484:String = "WE_DETACHED";
      
      public static const const_1479:String = "WE_UPDATED";
      
      public static const const_1337:String = "WE_UNFOCUSED";
      
      public static const const_424:String = "WE_RELOCATED";
      
      public static const const_1388:String = "WE_DEACTIVATE";
      
      public static const const_218:String = "WE_DISABLED";
      
      public static const const_515:String = "WE_CANCEL";
      
      public static const const_723:String = "WE_ENABLE";
      
      public static const const_1288:String = "WE_ACTIVATED";
      
      public static const const_1168:String = "WE_FOCUS";
      
      public static const const_1586:String = "WE_DETACH";
      
      public static const const_1261:String = "WE_RESTORED";
      
      public static const const_1280:String = "WE_UNFOCUS";
      
      public static const const_53:String = "WE_SELECTED";
      
      public static const const_1380:String = "WE_PARENT_RESIZED";
      
      public static const const_1153:String = "WE_CREATED";
      
      public static const const_1597:String = "WE_ATTACHED";
      
      public static const const_1357:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1596:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1378:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1596 = param3;
         var_1378 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1378;
      }
      
      public function get related() : IWindow
      {
         return var_1596;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1378 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
