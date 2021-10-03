package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_2009:int;
      
      private var var_2754:int;
      
      private var var_918:int;
      
      private var var_575:Number;
      
      private var var_2755:Boolean;
      
      private var var_2753:int;
      
      private var var_2008:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_575);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2754 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2753 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2755 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_918;
         if(this.var_918 == 1)
         {
            this.var_575 = param1;
            this.var_2009 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_918);
            this.var_575 = this.var_575 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2755 && param3 - this.var_2009 >= this.var_2754)
         {
            this.var_918 = 0;
            if(this.var_2008 < this.var_2753)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_2008;
               this.var_2009 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
