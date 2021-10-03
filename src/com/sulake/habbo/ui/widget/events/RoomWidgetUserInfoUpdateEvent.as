package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_116:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_157:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_869:int = 2;
      
      public static const const_1004:int = 3;
      
      public static const const_1888:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1816:String = "";
      
      private var var_2408:int;
      
      private var var_2411:int = 0;
      
      private var var_2404:int = 0;
      
      private var _figure:String = "";
      
      private var var_48:BitmapData = null;
      
      private var var_244:Array;
      
      private var var_1550:int = 0;
      
      private var var_2414:String = "";
      
      private var var_2410:int = 0;
      
      private var var_2417:int = 0;
      
      private var var_2189:Boolean = false;
      
      private var var_1814:String = "";
      
      private var var_2261:Boolean = false;
      
      private var var_2416:Boolean = false;
      
      private var var_2405:Boolean = true;
      
      private var var_1218:int = 0;
      
      private var var_2418:Boolean = false;
      
      private var var_2412:Boolean = false;
      
      private var var_2413:Boolean = false;
      
      private var var_2407:Boolean = false;
      
      private var var_2406:Boolean = false;
      
      private var var_2409:Boolean = false;
      
      private var var_2415:int = 0;
      
      private var var_2190:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_244 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1816 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1816;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2408 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2408;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2411 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2411;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2404 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2404;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_48 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_244 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_244;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1550 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1550;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2414 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2414;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2416 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2416;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1218 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1218;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2418 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2418;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2412 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2412;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2413 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2413;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2407 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2407;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2406 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2406;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2409 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2409;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2415 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2415;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2405 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2405;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_2190 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_2190;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2410 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2410;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2417 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2417;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_2189 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_2189;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1814 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1814;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2261 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2261;
      }
   }
}
