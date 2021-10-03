package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1377:Boolean;
      
      private var var_1376:Boolean;
      
      private var var_1663:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1377;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1376;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1663;
      }
      
      public function flush() : Boolean
      {
         this.var_1377 = false;
         this.var_1376 = false;
         this.var_1663 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1377 = param1.readBoolean();
         this.var_1376 = param1.readBoolean();
         this.var_1663 = param1.readBoolean();
         return true;
      }
   }
}
