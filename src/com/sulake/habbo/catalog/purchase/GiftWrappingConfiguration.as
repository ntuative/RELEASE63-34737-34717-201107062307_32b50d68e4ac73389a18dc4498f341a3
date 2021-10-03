package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1547:Boolean = false;
      
      private var var_1915:int;
      
      private var var_1927:Array;
      
      private var var_836:Array;
      
      private var var_835:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1547 = _loc2_.isWrappingEnabled;
         this.var_1915 = _loc2_.wrappingPrice;
         this.var_1927 = _loc2_.stuffTypes;
         this.var_836 = _loc2_.boxTypes;
         this.var_835 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1547;
      }
      
      public function get price() : int
      {
         return this.var_1915;
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
   }
}
