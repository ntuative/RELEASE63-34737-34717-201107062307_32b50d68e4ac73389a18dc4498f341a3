package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1911:int;
      
      private var var_2685:String;
      
      private var var_1030:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1911 = param1.readInteger();
         this.var_2685 = param1.readString();
         this.var_1030 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1911;
      }
      
      public function get figureString() : String
      {
         return this.var_2685;
      }
      
      public function get gender() : String
      {
         return this.var_1030;
      }
   }
}
