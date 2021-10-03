package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2251:String;
      
      protected var var_1590:Number;
      
      protected var var_3060:Boolean;
      
      protected var var_3059:Boolean;
      
      protected var var_2474:Boolean;
      
      protected var var_2914:Boolean;
      
      protected var var_3064:int;
      
      protected var var_2476:int;
      
      protected var var_2477:int;
      
      protected var var_2473:int;
      
      protected var var_1911:String;
      
      protected var var_1766:int;
      
      protected var var_945:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2474 = param5;
         this.var_3059 = param6;
         this.var_3060 = param7;
         this.var_2914 = param8;
         this.var_2251 = param9;
         this.var_1590 = param10;
         this.var_3064 = param11;
         this.var_2476 = param12;
         this.var_2477 = param13;
         this.var_2473 = param14;
         this.var_1911 = param15;
         this.var_1766 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2251;
      }
      
      public function get extra() : Number
      {
         return this.var_1590;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_3060;
      }
      
      public function get method_6() : Boolean
      {
         return this.var_3059;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2474;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2914;
      }
      
      public function get expires() : int
      {
         return this.var_3064;
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
      
      public function get slotId() : String
      {
         return this.var_1911;
      }
      
      public function get songId() : int
      {
         return this.var_1766;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_945 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_945;
      }
   }
}
