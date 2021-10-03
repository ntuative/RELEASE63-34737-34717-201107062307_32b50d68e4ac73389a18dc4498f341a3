package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1925:String = "WE_DESTROY";
      
      public static const const_355:String = "WE_DESTROYED";
      
      public static const const_1784:String = "WE_OPEN";
      
      public static const const_1912:String = "WE_OPENED";
      
      public static const const_1862:String = "WE_CLOSE";
      
      public static const const_1872:String = "WE_CLOSED";
      
      public static const const_2030:String = "WE_FOCUS";
      
      public static const const_372:String = "WE_FOCUSED";
      
      public static const const_1864:String = "WE_UNFOCUS";
      
      public static const const_2007:String = "WE_UNFOCUSED";
      
      public static const const_1937:String = "WE_ACTIVATE";
      
      public static const const_529:String = "WE_ACTIVATED";
      
      public static const const_1865:String = "WE_DEACTIVATE";
      
      public static const const_495:String = "WE_DEACTIVATED";
      
      public static const const_366:String = "WE_SELECT";
      
      public static const const_48:String = "WE_SELECTED";
      
      public static const const_643:String = "WE_UNSELECT";
      
      public static const const_616:String = "WE_UNSELECTED";
      
      public static const const_2023:String = "WE_LOCK";
      
      public static const const_2014:String = "WE_LOCKED";
      
      public static const const_1820:String = "WE_UNLOCK";
      
      public static const const_1854:String = "WE_UNLOCKED";
      
      public static const const_938:String = "WE_ENABLE";
      
      public static const const_305:String = "WE_ENABLED";
      
      public static const const_762:String = "WE_DISABLE";
      
      public static const const_260:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_427:String = "WE_RELOCATED";
      
      public static const const_1310:String = "WE_RESIZE";
      
      public static const const_40:String = "WE_RESIZED";
      
      public static const const_1734:String = "WE_MINIMIZE";
      
      public static const const_1789:String = "WE_MINIMIZED";
      
      public static const const_1927:String = "WE_MAXIMIZE";
      
      public static const const_1923:String = "WE_MAXIMIZED";
      
      public static const const_1960:String = "WE_RESTORE";
      
      public static const const_1826:String = "WE_RESTORED";
      
      public static const const_597:String = "WE_CHILD_ADDED";
      
      public static const const_420:String = "WE_CHILD_REMOVED";
      
      public static const const_236:String = "WE_CHILD_RELOCATED";
      
      public static const const_143:String = "WE_CHILD_RESIZED";
      
      public static const const_362:String = "WE_CHILD_ACTIVATED";
      
      public static const const_588:String = "WE_PARENT_ADDED";
      
      public static const const_1901:String = "WE_PARENT_REMOVED";
      
      public static const const_1869:String = "WE_PARENT_RELOCATED";
      
      public static const const_609:String = "WE_PARENT_RESIZED";
      
      public static const const_1213:String = "WE_PARENT_ACTIVATED";
      
      public static const const_167:String = "WE_OK";
      
      public static const const_515:String = "WE_CANCEL";
      
      public static const const_108:String = "WE_CHANGE";
      
      public static const const_650:String = "WE_SCROLL";
      
      public static const const_112:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_755:IWindow;
      
      protected var var_1154:Boolean;
      
      protected var var_512:Boolean;
      
      protected var var_167:Boolean;
      
      protected var var_756:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_755 = param3;
         _loc5_.var_512 = param4;
         _loc5_.var_167 = false;
         _loc5_.var_756 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_755;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_512;
      }
      
      public function recycle() : void
      {
         if(this.var_167)
         {
            throw new Error("Event already recycled!");
         }
         this.var_755 = null;
         this._window = null;
         this.var_167 = true;
         this.var_1154 = false;
         this.var_756.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1154;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1154 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1154;
      }
      
      public function stopPropagation() : void
      {
         this.var_1154 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1154 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_512 + " window: " + this._window + " }";
      }
   }
}
