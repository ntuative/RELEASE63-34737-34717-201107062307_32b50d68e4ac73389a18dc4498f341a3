package com.sulake.habbo.room.object
{
   public class RoomStairData
   {
       
      
      private var var_2646:int;
      
      private var var_1925:Boolean;
      
      private var var_1924:Boolean;
      
      private var var_47:Boolean;
      
      public function RoomStairData(param1:int, param2:Boolean, param3:Boolean, param4:Boolean)
      {
         super();
         this.var_47 = param4;
         this.var_2646 = param1;
         this.var_1925 = param2;
         this.var_1924 = param3;
      }
      
      public function get stairHeight() : int
      {
         return this.var_2646;
      }
      
      public function get neighbourStairMin() : Boolean
      {
         return this.var_1925;
      }
      
      public function get neighbourStairMax() : Boolean
      {
         return this.var_1924;
      }
      
      public function get neighbourStair() : Boolean
      {
         return this.var_1925 || this.var_1924;
      }
      
      public function get border() : Boolean
      {
         return this.var_47;
      }
   }
}
