package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CanCreateRoomMessageParser implements IMessageParser
   {
      
      public static const const_2315:int = 0;
      
      public static const const_2164:int = 1;
       
      
      private var var_1938:int;
      
      private var var_2450:int;
      
      public function CanCreateRoomMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1938 = param1.readInteger();
         this.var_2450 = param1.readInteger();
         return true;
      }
      
      public function get resultCode() : int
      {
         return this.var_1938;
      }
      
      public function get roomLimit() : int
      {
         return this.var_2450;
      }
   }
}
