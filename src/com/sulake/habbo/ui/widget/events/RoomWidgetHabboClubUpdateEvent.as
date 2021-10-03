package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_292:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2870:int = 0;
      
      private var var_2871:int = 0;
      
      private var var_2869:int = 0;
      
      private var var_2868:Boolean = false;
      
      private var var_1825:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_292,param6,param7);
         this.var_2870 = param1;
         this.var_2871 = param2;
         this.var_2869 = param3;
         this.var_2868 = param4;
         this.var_1825 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2870;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2871;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2869;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2868;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1825;
      }
   }
}
