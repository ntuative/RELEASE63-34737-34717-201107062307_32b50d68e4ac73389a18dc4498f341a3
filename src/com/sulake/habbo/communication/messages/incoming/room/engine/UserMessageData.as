package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1346:String = "M";
      
      public static const const_1747:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_174:Number = 0;
      
      private var var_173:Number = 0;
      
      private var var_499:int = 0;
      
      private var _name:String = "";
      
      private var var_1708:int = 0;
      
      private var var_1029:String = "";
      
      private var _figure:String = "";
      
      private var var_2714:String = "";
      
      private var var_2408:int;
      
      private var var_2411:int = 0;
      
      private var var_2713:String = "";
      
      private var var_2712:int = 0;
      
      private var var_2404:int = 0;
      
      private var var_2711:String = "";
      
      private var var_204:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_204 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_204)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_174;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_204)
         {
            this.var_174 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_173;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_204)
         {
            this.var_173 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_499;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_204)
         {
            this.var_499 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_204)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1708;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_204)
         {
            this.var_1708 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1029;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_204)
         {
            this.var_1029 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_204)
         {
            this._figure = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2714;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_204)
         {
            this.var_2714 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2408;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_204)
         {
            this.var_2408 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2411;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_204)
         {
            this.var_2411 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2713;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_204)
         {
            this.var_2713 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2712;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_204)
         {
            this.var_2712 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2404;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_204)
         {
            this.var_2404 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2711;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_204)
         {
            this.var_2711 = param1;
         }
      }
   }
}
