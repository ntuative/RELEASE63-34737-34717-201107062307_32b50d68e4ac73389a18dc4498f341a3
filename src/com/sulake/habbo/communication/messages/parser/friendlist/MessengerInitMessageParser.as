package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2375:int;
      
      private var var_2374:int;
      
      private var var_2377:int;
      
      private var var_2376:int;
      
      private var var_118:Array;
      
      private var var_247:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_118 = new Array();
         this.var_247 = new Array();
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2375 = param1.readInteger();
         this.var_2374 = param1.readInteger();
         this.var_2377 = param1.readInteger();
         this.var_2376 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_118.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_247.push(new FriendData(param1));
            _loc4_++;
         }
         return true;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2375;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2374;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2377;
      }
      
      public function get categories() : Array
      {
         return this.var_118;
      }
      
      public function get friends() : Array
      {
         return this.var_247;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2376;
      }
   }
}
