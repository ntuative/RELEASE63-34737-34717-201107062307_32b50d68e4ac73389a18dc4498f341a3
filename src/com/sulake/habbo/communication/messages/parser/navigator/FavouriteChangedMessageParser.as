package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FavouriteChangedMessageParser implements IMessageParser
   {
       
      
      private var var_385:int;
      
      private var var_2693:Boolean;
      
      public function FavouriteChangedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_385 = param1.readInteger();
         this.var_2693 = param1.readBoolean();
         return true;
      }
      
      public function get flatId() : int
      {
         return this.var_385;
      }
      
      public function get added() : Boolean
      {
         return this.var_2693;
      }
   }
}
