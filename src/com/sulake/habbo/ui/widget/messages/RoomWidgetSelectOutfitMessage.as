package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_1263:String = "select_outfit";
       
      
      private var var_2610:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_1263);
         this.var_2610 = param1;
      }
      
      public function get outfitId() : int
      {
         return this.var_2610;
      }
   }
}
