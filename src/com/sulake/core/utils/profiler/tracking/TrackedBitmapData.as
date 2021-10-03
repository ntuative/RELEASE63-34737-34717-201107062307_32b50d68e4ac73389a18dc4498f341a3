package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2275:int = 16777215;
      
      public static const const_1280:int = 8191;
      
      public static const const_1275:int = 8191;
      
      public static const const_2142:int = 1;
      
      public static const const_1271:int = 1;
      
      public static const const_1202:int = 1;
      
      private static var var_550:uint = 0;
      
      private static var var_549:uint = 0;
       
      
      private var _owner:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1280)
         {
            param2 = const_1280;
         }
         else if(param2 < const_1271)
         {
            param2 = const_1271;
         }
         if(param3 > const_1275)
         {
            param3 = const_1275;
         }
         else if(param3 < const_1202)
         {
            param3 = const_1202;
         }
         super(param2,param3,param4,param5);
         ++var_550;
         var_549 += param2 * param3 * 4;
         this._owner = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_550;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_549;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_549 -= width * height * 4;
            --var_550;
            this._disposed = true;
            this._owner = null;
            super.dispose();
         }
      }
   }
}
