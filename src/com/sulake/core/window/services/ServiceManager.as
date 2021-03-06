package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_3085:uint;
      
      private var _root:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_638:IWindowContext;
      
      private var var_1325:IMouseDraggingService;
      
      private var var_1327:IMouseScalingService;
      
      private var var_1326:IMouseListenerService;
      
      private var var_1328:IFocusManagerService;
      
      private var var_1329:IToolTipAgentService;
      
      private var var_1330:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_3085 = 0;
         this._root = param2;
         this.var_638 = param1;
         this.var_1325 = new WindowMouseDragger(param2);
         this.var_1327 = new WindowMouseScaler(param2);
         this.var_1326 = new WindowMouseListener(param2);
         this.var_1328 = new FocusManager(param2);
         this.var_1329 = new WindowToolTipAgent(param2);
         this.var_1330 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1325 != null)
         {
            this.var_1325.dispose();
            this.var_1325 = null;
         }
         if(this.var_1327 != null)
         {
            this.var_1327.dispose();
            this.var_1327 = null;
         }
         if(this.var_1326 != null)
         {
            this.var_1326.dispose();
            this.var_1326 = null;
         }
         if(this.var_1328 != null)
         {
            this.var_1328.dispose();
            this.var_1328 = null;
         }
         if(this.var_1329 != null)
         {
            this.var_1329.dispose();
            this.var_1329 = null;
         }
         if(this.var_1330 != null)
         {
            this.var_1330.dispose();
            this.var_1330 = null;
         }
         this._root = null;
         this.var_638 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1325;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1327;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1326;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1328;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1329;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1330;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
