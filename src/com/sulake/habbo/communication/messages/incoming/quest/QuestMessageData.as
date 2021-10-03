package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_2196:String;
      
      private var var_2193:int;
      
      private var var_2194:int;
      
      private var var_1894:int;
      
      private var _id:int;
      
      private var var_2197:Boolean;
      
      private var _type:String;
      
      private var var_3033:String;
      
      private var var_3036:int;
      
      private var var_2195:String;
      
      private var var_3035:int;
      
      private var var_3034:int;
      
      private var var_1695:int;
      
      private var var_2198:Date;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         this.var_2198 = new Date();
         super();
         this.var_2196 = param1.readString();
         this.var_2193 = param1.readInteger();
         this.var_2194 = param1.readInteger();
         this.var_1894 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_2197 = param1.readBoolean();
         this._type = param1.readString();
         this.var_3033 = param1.readString();
         this.var_3036 = param1.readInteger();
         this.var_2195 = param1.readString();
         this.var_3035 = param1.readInteger();
         this.var_3034 = param1.readInteger();
         this.var_1695 = param1.readInteger();
      }
      
      public function get campaignCode() : String
      {
         return this.var_2196;
      }
      
      public function get localizationCode() : String
      {
         return this.var_2195;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_2193;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_2194;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1894;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_2197;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_3033;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_3036;
      }
      
      public function get completedSteps() : int
      {
         return this.var_3035;
      }
      
      public function get totalSteps() : int
      {
         return this.var_3034;
      }
      
      public function get waitPeriodSeconds() : int
      {
         if(this.var_1695 < 1)
         {
            return 0;
         }
         var _loc1_:Date = new Date();
         var _loc2_:int = _loc1_.getTime() - this.var_2198.getTime();
         return int(Math.max(0,this.var_1695 - Math.floor(_loc2_ / 1000)));
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_2196;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_2195;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_2197 = param1;
      }
      
      public function get lastQuestInCampaign() : Boolean
      {
         return this.var_2193 >= this.var_2194;
      }
      
      public function get receiveTime() : Date
      {
         return this.var_2198;
      }
      
      public function set waitPeriodSeconds(param1:int) : void
      {
         this.var_1695 = param1;
      }
   }
}
