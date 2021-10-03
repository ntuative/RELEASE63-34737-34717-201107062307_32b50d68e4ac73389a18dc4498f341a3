package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_2188:Boolean;
      
      private var var_1137:PetData;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2188 = param1.readBoolean();
         this.var_1137 = new PetData(param1);
         Logger.log("Got PetReceived: " + this.var_2188 + ", " + this.var_1137.id + ", " + this.var_1137.name + ", " + this.var_1137.type + ", " + this.var_1137.breed + ", " + this.pet.color);
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return this.var_2188;
      }
      
      public function get pet() : PetData
      {
         return this.var_1137;
      }
   }
}
