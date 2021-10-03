package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_1029:String = "";
      
      private var _figure:String = "";
      
      private var var_2714:String = "";
      
      private var var_2408:int;
      
      private var var_2411:int = 0;
      
      private var var_2713:String = "";
      
      private var var_2712:int = 0;
      
      private var var_2404:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2408;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2408 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_1029;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_1029 = param1;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2714;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2714 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2411;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2411 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2713;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2713 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2712;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2712 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2404;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2404 = param1;
      }
   }
}
