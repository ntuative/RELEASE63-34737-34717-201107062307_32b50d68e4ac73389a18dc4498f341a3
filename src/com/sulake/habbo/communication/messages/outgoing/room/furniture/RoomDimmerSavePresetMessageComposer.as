package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2874:int;
      
      private var var_2875:int;
      
      private var var_2877:String;
      
      private var var_2876:int;
      
      private var var_2873:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2874 = param1;
         this.var_2875 = param2;
         this.var_2877 = param3;
         this.var_2876 = param4;
         this.var_2873 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2874,this.var_2875,this.var_2877,this.var_2876,int(this.var_2873)];
      }
      
      public function dispose() : void
      {
      }
   }
}
