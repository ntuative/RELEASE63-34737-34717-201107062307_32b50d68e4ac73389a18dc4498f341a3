package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_65:String = "i";
      
      public static const const_73:String = "s";
      
      public static const const_198:String = "e";
       
      
      private var var_1575:String;
      
      private var var_2721:int;
      
      private var var_1049:String;
      
      private var var_1576:int;
      
      private var var_1965:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1575 = param1.readString();
         this.var_2721 = param1.readInteger();
         this.var_1049 = param1.readString();
         this.var_1576 = param1.readInteger();
         this.var_1965 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1575;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2721;
      }
      
      public function get extraParam() : String
      {
         return this.var_1049;
      }
      
      public function get productCount() : int
      {
         return this.var_1576;
      }
      
      public function get expiration() : int
      {
         return this.var_1965;
      }
   }
}
