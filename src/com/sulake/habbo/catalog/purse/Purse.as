package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_1892:int = 0;
      
      private var var_1696:Dictionary;
      
      private var var_2205:int = 0;
      
      private var var_2204:int = 0;
      
      private var var_2328:Boolean = false;
      
      private var var_2327:int = 0;
      
      private var var_2329:int = 0;
      
      private var var_2960:Boolean = false;
      
      public function Purse()
      {
         this.var_1696 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1892;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1892 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2205;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2205 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2204;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2204 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_2205 > 0 || this.var_2204 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2328;
      }
      
      public function get isExpiring() : Boolean
      {
         return this.var_2960;
      }
      
      public function set isExpiring(param1:Boolean) : void
      {
         this.var_2960 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2328 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2327;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2327 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2329;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2329 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1696;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1696 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1696[param1];
      }
   }
}
