package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2279:int;
      
      private var var_2545:int;
      
      private var var_2546:int;
      
      private var _dayOffsets:Array;
      
      private var var_1873:Array;
      
      private var var_1874:Array;
      
      private var var_2548:int;
      
      private var var_2547:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2279 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2545 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2546 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1873 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1874 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2548 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2547 = param1;
      }
   }
}
