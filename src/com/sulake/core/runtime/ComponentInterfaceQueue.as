package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1801:IID;
      
      private var var_1147:Boolean;
      
      private var var_1207:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1801 = param1;
         this.var_1207 = new Array();
         this.var_1147 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1801;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1147;
      }
      
      public function get receivers() : Array
      {
         return this.var_1207;
      }
      
      public function dispose() : void
      {
         if(!this.var_1147)
         {
            this.var_1147 = true;
            this.var_1801 = null;
            while(this.var_1207.length > 0)
            {
               this.var_1207.pop();
            }
            this.var_1207 = null;
         }
      }
   }
}
