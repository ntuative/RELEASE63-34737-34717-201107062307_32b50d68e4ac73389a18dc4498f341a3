package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2647:int = 0;
      
      private var var_1659:String = "";
      
      private var var_2110:String = "";
      
      private var var_2815:String = "";
      
      private var var_2816:String = "";
      
      private var var_2053:int = 0;
      
      private var var_2814:int = 0;
      
      private var var_2818:int = 0;
      
      private var var_1660:int = 0;
      
      private var var_2817:int = 0;
      
      private var var_1658:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2647 = param1;
         this.var_1659 = param2;
         this.var_2110 = param3;
         this.var_2815 = param4;
         this.var_2816 = param5;
         if(param6)
         {
            this.var_2053 = 1;
         }
         else
         {
            this.var_2053 = 0;
         }
         this.var_2814 = param7;
         this.var_2818 = param8;
         this.var_1660 = param9;
         this.var_2817 = param10;
         this.var_1658 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2647,this.var_1659,this.var_2110,this.var_2815,this.var_2816,this.var_2053,this.var_2814,this.var_2818,this.var_1660,this.var_2817,this.var_1658];
      }
   }
}
