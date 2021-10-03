package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2279:int;
      
      private var var_2545:int;
      
      private var var_2546:int;
      
      private var _dayOffsets:Array;
      
      private var var_1873:Array;
      
      private var var_1874:Array;
      
      private var var_2548:int;
      
      private var var_2547:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2279;
      }
      
      public function get offerCount() : int
      {
         return this.var_2545;
      }
      
      public function get historyLength() : int
      {
         return this.var_2546;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1873;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1874;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2548;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2547;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2279 = param1.readInteger();
         this.var_2545 = param1.readInteger();
         this.var_2546 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1873 = [];
         this.var_1874 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1873.push(param1.readInteger());
            this.var_1874.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2547 = param1.readInteger();
         this.var_2548 = param1.readInteger();
         return true;
      }
   }
}
