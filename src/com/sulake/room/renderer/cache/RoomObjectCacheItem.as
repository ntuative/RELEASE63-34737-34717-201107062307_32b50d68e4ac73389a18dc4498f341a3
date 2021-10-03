package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_498:RoomObjectLocationCacheItem = null;
      
      private var var_223:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_498 = new RoomObjectLocationCacheItem(param1);
         this.var_223 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_498;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_223;
      }
      
      public function dispose() : void
      {
         if(this.var_498 != null)
         {
            this.var_498.dispose();
            this.var_498 = null;
         }
         if(this.var_223 != null)
         {
            this.var_223.dispose();
            this.var_223 = null;
         }
      }
   }
}
