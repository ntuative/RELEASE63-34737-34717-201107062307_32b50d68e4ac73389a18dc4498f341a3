package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1770:int;
      
      private var var_2096:int;
      
      private var var_2097:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2096 = param1.readInteger();
         this.var_1770 = param1.readInteger();
         this.var_2097 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1770 = 0;
         this.var_2096 = 0;
         this.var_2097 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1770;
      }
      
      public function get messageId() : int
      {
         return this.var_2096;
      }
      
      public function get timestamp() : String
      {
         return this.var_2097;
      }
   }
}
