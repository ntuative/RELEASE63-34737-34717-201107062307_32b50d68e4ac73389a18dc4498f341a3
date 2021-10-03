package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1282:int;
      
      private var var_1895:String;
      
      private var var_1264:int;
      
      private var var_1262:int;
      
      private var var_1894:int;
      
      private var var_1825:int;
      
      private var var_1336:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1282 = param1.readInteger();
         this.var_1895 = param1.readString();
         this.var_1264 = param1.readInteger();
         this.var_1262 = param1.readInteger();
         this.var_1894 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1336 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1336.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this.var_1825 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1282;
      }
      
      public function get localizationId() : String
      {
         return this.var_1895;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1264;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1262;
      }
      
      public function get products() : Array
      {
         return this.var_1336;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1894;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1825;
      }
   }
}
