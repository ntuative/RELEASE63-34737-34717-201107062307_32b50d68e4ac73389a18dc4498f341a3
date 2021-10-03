package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_161:String = "RSPE_VOTE_QUESTION";
      
      public static const const_163:String = "RSPE_VOTE_RESULT";
       
      
      private var var_1230:String = "";
      
      private var var_1440:Array;
      
      private var var_1343:Array;
      
      private var var_2165:int = 0;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         this.var_1440 = [];
         this.var_1343 = [];
         super(param1,param2,param7,param8);
         this.var_1230 = param3;
         this.var_1440 = param4;
         this.var_1343 = param5;
         if(this.var_1343 == null)
         {
            this.var_1343 = [];
         }
         this.var_2165 = param6;
      }
      
      public function get question() : String
      {
         return this.var_1230;
      }
      
      public function get choices() : Array
      {
         return this.var_1440.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1343.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_2165;
      }
   }
}
