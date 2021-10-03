package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1338:String = "WN_CREATED";
      
      public static const const_847:String = "WN_DISABLE";
      
      public static const const_961:String = "WN_DEACTIVATED";
      
      public static const const_853:String = "WN_OPENED";
      
      public static const const_852:String = "WN_CLOSED";
      
      public static const const_890:String = "WN_DESTROY";
      
      public static const const_1486:String = "WN_ARRANGED";
      
      public static const const_375:String = "WN_PARENT_RESIZED";
      
      public static const const_928:String = "WN_ENABLE";
      
      public static const const_838:String = "WN_RELOCATE";
      
      public static const const_996:String = "WN_FOCUS";
      
      public static const const_869:String = "WN_PARENT_RELOCATED";
      
      public static const const_378:String = "WN_PARAM_UPDATED";
      
      public static const const_675:String = "WN_PARENT_ACTIVATED";
      
      public static const const_200:String = "WN_RESIZED";
      
      public static const const_860:String = "WN_CLOSE";
      
      public static const const_959:String = "WN_PARENT_REMOVED";
      
      public static const const_265:String = "WN_CHILD_RELOCATED";
      
      public static const const_647:String = "WN_ENABLED";
      
      public static const const_255:String = "WN_CHILD_RESIZED";
      
      public static const const_914:String = "WN_MINIMIZED";
      
      public static const const_630:String = "WN_DISABLED";
      
      public static const const_219:String = "WN_CHILD_ACTIVATED";
      
      public static const const_457:String = "WN_STATE_UPDATED";
      
      public static const const_502:String = "WN_UNSELECTED";
      
      public static const const_471:String = "WN_STYLE_UPDATED";
      
      public static const const_1562:String = "WN_UPDATE";
      
      public static const const_441:String = "WN_PARENT_ADDED";
      
      public static const const_581:String = "WN_RESIZE";
      
      public static const const_578:String = "WN_CHILD_REMOVED";
      
      public static const const_1509:String = "";
      
      public static const const_983:String = "WN_RESTORED";
      
      public static const const_317:String = "WN_SELECTED";
      
      public static const const_800:String = "WN_MINIMIZE";
      
      public static const const_872:String = "WN_FOCUSED";
      
      public static const const_1366:String = "WN_LOCK";
      
      public static const const_326:String = "WN_CHILD_ADDED";
      
      public static const const_818:String = "WN_UNFOCUSED";
      
      public static const const_362:String = "WN_RELOCATED";
      
      public static const const_834:String = "WN_DEACTIVATE";
      
      public static const const_1175:String = "WN_CRETAE";
      
      public static const const_967:String = "WN_RESTORE";
      
      public static const const_291:String = "WN_ACTVATED";
      
      public static const const_1341:String = "WN_LOCKED";
      
      public static const const_437:String = "WN_SELECT";
      
      public static const const_901:String = "WN_MAXIMIZE";
      
      public static const const_891:String = "WN_OPEN";
      
      public static const const_614:String = "WN_UNSELECT";
      
      public static const const_1480:String = "WN_ARRANGE";
      
      public static const const_1350:String = "WN_UNLOCKED";
      
      public static const const_1566:String = "WN_UPDATED";
      
      public static const const_977:String = "WN_ACTIVATE";
      
      public static const const_1222:String = "WN_UNLOCK";
      
      public static const const_942:String = "WN_MAXIMIZED";
      
      public static const const_924:String = "WN_DESTROYED";
      
      public static const const_1009:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1596,cancelable);
      }
   }
}
