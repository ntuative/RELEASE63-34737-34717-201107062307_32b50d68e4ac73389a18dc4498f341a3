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
         param1["background"] = const_770;
         param1["badge"] = const_1023;
         param1["bitmap"] = const_401;
         param1["border"] = const_1020;
         param1["border_notify"] = const_1814;
         param1["bubble"] = const_860;
         param1["bubble_pointer_up"] = const_1223;
         param1["bubble_pointer_right"] = const_1376;
         param1["bubble_pointer_down"] = const_1208;
         param1["bubble_pointer_left"] = const_1344;
         param1["button"] = const_506;
         param1["button_thick"] = const_878;
         param1["button_icon"] = const_2022;
         param1["button_group_left"] = const_950;
         param1["button_group_center"] = const_933;
         param1["button_group_right"] = const_836;
         param1["canvas"] = const_1007;
         param1["checkbox"] = const_982;
         param1["closebutton"] = const_1372;
         param1["container"] = const_414;
         param1["container_button"] = const_902;
         param1["display_object_wrapper"] = const_990;
         param1["dropmenu"] = const_608;
         param1["dropmenu_item"] = const_657;
         param1["frame"] = const_399;
         param1["frame_notify"] = const_1832;
         param1["header"] = const_1029;
         param1["html"] = const_1285;
         param1["icon"] = const_1362;
         param1["itemgrid"] = const_1279;
         param1["itemgrid_horizontal"] = const_614;
         param1["itemgrid_vertical"] = const_940;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_460;
         param1["itemlist_vertical"] = const_433;
         param1["label"] = const_937;
         param1["maximizebox"] = const_1786;
         param1["menu"] = const_1959;
         param1["menu_item"] = const_1875;
         param1["submenu"] = const_1266;
         param1["minimizebox"] = const_1729;
         param1["notify"] = const_1931;
         param1["null"] = const_1013;
         param1["password"] = const_954;
         param1["radiobutton"] = const_820;
         param1["region"] = const_352;
         param1["restorebox"] = const_1971;
         param1["scaler"] = const_557;
         param1["scaler_horizontal"] = const_2038;
         param1["scaler_vertical"] = const_1989;
         param1["scrollbar_horizontal"] = const_596;
         param1["scrollbar_vertical"] = const_753;
         param1["scrollbar_slider_button_up"] = const_1166;
         param1["scrollbar_slider_button_down"] = const_1318;
         param1["scrollbar_slider_button_left"] = const_1276;
         param1["scrollbar_slider_button_right"] = const_1184;
         param1["scrollbar_slider_bar_horizontal"] = const_1292;
         param1["scrollbar_slider_bar_vertical"] = const_1408;
         param1["scrollbar_slider_track_horizontal"] = const_1169;
         param1["scrollbar_slider_track_vertical"] = const_1252;
         param1["scrollable_itemlist"] = const_1761;
         param1["scrollable_itemlist_vertical"] = const_541;
         param1["scrollable_itemlist_horizontal"] = const_1330;
         param1["selector"] = const_838;
         param1["selector_list"] = const_872;
         param1["submenu"] = const_1266;
         param1["tab_button"] = const_1001;
         param1["tab_container_button"] = const_1247;
         param1["tab_context"] = const_417;
         param1["tab_content"] = const_1270;
         param1["tab_selector"] = const_932;
         param1["text"] = const_893;
         param1["input"] = const_844;
         param1["toolbar"] = const_1807;
         param1["tooltip"] = const_451;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
