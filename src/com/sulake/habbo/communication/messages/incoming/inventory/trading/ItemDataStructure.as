package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2471:int;
      
      private var var_1608:String;
      
      private var var_2475:int;
      
      private var var_2470:int;
      
      private var _category:int;
      
      private var var_2251:String;
      
      private var var_1590:int;
      
      private var var_2472:int;
      
      private var var_2476:int;
      
      private var var_2477:int;
      
      private var var_2473:int;
      
      private var var_2474:Boolean;
      
      private var var_3107:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2471 = param1;
         this.var_1608 = param2;
         this.var_2475 = param3;
         this.var_2470 = param4;
         this._category = param5;
         this.var_2251 = param6;
         this.var_1590 = param7;
         this.var_2472 = param8;
         this.var_2476 = param9;
         this.var_2477 = param10;
         this.var_2473 = param11;
         this.var_2474 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2471;
      }
      
      public function get itemType() : String
      {
         return this.var_1608;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2475;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2470;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2251;
      }
      
      public function get extra() : int
      {
         return this.var_1590;
      }
      
      public function get method_9() : int
      {
         return this.var_2472;
      }
      
      public function get creationDay() : int
      {
         return this.var_2476;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2477;
      }
      
      public function get creationYear() : int
      {
         return this.var_2473;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2474;
      }
      
      public function get songID() : int
      {
         return this.var_1590;
      }
   }
}
