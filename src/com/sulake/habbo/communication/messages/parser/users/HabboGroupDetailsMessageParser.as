package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboGroupDetailsMessageParser implements IMessageParser
   {
       
      
      private var var_1550:int = -1;
      
      private var _name:String = "";
      
      private var var_1913:String = "";
      
      private var _roomId:int = -1;
      
      private var var_949:String = "";
      
      public function HabboGroupDetailsMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1550 = -1;
         this._name = "";
         this.var_1913 = "";
         this._roomId = -1;
         this.var_949 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1550 = param1.readInteger();
         if(this.var_1550 != -1)
         {
            this._name = param1.readString();
            this.var_1913 = param1.readString();
            this._roomId = param1.readInteger();
            this.var_949 = param1.readString();
         }
         return true;
      }
      
      public function get groupId() : int
      {
         return this.var_1550;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get description() : String
      {
         return this.var_1913;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_949;
      }
   }
}
