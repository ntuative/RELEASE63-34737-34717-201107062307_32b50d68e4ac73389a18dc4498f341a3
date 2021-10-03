package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_596:WallRasterizer;
      
      private var var_595:FloorRasterizer;
      
      private var var_919:WallAdRasterizer;
      
      private var var_594:LandscapeRasterizer;
      
      private var var_920:PlaneMaskManager;
      
      private var var_873:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_596 = new WallRasterizer();
         this.var_595 = new FloorRasterizer();
         this.var_919 = new WallAdRasterizer();
         this.var_594 = new LandscapeRasterizer();
         this.var_920 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_873;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_595;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_596;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_919;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_594;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_920;
      }
      
      public function dispose() : void
      {
         if(this.var_596 != null)
         {
            this.var_596.dispose();
            this.var_596 = null;
         }
         if(this.var_595 != null)
         {
            this.var_595.dispose();
            this.var_595 = null;
         }
         if(this.var_919 != null)
         {
            this.var_919.dispose();
            this.var_919 = null;
         }
         if(this.var_594 != null)
         {
            this.var_594.dispose();
            this.var_594 = null;
         }
         if(this.var_920 != null)
         {
            this.var_920.dispose();
            this.var_920 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_596 != null)
         {
            this.var_596.clearCache();
         }
         if(this.var_595 != null)
         {
            this.var_595.clearCache();
         }
         if(this.var_594 != null)
         {
            this.var_594.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_596.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_595.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_919.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_594.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_920.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_873)
         {
            return;
         }
         this.var_596.initializeAssetCollection(param1);
         this.var_595.initializeAssetCollection(param1);
         this.var_919.initializeAssetCollection(param1);
         this.var_594.initializeAssetCollection(param1);
         this.var_920.initializeAssetCollection(param1);
         this.var_873 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
