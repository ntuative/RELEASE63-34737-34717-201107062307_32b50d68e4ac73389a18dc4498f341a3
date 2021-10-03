package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_997:IAssetLoader;
      
      private var var_2509:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_2509 = param1;
         this.var_997 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_2509;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_997;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_997 != null)
            {
               if(!this.var_997.disposed)
               {
                  this.var_997.dispose();
                  this.var_997 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
