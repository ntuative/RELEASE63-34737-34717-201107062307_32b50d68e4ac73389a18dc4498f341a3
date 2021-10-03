package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_186;
         param1["bound_to_parent_rect"] = const_101;
         param1["child_window"] = const_1321;
         param1["embedded_controller"] = const_1241;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_1016;
         param1["mouse_dragging_target"] = const_302;
         param1["mouse_dragging_trigger"] = const_428;
         param1["mouse_scaling_target"] = const_373;
         param1["mouse_scaling_trigger"] = const_590;
         param1["horizontal_mouse_scaling_trigger"] = const_261;
         param1["vertical_mouse_scaling_trigger"] = const_275;
         param1["observe_parent_input_events"] = const_1228;
         param1["optimize_region_to_layout_size"] = const_632;
         param1["parent_window"] = const_1207;
         param1["relative_horizontal_scale_center"] = const_224;
         param1["relative_horizontal_scale_fixed"] = const_173;
         param1["relative_horizontal_scale_move"] = const_410;
         param1["relative_horizontal_scale_strech"] = const_442;
         param1["relative_scale_center"] = const_1309;
         param1["relative_scale_fixed"] = const_778;
         param1["relative_scale_move"] = const_1368;
         param1["relative_scale_strech"] = const_1220;
         param1["relative_vertical_scale_center"] = const_206;
         param1["relative_vertical_scale_fixed"] = const_142;
         param1["relative_vertical_scale_move"] = const_304;
         param1["relative_vertical_scale_strech"] = const_338;
         param1["on_resize_align_left"] = const_800;
         param1["on_resize_align_right"] = const_572;
         param1["on_resize_align_center"] = const_552;
         param1["on_resize_align_top"] = const_983;
         param1["on_resize_align_bottom"] = const_589;
         param1["on_resize_align_middle"] = const_659;
         param1["on_accommodate_align_left"] = const_1232;
         param1["on_accommodate_align_right"] = const_642;
         param1["on_accommodate_align_center"] = const_755;
         param1["on_accommodate_align_top"] = const_1313;
         param1["on_accommodate_align_bottom"] = const_575;
         param1["on_accommodate_align_middle"] = const_900;
         param1["route_input_events_to_parent"] = const_626;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1363;
         param1["scalable_with_mouse"] = const_1398;
         param1["reflect_horizontal_resize_to_parent"] = const_653;
         param1["reflect_vertical_resize_to_parent"] = const_501;
         param1["reflect_resize_to_parent"] = const_361;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1250;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
