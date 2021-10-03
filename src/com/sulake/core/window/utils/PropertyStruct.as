package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_177:String = "hex";
      
      public static const const_36:String = "int";
      
      public static const const_285:String = "uint";
      
      public static const const_133:String = "Number";
      
      public static const const_38:String = "Boolean";
      
      public static const const_51:String = "String";
      
      public static const const_303:String = "Point";
      
      public static const const_252:String = "Rectangle";
      
      public static const const_170:String = "Array";
      
      public static const const_300:String = "Map";
       
      
      private var var_648:String;
      
      private var var_200:Object;
      
      private var _type:String;
      
      private var var_2522:Boolean;
      
      private var var_3076:Boolean;
      
      private var var_2523:Array;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean, param5:Array = null)
      {
         super();
         this.var_648 = param1;
         this.var_200 = param2;
         this._type = param3;
         this.var_2522 = param4;
         this.var_3076 = param3 == const_300 || param3 == const_170 || param3 == const_303 || param3 == const_252;
         this.var_2523 = param5;
      }
      
      public function get key() : String
      {
         return this.var_648;
      }
      
      public function get value() : Object
      {
         return this.var_200;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get valid() : Boolean
      {
         return this.var_2522;
      }
      
      public function get range() : Array
      {
         return this.var_2523;
      }
      
      public function toString() : String
      {
         switch(this._type)
         {
            case const_177:
               return "0x" + uint(this.var_200).toString(16);
            case const_38:
               return Boolean(this.var_200) == true ? "true" : "false";
            case const_303:
               return "Point(" + Point(this.var_200).x + ", " + Point(this.var_200).y + ")";
            case const_252:
               return "Rectangle(" + Rectangle(this.var_200).x + ", " + Rectangle(this.var_200).y + ", " + Rectangle(this.var_200).width + ", " + Rectangle(this.var_200).height + ")";
            default:
               return String(this.value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(this._type)
         {
            case const_300:
               _loc3_ = this.var_200 as Map;
               _loc1_ = "<var key=\"" + this.var_648 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_170:
               _loc4_ = this.var_200 as Array;
               _loc1_ = "<var key=\"" + this.var_648 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_303:
               _loc5_ = this.var_200 as Point;
               _loc1_ = "<var key=\"" + this.var_648 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_36 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_36 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_252:
               _loc6_ = this.var_200 as Rectangle;
               _loc1_ = "<var key=\"" + this.var_648 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_36 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_36 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_36 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_36 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_177:
               _loc1_ = "<var key=\"" + this.var_648 + "\" value=\"" + "0x" + uint(this.var_200).toString(16) + "\" type=\"" + this._type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + this.var_648 + "\" value=\"" + this.var_200 + "\" type=\"" + this._type + "\" />";
         }
         return _loc1_;
      }
   }
}
