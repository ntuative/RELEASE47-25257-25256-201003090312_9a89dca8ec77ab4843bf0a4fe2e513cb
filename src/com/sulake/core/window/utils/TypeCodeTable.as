package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_704;
         param1["bitmap"] = const_708;
         param1["border"] = const_690;
         param1["border_notify"] = const_1164;
         param1["button"] = const_422;
         param1["button_thick"] = const_619;
         param1["button_icon"] = const_1180;
         param1["button_group_left"] = const_735;
         param1["button_group_center"] = const_539;
         param1["button_group_right"] = const_548;
         param1["canvas"] = const_728;
         param1["checkbox"] = const_566;
         param1["closebutton"] = const_995;
         param1["container"] = const_322;
         param1["container_button"] = const_722;
         param1["display_object_wrapper"] = const_598;
         param1["dropmenu"] = const_396;
         param1["dropmenu_item"] = const_417;
         param1["frame"] = const_318;
         param1["frame_notify"] = const_1173;
         param1["header"] = const_565;
         param1["icon"] = const_951;
         param1["itemgrid"] = const_956;
         param1["itemgrid_horizontal"] = const_442;
         param1["itemgrid_vertical"] = const_698;
         param1["itemlist"] = const_934;
         param1["itemlist_horizontal"] = const_332;
         param1["itemlist_vertical"] = const_301;
         param1["maximizebox"] = const_1199;
         param1["menu"] = const_1167;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_909;
         param1["minimizebox"] = const_1201;
         param1["notify"] = const_1353;
         param1["null"] = const_504;
         param1["password"] = const_638;
         param1["radiobutton"] = const_713;
         param1["region"] = const_447;
         param1["restorebox"] = const_1211;
         param1["scaler"] = const_811;
         param1["scaler_horizontal"] = const_1160;
         param1["scaler_vertical"] = const_1309;
         param1["scrollbar_horizontal"] = const_372;
         param1["scrollbar_vertical"] = const_529;
         param1["scrollbar_slider_button_up"] = const_899;
         param1["scrollbar_slider_button_down"] = const_877;
         param1["scrollbar_slider_button_left"] = const_882;
         param1["scrollbar_slider_button_right"] = const_888;
         param1["scrollbar_slider_bar_horizontal"] = const_982;
         param1["scrollbar_slider_bar_vertical"] = const_900;
         param1["scrollbar_slider_track_horizontal"] = const_986;
         param1["scrollbar_slider_track_vertical"] = const_878;
         param1["scrollable_itemlist"] = const_1356;
         param1["scrollable_itemlist_vertical"] = const_365;
         param1["scrollable_itemlist_horizontal"] = const_796;
         param1["selector"] = const_568;
         param1["selector_list"] = const_629;
         param1["submenu"] = const_909;
         param1["tab_button"] = const_706;
         param1["tab_container_button"] = const_861;
         param1["tab_context"] = const_465;
         param1["tab_content"] = const_990;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_506;
         param1["input"] = const_654;
         param1["toolbar"] = const_1154;
         param1["tooltip"] = const_336;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
