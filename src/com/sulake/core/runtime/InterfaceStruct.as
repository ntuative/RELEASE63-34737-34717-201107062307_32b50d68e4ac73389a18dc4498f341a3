package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1441:IID;
      
      private var var_1717:String;
      
      private var var_123:IUnknown;
      
      private var var_760:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1441 = param1;
         this.var_1717 = getQualifiedClassName(this.var_1441);
         this.var_123 = param2;
         this.var_760 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1441;
      }
      
      public function get iis() : String
      {
         return this.var_1717;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_123;
      }
      
      public function get references() : uint
      {
         return this.var_760;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_123 == null;
      }
      
      public function dispose() : void
      {
         this.var_1441 = null;
         this.var_1717 = null;
         this.var_123 = null;
         this.var_760 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_760;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_760) : uint(0);
      }
   }
}
