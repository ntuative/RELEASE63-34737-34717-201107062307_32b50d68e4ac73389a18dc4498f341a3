package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2568:int;
      
      private var var_1608:String;
      
      private var _objId:int;
      
      private var var_2142:int;
      
      private var _category:int;
      
      private var var_2251:String;
      
      private var var_2777:Boolean;
      
      private var var_2779:Boolean;
      
      private var var_2778:Boolean;
      
      private var var_2307:Boolean;
      
      private var var_2313:int;
      
      private var var_1590:int;
      
      private var var_1911:String = "";
      
      private var var_1766:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2568 = param1;
         this.var_1608 = param2;
         this._objId = param3;
         this.var_2142 = param4;
         this._category = param5;
         this.var_2251 = param6;
         this.var_2777 = param7;
         this.var_2779 = param8;
         this.var_2778 = param9;
         this.var_2307 = param10;
         this.var_2313 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1911 = param1;
         this.var_1590 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2568;
      }
      
      public function get itemType() : String
      {
         return this.var_1608;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_2142;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2251;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2777;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2779;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2778;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2307;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2313;
      }
      
      public function get slotId() : String
      {
         return this.var_1911;
      }
      
      public function get songId() : int
      {
         return this.var_1766;
      }
      
      public function get extra() : int
      {
         return this.var_1590;
      }
   }
}
