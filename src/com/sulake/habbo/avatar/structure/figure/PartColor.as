package com.sulake.habbo.avatar.structure.figure
{
   import flash.geom.ColorTransform;
   
   public class PartColor implements IPartColor
   {
       
      
      private var _id:int;
      
      private var _index:int;
      
      private var var_1825:int;
      
      private var var_2512:Boolean = false;
      
      private var _rgb:uint;
      
      private var var_1848:uint;
      
      private var var_1849:uint;
      
      private var _b:uint;
      
      private var var_1850:Number;
      
      private var var_1851:Number;
      
      private var var_1852:Number;
      
      private var var_856:ColorTransform;
      
      public function PartColor(param1:XML)
      {
         super();
         this._id = parseInt(param1.@id);
         this._index = parseInt(param1.@index);
         this.var_1825 = parseInt(param1.@club);
         this.var_2512 = Boolean(parseInt(param1.@selectable));
         var _loc2_:String = param1.text();
         this._rgb = parseInt(_loc2_,16);
         this.var_1848 = this._rgb >> 16 & 255;
         this.var_1849 = this._rgb >> 8 & 255;
         this._b = this._rgb >> 0 & 255;
         this.var_1850 = this.var_1848 / 255 * 1;
         this.var_1851 = this.var_1849 / 255 * 1;
         this.var_1852 = this._b / 255 * 1;
         this.var_856 = new ColorTransform(this.var_1850,this.var_1851,this.var_1852);
      }
      
      public function get colorTransform() : ColorTransform
      {
         return this.var_856;
      }
      
      public function get redMultiplier() : Number
      {
         return this.var_1850;
      }
      
      public function get greenMultiplier() : Number
      {
         return this.var_1851;
      }
      
      public function get blueMultiplier() : Number
      {
         return this.var_1852;
      }
      
      public function get rgb() : uint
      {
         return this._rgb;
      }
      
      public function get r() : uint
      {
         return this.var_1848;
      }
      
      public function get g() : uint
      {
         return this.var_1849;
      }
      
      public function get b() : uint
      {
         return this._b;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1825;
      }
      
      public function get isSelectable() : Boolean
      {
         return this.var_2512;
      }
   }
}
