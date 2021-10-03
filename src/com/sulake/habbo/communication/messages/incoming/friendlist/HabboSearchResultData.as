package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2288:int;
      
      private var var_2072:String;
      
      private var var_2287:String;
      
      private var var_2289:Boolean;
      
      private var var_2285:Boolean;
      
      private var var_2284:int;
      
      private var var_2290:String;
      
      private var var_2286:String;
      
      private var var_1814:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2288 = param1.readInteger();
         this.var_2072 = param1.readString();
         this.var_2287 = param1.readString();
         this.var_2289 = param1.readBoolean();
         this.var_2285 = param1.readBoolean();
         param1.readString();
         this.var_2284 = param1.readInteger();
         this.var_2290 = param1.readString();
         this.var_2286 = param1.readString();
         this.var_1814 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2288;
      }
      
      public function get avatarName() : String
      {
         return this.var_2072;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2287;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2289;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2285;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2284;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2290;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2286;
      }
      
      public function get realName() : String
      {
         return this.var_1814;
      }
   }
}
