package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1931:Boolean;
      
      private var var_2668:int;
      
      private var var_2669:String;
      
      private var var_385:int;
      
      private var var_2667:int;
      
      private var var_1726:String;
      
      private var var_2665:String;
      
      private var var_2666:String;
      
      private var var_940:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_940 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1931 = false;
            return;
         }
         this.var_1931 = true;
         this.var_2668 = int(_loc2_);
         this.var_2669 = param1.readString();
         this.var_385 = int(param1.readString());
         this.var_2667 = param1.readInteger();
         this.var_1726 = param1.readString();
         this.var_2665 = param1.readString();
         this.var_2666 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_940.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_940 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2668;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2669;
      }
      
      public function get flatId() : int
      {
         return this.var_385;
      }
      
      public function get eventType() : int
      {
         return this.var_2667;
      }
      
      public function get eventName() : String
      {
         return this.var_1726;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2665;
      }
      
      public function get creationTime() : String
      {
         return this.var_2666;
      }
      
      public function get tags() : Array
      {
         return this.var_940;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1931;
      }
   }
}
