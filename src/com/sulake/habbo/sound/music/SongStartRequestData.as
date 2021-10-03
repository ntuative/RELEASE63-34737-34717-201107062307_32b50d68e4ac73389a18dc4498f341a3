package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1766:int;
      
      private var var_2060:Number;
      
      private var var_2823:Number;
      
      private var var_2825:int;
      
      private var var_2826:Number;
      
      private var var_2824:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1766 = param1;
         this.var_2060 = param2;
         this.var_2823 = param3;
         this.var_2826 = param4;
         this.var_2824 = param5;
         this.var_2825 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1766;
      }
      
      public function get startPos() : Number
      {
         if(this.var_2060 < 0)
         {
            return 0;
         }
         return this.var_2060 + (getTimer() - this.var_2825) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2823;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2826;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2824;
      }
   }
}
