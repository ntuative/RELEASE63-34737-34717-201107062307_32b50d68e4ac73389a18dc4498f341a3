package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1540:int = 3;
      
      private static const const_1688:int = 2;
      
      private static const const_1689:int = 1;
      
      private static const const_1690:int = 15;
       
      
      private var var_323:Array;
      
      private var var_1358:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_323 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1688)
         {
            this.var_323 = new Array();
            this.var_323.push(const_1689);
            this.var_1358 = const_1690;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1358 > 0)
         {
            --this.var_1358;
         }
         if(this.var_1358 == 0)
         {
            if(this.var_323.length > 0)
            {
               super.setAnimation(this.var_323.shift());
            }
         }
         return super.updateAnimation(param1);
      }
      
      override protected function usesAnimationResetting() : Boolean
      {
         return true;
      }
   }
}
