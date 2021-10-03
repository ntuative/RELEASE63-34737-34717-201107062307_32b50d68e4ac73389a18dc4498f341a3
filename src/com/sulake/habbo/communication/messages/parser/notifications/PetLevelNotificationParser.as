package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1941:int;
      
      private var var_2763:String;
      
      private var var_1193:int;
      
      private var var_1362:int;
      
      private var var_1907:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1941 = param1.readInteger();
         this.var_2763 = param1.readString();
         this.var_1193 = param1.readInteger();
         this.var_1362 = param1.readInteger();
         this.var_1907 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1941;
      }
      
      public function get petName() : String
      {
         return this.var_2763;
      }
      
      public function get level() : int
      {
         return this.var_1193;
      }
      
      public function get petType() : int
      {
         return this.var_1362;
      }
      
      public function get breed() : int
      {
         return this.var_1907;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
