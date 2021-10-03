package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_2509:String;
      
      private var var_2609:String;
      
      private var var_440:BitmapDataAsset;
      
      private var var_1662:Boolean;
      
      private var var_1661:Boolean;
      
      private var var_2608:Boolean;
      
      private var _offsetX:int;
      
      private var var_1223:int;
      
      private var var_216:int;
      
      private var _height:int;
      
      private var var_873:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_2509 = param1;
         this.var_2609 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_440 = _loc9_;
            this.var_873 = false;
         }
         else
         {
            this.var_440 = null;
            this.var_873 = true;
         }
         this.var_1662 = param4;
         this.var_1661 = param5;
         this._offsetX = param6;
         this.var_1223 = param7;
         this.var_2608 = param8;
      }
      
      public function dispose() : void
      {
         this.var_440 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_873 && this.var_440 != null)
         {
            _loc1_ = this.var_440.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_216 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_873 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1661;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1662;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_216;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_2509;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2609;
      }
      
      public function get asset() : IAsset
      {
         return this.var_440;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2608;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1662)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1661)
         {
            return this.var_1223;
         }
         return -(this.height + this.var_1223);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1223;
      }
   }
}
