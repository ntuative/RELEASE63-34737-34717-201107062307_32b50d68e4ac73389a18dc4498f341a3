package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_947:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_2116:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_947);
         this.var_2116 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_2116;
      }
   }
}
