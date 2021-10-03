package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_237:int = 0;
      
      private var var_2147:int = 0;
      
      private var var_2146:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_237;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_2147;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_2146;
      }
      
      public function flush() : Boolean
      {
         this.var_237 = 0;
         this.var_2147 = 0;
         this.var_2146 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_237 = param1.readInteger();
         this.var_2147 = param1.readInteger();
         this.var_2146 = param1.readString();
         return true;
      }
   }
}
