package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1941:int;
      
      private var _name:String;
      
      private var var_1193:int;
      
      private var var_2953:int;
      
      private var var_2517:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var _figure:String;
      
      private var var_2952:int;
      
      private var var_2954:int;
      
      private var var_2951:int;
      
      private var var_2673:int;
      
      private var var_2520:int;
      
      private var _ownerName:String;
      
      private var var_553:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1941;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1193;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2953;
      }
      
      public function get experience() : int
      {
         return this.var_2517;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2952;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2954;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2951;
      }
      
      public function get respect() : int
      {
         return this.var_2673;
      }
      
      public function get ownerId() : int
      {
         return this.var_2520;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_553;
      }
      
      public function flush() : Boolean
      {
         this.var_1941 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1941 = param1.readInteger();
         this._name = param1.readString();
         this.var_1193 = param1.readInteger();
         this.var_2953 = param1.readInteger();
         this.var_2517 = param1.readInteger();
         this.var_2952 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2954 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2951 = param1.readInteger();
         this._figure = param1.readString();
         this.var_2673 = param1.readInteger();
         this.var_2520 = param1.readInteger();
         this.var_553 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
