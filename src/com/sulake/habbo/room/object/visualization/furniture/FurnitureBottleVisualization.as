package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1068:int = 20;
      
      private static const const_693:int = 9;
      
      private static const const_1540:int = -1;
       
      
      private var var_323:Array;
      
      private var var_897:Boolean = false;
      
      public function FurnitureBottleVisualization()
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
               this.var_323.push(const_1540);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_897)
            {
               this.var_897 = false;
               this.var_323 = new Array();
               this.var_323.push(const_1068);
               this.var_323.push(const_693 + param1);
               this.var_323.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(0))
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
