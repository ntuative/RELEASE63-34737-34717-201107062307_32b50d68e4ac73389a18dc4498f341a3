package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1951:String = "pricing_model_unknown";
      
      public static const const_462:String = "pricing_model_single";
      
      public static const const_458:String = "pricing_model_multi";
      
      public static const const_571:String = "pricing_model_bundle";
      
      public static const const_1974:String = "price_type_none";
      
      public static const const_827:String = "price_type_credits";
      
      public static const const_1256:String = "price_type_activitypoints";
      
      public static const const_1251:String = "price_type_credits_and_activitypoints";
       
      
      private var var_820:String;
      
      private var var_1263:String;
      
      private var var_1282:int;
      
      private var var_1895:String;
      
      private var var_1264:int;
      
      private var var_1262:int;
      
      private var var_1894:int;
      
      private var var_258:ICatalogPage;
      
      private var var_662:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_1825:int = 0;
      
      private var var_2586:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1282 = param1;
         this.var_1895 = param2;
         this.var_1264 = param3;
         this.var_1262 = param4;
         this.var_1894 = param5;
         this.var_258 = param8;
         this.var_1825 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_1825;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_258;
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
      
      public function get activityPointType() : int
      {
         return this.var_1894;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_662;
      }
      
      public function get pricingModel() : String
      {
         return this.var_820;
      }
      
      public function get priceType() : String
      {
         return this.var_1263;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2586;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2586 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1282 = 0;
         this.var_1895 = "";
         this.var_1264 = 0;
         this.var_1262 = 0;
         this.var_1894 = 0;
         this.var_258 = null;
         if(this.var_662 != null)
         {
            this.var_662.dispose();
            this.var_662 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_820)
         {
            case const_462:
               this.var_662 = new SingleProductContainer(this,param1);
               break;
            case const_458:
               this.var_662 = new MultiProductContainer(this,param1);
               break;
            case const_571:
               this.var_662 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_820);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_820 = const_462;
            }
            else
            {
               this.var_820 = const_458;
            }
         }
         else if(param1.length > 1)
         {
            this.var_820 = const_571;
         }
         else
         {
            this.var_820 = const_1951;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1264 > 0 && this.var_1262 > 0)
         {
            this.var_1263 = const_1251;
         }
         else if(this.var_1264 > 0)
         {
            this.var_1263 = const_827;
         }
         else if(this.var_1262 > 0)
         {
            this.var_1263 = const_1256;
         }
         else
         {
            this.var_1263 = const_1974;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_258.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_662.products)
         {
            _loc4_ = this.var_258.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
