package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2505:Number = 0.0;
      
      private var var_2506:Number = 0.0;
      
      private var var_2550:Number = 0.0;
      
      private var var_2549:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2505 = param1;
         this.var_2506 = param2;
         this.var_2550 = param3;
         this.var_2549 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2505;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2506;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2550;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2549;
      }
   }
}
