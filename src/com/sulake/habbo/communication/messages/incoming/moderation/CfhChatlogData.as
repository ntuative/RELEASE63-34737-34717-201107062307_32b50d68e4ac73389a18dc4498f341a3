package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1745:int;
      
      private var var_2341:int;
      
      private var var_1505:int;
      
      private var var_2340:int;
      
      private var var_139:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1745 = param1.readInteger();
         this.var_2341 = param1.readInteger();
         this.var_1505 = param1.readInteger();
         this.var_2340 = param1.readInteger();
         this.var_139 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1745);
      }
      
      public function get callId() : int
      {
         return this.var_1745;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2341;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1505;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2340;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_139;
      }
   }
}
