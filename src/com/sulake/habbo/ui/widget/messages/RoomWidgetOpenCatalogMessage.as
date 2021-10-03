package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_1028:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1404:String = "RWOCM_CLUB_MAIN";
      
      public static const const_2140:String = "RWOCM_PIXELS";
      
      public static const const_2319:String = "RWOCM_CREDITS";
      
      public static const const_2146:String = "RWOCM_SHELLS";
       
      
      private var var_2791:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_1028);
         this.var_2791 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2791;
      }
   }
}
