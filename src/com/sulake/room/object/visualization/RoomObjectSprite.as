package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1221:int = 0;
       
      
      private var var_440:BitmapData = null;
      
      private var var_2509:String = "";
      
      private var var_347:Boolean = true;
      
      private var var_2573:String = "";
      
      private var var_2311:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_1991:String;
      
      private var var_1662:Boolean = false;
      
      private var var_1661:Boolean = false;
      
      private var _offset:Point;
      
      private var var_216:int = 0;
      
      private var _height:int = 0;
      
      private var var_1405:Number = 0;
      
      private var var_2736:Boolean = false;
      
      private var var_2735:Boolean = true;
      
      private var var_2737:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var var_2469:int = 0;
      
      private var var_2738:Array = null;
      
      public function RoomObjectSprite()
      {
         this.var_1991 = BlendMode.NORMAL;
         this._offset = new Point(0,0);
         super();
         this.var_2469 = var_1221++;
      }
      
      public function dispose() : void
      {
         this.var_440 = null;
         this.var_216 = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_440;
      }
      
      public function get assetName() : String
      {
         return this.var_2509;
      }
      
      public function get visible() : Boolean
      {
         return this.var_347;
      }
      
      public function get tag() : String
      {
         return this.var_2573;
      }
      
      public function get alpha() : int
      {
         return this.var_2311;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_1991;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1661;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1662;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this.var_216;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1405;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2736;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2735;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2737;
      }
      
      public function get instanceId() : int
      {
         return this.var_2469;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_2738;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.var_216 = param1.width;
            this._height = param1.height;
         }
         this.var_440 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_2509 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_347 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2573 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2311 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_1991 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_2738 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1662 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1661 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1405 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2736 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2735 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2737 = param1;
         ++this._updateID;
      }
   }
}
