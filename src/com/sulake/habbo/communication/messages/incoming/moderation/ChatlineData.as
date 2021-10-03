package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_3004:int;
      
      private var var_3007:int;
      
      private var var_3006:int;
      
      private var var_3005:String;
      
      private var var_2091:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_3004 = param1.readInteger();
         this.var_3007 = param1.readInteger();
         this.var_3006 = param1.readInteger();
         this.var_3005 = param1.readString();
         this.var_2091 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_3004;
      }
      
      public function get minute() : int
      {
         return this.var_3007;
      }
      
      public function get chatterId() : int
      {
         return this.var_3006;
      }
      
      public function get chatterName() : String
      {
         return this.var_3005;
      }
      
      public function get msg() : String
      {
         return this.var_2091;
      }
   }
}
