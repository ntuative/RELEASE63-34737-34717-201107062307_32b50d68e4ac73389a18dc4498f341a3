package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2762:int;
      
      private var var_2916:int;
      
      private var var_1264:int;
      
      private var var_1262:int;
      
      private var var_1894:int;
      
      private var var_2917:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2762 = param1.readInteger();
         this.var_2916 = param1.readInteger();
         this.var_1264 = param1.readInteger();
         this.var_1262 = param1.readInteger();
         this.var_1894 = param1.readInteger();
         this.var_2917 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2762;
      }
      
      public function get charges() : int
      {
         return this.var_2916;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1264;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1262;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2917;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1894;
      }
   }
}
