package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1547:Boolean;
      
      private var var_2495:int;
      
      private var var_2148:int;
      
      private var var_2149:int;
      
      private var var_2494:int;
      
      private var var_2493:int;
      
      private var var_2497:int;
      
      private var var_2496:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1547;
      }
      
      public function get commission() : int
      {
         return this.var_2495;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_2148;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_2149;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2493;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2494;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2497;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2496;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1547 = param1.readBoolean();
         this.var_2495 = param1.readInteger();
         this.var_2148 = param1.readInteger();
         this.var_2149 = param1.readInteger();
         this.var_2493 = param1.readInteger();
         this.var_2494 = param1.readInteger();
         this.var_2497 = param1.readInteger();
         this.var_2496 = param1.readInteger();
         return true;
      }
   }
}
