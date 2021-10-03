package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetWelcomeGiftUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_662:String = "rwwgue_welcome_gift_widget_status";
       
      
      private var var_1438:String;
      
      private var var_1158:Boolean;
      
      private var var_943:Boolean;
      
      private var _furniId:int;
      
      private var var_2396:Boolean;
      
      public function RoomWidgetWelcomeGiftUpdateEvent(param1:Boolean = false, param2:Boolean = false)
      {
         super(const_662,param1,param2);
      }
      
      public function get email() : String
      {
         return this.var_1438;
      }
      
      public function get isVerified() : Boolean
      {
         return this.var_1158;
      }
      
      public function get allowEmailChange() : Boolean
      {
         return this.var_943;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get requestedByUser() : Boolean
      {
         return this.var_2396;
      }
      
      public function set email(param1:String) : void
      {
         this.var_1438 = param1;
      }
      
      public function set isVerified(param1:Boolean) : void
      {
         this.var_1158 = param1;
      }
      
      public function set allowEmailChange(param1:Boolean) : void
      {
         this.var_943 = param1;
      }
      
      public function set furniId(param1:int) : void
      {
         this._furniId = param1;
      }
      
      public function set requestedByUser(param1:Boolean) : void
      {
         this.var_2396 = param1;
      }
   }
}
