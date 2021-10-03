package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2715:Boolean = false;
      
      private var var_2717:int = 0;
      
      private var var_2718:int = 0;
      
      private var var_2716:int = 0;
      
      private var var_2719:int = 0;
      
      private var var_174:Number = 0;
      
      private var var_173:Number = 0;
      
      private var var_499:String = "";
      
      private var _type:int = 0;
      
      private var var_3108:String = "";
      
      private var var_1590:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_204:Boolean = false;
      
      private var var_2314:Boolean;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2715 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_204 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2715;
      }
      
      public function get wallX() : Number
      {
         return this.var_2717;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_204)
         {
            this.var_2717 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2718;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_204)
         {
            this.var_2718 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2716;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_204)
         {
            this.var_2716 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2719;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_204)
         {
            this.var_2719 = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_174;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_204)
         {
            this.var_174 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_173;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_204)
         {
            this.var_173 = param1;
         }
      }
      
      public function get dir() : String
      {
         return this.var_499;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_204)
         {
            this.var_499 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_204)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_204)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_204)
         {
            this._data = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2314;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         if(!this.var_204)
         {
            this.var_2314 = param1;
         }
      }
   }
}
