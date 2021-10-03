package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1282:int;
      
      private var var_1914:String;
      
      private var var_1915:int;
      
      private var _upgrade:Boolean;
      
      private var var_2635:Boolean;
      
      private var var_2632:int;
      
      private var var_2634:int;
      
      private var var_2631:int;
      
      private var var_2637:int;
      
      private var var_2636:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1282 = param1.readInteger();
         this.var_1914 = param1.readString();
         this.var_1915 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2635 = param1.readBoolean();
         this.var_2632 = param1.readInteger();
         this.var_2634 = param1.readInteger();
         this.var_2631 = param1.readInteger();
         this.var_2637 = param1.readInteger();
         this.var_2636 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1282;
      }
      
      public function get productCode() : String
      {
         return this.var_1914;
      }
      
      public function get price() : int
      {
         return this.var_1915;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2635;
      }
      
      public function get periods() : int
      {
         return this.var_2632;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2634;
      }
      
      public function get year() : int
      {
         return this.var_2631;
      }
      
      public function get month() : int
      {
         return this.var_2637;
      }
      
      public function get day() : int
      {
         return this.var_2636;
      }
   }
}
