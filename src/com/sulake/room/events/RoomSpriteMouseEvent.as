package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_2158:String = "";
      
      private var var_1901:String = "";
      
      private var var_2956:String = "";
      
      private var var_3022:Number = 0;
      
      private var var_3021:Number = 0;
      
      private var var_2716:Number = 0;
      
      private var var_2719:Number = 0;
      
      private var var_2536:Boolean = false;
      
      private var var_2535:Boolean = false;
      
      private var var_2538:Boolean = false;
      
      private var var_2537:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_2158 = param2;
         this.var_1901 = param3;
         this.var_2956 = param4;
         this.var_3022 = param5;
         this.var_3021 = param6;
         this.var_2716 = param7;
         this.var_2719 = param8;
         this.var_2536 = param9;
         this.var_2535 = param10;
         this.var_2538 = param11;
         this.var_2537 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_2158;
      }
      
      public function get canvasId() : String
      {
         return this.var_1901;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2956;
      }
      
      public function get screenX() : Number
      {
         return this.var_3022;
      }
      
      public function get screenY() : Number
      {
         return this.var_3021;
      }
      
      public function get localX() : Number
      {
         return this.var_2716;
      }
      
      public function get localY() : Number
      {
         return this.var_2719;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2536;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2535;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2538;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2537;
      }
   }
}
