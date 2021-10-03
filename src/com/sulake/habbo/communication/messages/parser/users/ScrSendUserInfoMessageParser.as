package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_2125:int = 1;
      
      public static const RESPONSE_TYPE_PURCHASE:int = 2;
      
      public static const const_1377:int = 3;
       
      
      private var var_964:String;
      
      private var var_2326:int;
      
      private var var_2336:int;
      
      private var var_2330:int;
      
      private var var_2332:int;
      
      private var var_2335:Boolean;
      
      private var var_2328:Boolean;
      
      private var var_2327:int;
      
      private var var_2329:int;
      
      private var var_2334:Boolean;
      
      private var var_2333:int;
      
      private var var_2331:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_964 = param1.readString();
         this.var_2326 = param1.readInteger();
         this.var_2336 = param1.readInteger();
         this.var_2330 = param1.readInteger();
         this.var_2332 = param1.readInteger();
         this.var_2335 = param1.readBoolean();
         this.var_2328 = param1.readBoolean();
         this.var_2327 = param1.readInteger();
         this.var_2329 = param1.readInteger();
         this.var_2334 = param1.readBoolean();
         this.var_2333 = param1.readInteger();
         this.var_2331 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_964;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2326;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2336;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2330;
      }
      
      public function get responseType() : int
      {
         return this.var_2332;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2335;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2328;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2327;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2329;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2334;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2333;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2331;
      }
   }
}
