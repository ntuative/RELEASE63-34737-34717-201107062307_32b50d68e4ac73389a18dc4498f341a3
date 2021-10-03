package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1913:String;
      
      private var var_2862:int;
      
      private var _password:String;
      
      private var var_1675:int;
      
      private var var_2899:int;
      
      private var var_940:Array;
      
      private var var_2901:Array;
      
      private var var_2898:Boolean;
      
      private var var_2897:Boolean;
      
      private var var_2900:Boolean;
      
      private var var_2895:Boolean;
      
      private var var_2896:int;
      
      private var var_2894:int;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2898;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2898 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2897;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2897 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2900;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2900 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2895;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2895 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2896;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2896 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2894;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2894 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1913;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1913 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2862;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2862 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1675;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1675 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2899;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2899 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_940;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_940 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2901;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2901 = param1;
      }
   }
}
