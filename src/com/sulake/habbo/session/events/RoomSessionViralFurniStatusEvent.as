package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionViralFurniStatusEvent extends RoomSessionEvent
   {
      
      public static const const_651:String = "RSVFS_STATUS";
      
      public static const const_677:String = "RSVFS_RECEIVED";
       
      
      private var var_205:String;
      
      private var var_237:int;
      
      private var var_431:int = -1;
      
      private var _shareId:String;
      
      private var var_2766:String;
      
      private var var_2765:Boolean;
      
      private var var_1625:int = 0;
      
      public function RoomSessionViralFurniStatusEvent(param1:String, param2:IRoomSession, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         this.var_431 = this.status;
         this._shareId = this.shareId;
      }
      
      public function get objectId() : int
      {
         return this.var_237;
      }
      
      public function get status() : int
      {
         return this.var_431;
      }
      
      public function get shareId() : String
      {
         return this._shareId;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2766;
      }
      
      public function get method_2() : Boolean
      {
         return this.var_2765;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1625;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_237 = param1;
      }
      
      public function set status(param1:int) : void
      {
         this.var_431 = param1;
      }
      
      public function set shareId(param1:String) : void
      {
         this._shareId = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2766 = param1;
      }
      
      public function set method_2(param1:Boolean) : void
      {
         this.var_2765 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1625 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_205;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_205 = param1;
      }
   }
}
