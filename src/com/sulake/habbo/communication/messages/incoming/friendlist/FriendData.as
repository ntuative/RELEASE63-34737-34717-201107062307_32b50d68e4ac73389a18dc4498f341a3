package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1030:int;
      
      private var var_887:Boolean;
      
      private var var_1813:Boolean;
      
      private var _figure:String;
      
      private var var_1675:int;
      
      private var var_1816:String;
      
      private var var_1815:String;
      
      private var var_1814:String;
      
      private var var_2991:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1030 = param1.readInteger();
         this.var_887 = param1.readBoolean();
         this.var_1813 = param1.readBoolean();
         this._figure = param1.readString();
         this.var_1675 = param1.readInteger();
         this.var_1816 = param1.readString();
         this.var_1815 = param1.readString();
         this.var_1814 = param1.readString();
         this.var_2991 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1030;
      }
      
      public function get online() : Boolean
      {
         return this.var_887;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1813;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get categoryId() : int
      {
         return this.var_1675;
      }
      
      public function get motto() : String
      {
         return this.var_1816;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1815;
      }
      
      public function get realName() : String
      {
         return this.var_1814;
      }
      
      public function get facebookId() : String
      {
         return this.var_2991;
      }
   }
}
