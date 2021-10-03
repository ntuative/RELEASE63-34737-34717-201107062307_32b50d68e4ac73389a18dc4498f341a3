package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var var_51:HabboQuestEngine;
      
      private var var_516:QuestsList;
      
      private var var_434:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_365:QuestTracker;
      
      private var var_614:NextQuestTimer;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this.var_51 = param1;
         this.var_365 = new QuestTracker(this.var_51);
         this.var_516 = new QuestsList(this.var_51);
         this.var_434 = new QuestDetails(this.var_51);
         this._questCompleted = new QuestCompleted(this.var_51);
         this.var_614 = new NextQuestTimer(this.var_51);
      }
      
      public function onToolbarClick() : void
      {
         this.var_516.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_516.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_365.onQuest(param1);
         this.var_434.onQuest(param1);
         this._questCompleted.onQuest(param1);
         this.var_614.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_365.onQuestCompleted(param1);
         this.var_434.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_365.onQuestCancelled();
         this.var_434.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
         this.var_614.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_365.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_516.onRoomExit();
         this.var_365.onRoomExit();
         this.var_434.onRoomExit();
         this.var_614.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_365.update(param1);
         this.var_614.update(param1);
         this.var_516.update(param1);
         this.var_434.update(param1);
      }
      
      public function dispose() : void
      {
         this.var_51 = null;
         if(this.var_516)
         {
            this.var_516.dispose();
            this.var_516 = null;
         }
         if(this.var_365)
         {
            this.var_365.dispose();
            this.var_365 = null;
         }
         if(this.var_434)
         {
            this.var_434.dispose();
            this.var_434 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_614)
         {
            this.var_614.dispose();
            this.var_614 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_51 == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_516;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_434;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_365;
      }
   }
}
