package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_807:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         this.var_807 = new ByteArray();
         this.var_807.writeShort(param1);
         this.var_807.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         this.var_807.position = 0;
         if(this.var_807.bytesAvailable)
         {
            _loc1_ = this.var_807.readShort();
            this.var_807.position = 0;
         }
         return _loc1_;
      }
   }
}
