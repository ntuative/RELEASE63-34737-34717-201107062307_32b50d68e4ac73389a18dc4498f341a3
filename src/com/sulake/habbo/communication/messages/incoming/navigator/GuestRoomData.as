package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_385:int;
      
      private var var_838:Boolean;
      
      private var var_949:String;
      
      private var _ownerName:String;
      
      private var var_2862:int;
      
      private var var_2574:int;
      
      private var var_2909:int;
      
      private var var_1913:String;
      
      private var var_2910:int;
      
      private var var_2861:Boolean;
      
      private var var_797:int;
      
      private var var_1675:int;
      
      private var var_2912:String;
      
      private var var_940:Array;
      
      private var var_2911:RoomThumbnailData;
      
      private var var_2898:Boolean;
      
      private var var_2913:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_940 = new Array();
         super();
         this.var_385 = param1.readInteger();
         this.var_838 = param1.readBoolean();
         this.var_949 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2862 = param1.readInteger();
         this.var_2574 = param1.readInteger();
         this.var_2909 = param1.readInteger();
         this.var_1913 = param1.readString();
         this.var_2910 = param1.readInteger();
         this.var_2861 = param1.readBoolean();
         this.var_797 = param1.readInteger();
         this.var_1675 = param1.readInteger();
         this.var_2912 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_940.push(_loc4_);
            _loc3_++;
         }
         this.var_2911 = new RoomThumbnailData(param1);
         this.var_2898 = param1.readBoolean();
         this.var_2913 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_385;
      }
      
      public function get event() : Boolean
      {
         return this.var_838;
      }
      
      public function get roomName() : String
      {
         return this.var_949;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2862;
      }
      
      public function get userCount() : int
      {
         return this.var_2574;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2909;
      }
      
      public function get description() : String
      {
         return this.var_1913;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2910;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2861;
      }
      
      public function get score() : int
      {
         return this.var_797;
      }
      
      public function get categoryId() : int
      {
         return this.var_1675;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2912;
      }
      
      public function get tags() : Array
      {
         return this.var_940;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2911;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2898;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2913;
      }
   }
}
