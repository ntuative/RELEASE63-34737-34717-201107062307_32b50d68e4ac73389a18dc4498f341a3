package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetChooserContentEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_916:String = "RWCCE_USER_CHOOSER_CONTENT";
      
      public static const const_806:String = "RWCCE_FURNI_CHOOSER_CONTENT";
       
      
      private var _items:Array;
      
      private var var_2436:Boolean;
      
      public function RoomWidgetChooserContentEvent(param1:String, param2:Array, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this._items = param2.slice();
         this.var_2436 = param3;
      }
      
      public function get items() : Array
      {
         return this._items;
      }
      
      public function get isAnyRoomController() : Boolean
      {
         return this.var_2436;
      }
   }
}
