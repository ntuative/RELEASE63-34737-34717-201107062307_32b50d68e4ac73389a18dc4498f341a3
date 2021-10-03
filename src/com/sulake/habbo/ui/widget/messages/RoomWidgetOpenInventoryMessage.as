package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_877:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_2032:String = "inventory_effects";
      
      public static const const_1180:String = "inventory_badges";
      
      public static const const_2031:String = "inventory_clothes";
      
      public static const const_2036:String = "inventory_furniture";
       
      
      private var var_2670:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_877);
         this.var_2670 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2670;
      }
   }
}
