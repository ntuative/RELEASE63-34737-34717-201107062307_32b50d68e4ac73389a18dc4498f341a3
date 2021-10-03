package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_164:String = "ROE_MOUSE_CLICK";
      
      public static const const_190:String = "ROE_MOUSE_ENTER";
      
      public static const const_534:String = "ROE_MOUSE_MOVE";
      
      public static const const_194:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2254:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_673:String = "ROE_MOUSE_DOWN";
       
      
      private var var_2158:String = "";
      
      private var var_2535:Boolean;
      
      private var var_2536:Boolean;
      
      private var var_2538:Boolean;
      
      private var var_2537:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_2158 = param2;
         this.var_2535 = param5;
         this.var_2536 = param6;
         this.var_2538 = param7;
         this.var_2537 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_2158;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2535;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2536;
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
