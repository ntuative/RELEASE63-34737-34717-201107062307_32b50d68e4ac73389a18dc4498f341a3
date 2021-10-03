package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_897:String = "";
      
      public static const const_405:int = 0;
      
      public static const const_591:int = 255;
      
      public static const const_760:Boolean = false;
      
      public static const const_498:int = 0;
      
      public static const const_610:int = 0;
      
      public static const const_440:int = 0;
      
      public static const const_1255:int = 1;
      
      public static const const_1345:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2573:String = "";
      
      private var var_2105:int = 0;
      
      private var var_2311:int = 255;
      
      private var var_2983:Boolean = false;
      
      private var var_2981:int = 0;
      
      private var var_2984:int = 0;
      
      private var var_2982:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2573 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2573;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_2105 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_2105;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2311 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2311;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2983 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2983;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2981 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2981;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2984 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2984;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2982 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2982;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
