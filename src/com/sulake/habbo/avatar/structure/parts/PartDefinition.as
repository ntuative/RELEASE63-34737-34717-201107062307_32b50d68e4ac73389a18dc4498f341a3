package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2751:String;
      
      private var var_2007:String;
      
      private var var_2752:String;
      
      private var var_2006:Boolean;
      
      private var var_2005:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2751 = String(param1["set-type"]);
         this.var_2007 = String(param1["flipped-set-type"]);
         this.var_2752 = String(param1["remove-set-type"]);
         this.var_2006 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_2005 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_2005;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_2005 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2751;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_2007;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2752;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_2006;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_2006 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_2007 = param1;
      }
   }
}
