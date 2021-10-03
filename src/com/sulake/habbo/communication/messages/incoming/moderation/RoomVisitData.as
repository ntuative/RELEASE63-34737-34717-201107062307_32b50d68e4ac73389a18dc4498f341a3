package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_2070:Boolean;
      
      private var _roomId:int;
      
      private var var_949:String;
      
      private var var_2439:int;
      
      private var var_2440:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2070 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_949 = param1.readString();
         this.var_2439 = param1.readInteger();
         this.var_2440 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_2070;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_949;
      }
      
      public function get enterHour() : int
      {
         return this.var_2439;
      }
      
      public function get enterMinute() : int
      {
         return this.var_2440;
      }
   }
}
