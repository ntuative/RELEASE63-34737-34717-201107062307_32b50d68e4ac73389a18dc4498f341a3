package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2310:int = 1;
      
      public static const const_2285:int = 2;
      
      public static const const_2162:int = 3;
      
      public static const const_2153:int = 4;
      
      public static const const_1771:int = 5;
      
      public static const const_2273:int = 6;
      
      public static const const_1887:int = 7;
      
      public static const const_1843:int = 8;
      
      public static const const_2138:int = 9;
      
      public static const const_1930:int = 10;
      
      public static const const_1755:int = 11;
      
      public static const const_1980:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1770:int;
      
      private var var_630:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1770 = param1.readInteger();
         this.var_630 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1770;
      }
      
      public function get info() : String
      {
         return this.var_630;
      }
   }
}
