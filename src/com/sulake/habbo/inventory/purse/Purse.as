package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2205:int = 0;
      
      private var var_2204:int = 0;
      
      private var var_2962:int = 0;
      
      private var var_2961:Boolean = false;
      
      private var var_2328:Boolean = false;
      
      private var var_2960:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2205 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2204 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2962 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2961 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2328 = param1;
      }
      
      public function set clubIsExpiring(param1:Boolean) : void
      {
         this.var_2960 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2205;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2204;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2962;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2961;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2328;
      }
      
      public function get clubIsExpiring() : Boolean
      {
         return this.var_2960;
      }
   }
}
