package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetSongUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_456:String = "RWSUE_PLAYING_CHANGED";
      
      public static const const_400:String = "RWSUE_DATA_RECEIVED";
       
      
      private var var_1766:int;
      
      private var _songName:String;
      
      private var var_2802:String;
      
      public function RoomWidgetSongUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.var_1766 = param2;
         this._songName = param3;
         this.var_2802 = param4;
      }
      
      public function get songId() : int
      {
         return this.var_1766;
      }
      
      public function get songName() : String
      {
         return this._songName;
      }
      
      public function get songAuthor() : String
      {
         return this.var_2802;
      }
   }
}
