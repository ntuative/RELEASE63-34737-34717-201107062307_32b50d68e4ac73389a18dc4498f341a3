package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2800:Boolean;
      
      private var var_2801:int;
      
      private var var_1927:Array;
      
      private var var_836:Array;
      
      private var var_835:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2800;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2801;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1927;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_836;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_835;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1927 = [];
         this.var_836 = [];
         this.var_835 = [];
         this.var_2800 = param1.readBoolean();
         this.var_2801 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1927.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_836.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_835.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
