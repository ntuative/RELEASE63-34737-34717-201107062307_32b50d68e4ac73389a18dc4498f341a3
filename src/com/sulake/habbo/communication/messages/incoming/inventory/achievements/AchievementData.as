package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1193:int;
      
      private var var_2116:String;
      
      private var var_1982:int;
      
      private var var_2390:int;
      
      private var var_2388:int;
      
      private var var_1980:int;
      
      private var var_1981:Boolean;
      
      private var _category:String;
      
      private var var_2724:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1193 = param1.readInteger();
         this.var_2116 = param1.readString();
         this.var_1982 = Math.max(1,param1.readInteger());
         this.var_2390 = param1.readInteger();
         this.var_2388 = param1.readInteger();
         this.var_1980 = param1.readInteger();
         this.var_1981 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2724 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_2116;
      }
      
      public function get level() : int
      {
         return this.var_1193;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_1982;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2390;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2388;
      }
      
      public function get currentPoints() : int
      {
         return this.var_1980;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_1981;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2724;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1193 > 1 || this.var_1981;
      }
      
      public function setMaxProgress() : void
      {
         this.var_1980 = this.var_1982;
      }
   }
}
