package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1193:int;
      
      private var var_1791:int;
      
      private var var_2390:int;
      
      private var var_2388:int;
      
      private var var_2386:int;
      
      private var var_2116:int;
      
      private var var_2391:String = "";
      
      private var var_2387:String = "";
      
      private var var_2389:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1193 = param1.readInteger();
         this.var_2116 = param1.readInteger();
         this.var_2391 = param1.readString();
         this.var_1791 = param1.readInteger();
         this.var_2390 = param1.readInteger();
         this.var_2388 = param1.readInteger();
         this.var_2386 = param1.readInteger();
         this.var_2389 = param1.readInteger();
         this.var_2387 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1193;
      }
      
      public function get points() : int
      {
         return this.var_1791;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2390;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2388;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_2386;
      }
      
      public function get badgeId() : int
      {
         return this.var_2116;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2391;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2387;
      }
      
      public function get achievementID() : int
      {
         return this.var_2389;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
