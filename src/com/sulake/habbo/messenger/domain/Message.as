package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_856:int = 1;
      
      public static const const_761:int = 2;
      
      public static const const_811:int = 3;
      
      public static const const_1317:int = 4;
      
      public static const const_951:int = 5;
      
      public static const const_1171:int = 6;
       
      
      private var _type:int;
      
      private var var_1312:int;
      
      private var var_2302:String;
      
      private var var_2770:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1312 = param2;
         this.var_2302 = param3;
         this.var_2770 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2302;
      }
      
      public function get time() : String
      {
         return this.var_2770;
      }
      
      public function get senderId() : int
      {
         return this.var_1312;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
