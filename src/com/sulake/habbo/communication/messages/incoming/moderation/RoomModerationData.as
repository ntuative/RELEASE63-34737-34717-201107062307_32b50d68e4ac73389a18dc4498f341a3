package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_385:int;
      
      private var var_2574:int;
      
      private var var_2788:Boolean;
      
      private var var_2520:int;
      
      private var _ownerName:String;
      
      private var var_139:RoomData;
      
      private var var_838:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_385 = param1.readInteger();
         this.var_2574 = param1.readInteger();
         this.var_2788 = param1.readBoolean();
         this.var_2520 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_139 = new RoomData(param1);
         this.var_838 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_139 != null)
         {
            this.var_139.dispose();
            this.var_139 = null;
         }
         if(this.var_838 != null)
         {
            this.var_838.dispose();
            this.var_838 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_385;
      }
      
      public function get userCount() : int
      {
         return this.var_2574;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2788;
      }
      
      public function get ownerId() : int
      {
         return this.var_2520;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_139;
      }
      
      public function get event() : RoomData
      {
         return this.var_838;
      }
   }
}
