package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1078:Array;
      
      private var var_2292:String;
      
      private var var_2291:String;
      
      private var var_2293:String;
      
      private var _index:int;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param6,param7);
         this.var_1078 = param1;
         this.var_2292 = param2;
         this.var_2291 = param3;
         this.var_2293 = param4;
         this._index = param5;
      }
      
      public function get colours() : Array
      {
         return this.var_1078;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2292;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2291;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2293;
      }
      
      public function get index() : int
      {
         return this._index;
      }
   }
}
