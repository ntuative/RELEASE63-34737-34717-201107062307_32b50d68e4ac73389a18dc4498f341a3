package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1068:int = 10;
      
      private static const const_693:int = 20;
      
      private static const const_1541:int = 31;
      
      private static const const_1540:int = 32;
       
      
      private var var_323:Array;
      
      private var var_897:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_323 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_897)
            {
               this.var_897 = true;
               this.var_323 = new Array();
               this.var_323.push(const_1541);
               this.var_323.push(const_1540);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_1068)
         {
            if(this.var_897)
            {
               this.var_897 = false;
               this.var_323 = new Array();
               this.var_323.push(const_1068 + param1);
               this.var_323.push(const_693 + param1);
               this.var_323.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_323.length > 0)
            {
               super.setAnimation(this.var_323.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
