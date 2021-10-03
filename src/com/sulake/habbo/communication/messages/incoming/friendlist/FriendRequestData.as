package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1337:int;
      
      private var var_2617:String;
      
      private var var_2616:int;
      
      private var var_2685:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1337 = param1.readInteger();
         this.var_2617 = param1.readString();
         this.var_2685 = param1.readString();
         this.var_2616 = this.var_1337;
      }
      
      public function get requestId() : int
      {
         return this.var_1337;
      }
      
      public function get requesterName() : String
      {
         return this.var_2617;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2616;
      }
      
      public function get figureString() : String
      {
         return this.var_2685;
      }
   }
}
