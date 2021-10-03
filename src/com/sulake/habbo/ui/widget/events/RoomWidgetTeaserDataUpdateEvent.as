package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_615:String = "RWTDUE_TEASER_DATA";
      
      public static const const_756:String = "RWTDUE_GIFT_DATA";
      
      public static const const_759:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_237:int;
      
      private var _data:String;
      
      private var var_431:int;
      
      private var var_205:String;
      
      private var var_2766:String;
      
      private var var_2765:Boolean;
      
      private var var_1625:int = 0;
      
      private var var_2921:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_237;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_431;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2766;
      }
      
      public function get method_2() : Boolean
      {
         return this.var_2765;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2921;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1625;
      }
      
      public function set status(param1:int) : void
      {
         this.var_431 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2766 = param1;
      }
      
      public function set method_2(param1:Boolean) : void
      {
         this.var_2765 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2921 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_237 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_205;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_205 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1625 = param1;
      }
   }
}
