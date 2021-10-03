package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_321:int = 1;
      
      public static const const_205:int = 2;
      
      public static const const_293:int = 3;
      
      public static const const_351:int = 4;
      
      public static const const_287:int = 5;
      
      public static const const_436:int = 1;
      
      public static const const_946:int = 2;
      
      public static const const_768:int = 3;
      
      public static const const_978:int = 4;
      
      public static const const_264:int = 5;
      
      public static const const_787:int = 6;
      
      public static const const_794:int = 7;
      
      public static const const_423:int = 8;
      
      public static const const_503:int = 9;
      
      public static const const_2155:int = 10;
      
      public static const const_733:int = 11;
      
      public static const const_549:int = 12;
       
      
      private var var_488:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_488 = new Array();
         this.var_488.push(new Tab(this._navigator,const_321,const_549,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_579));
         this.var_488.push(new Tab(this._navigator,const_205,const_436,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_579));
         this.var_488.push(new Tab(this._navigator,const_351,const_733,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1316));
         this.var_488.push(new Tab(this._navigator,const_293,const_264,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_579));
         this.var_488.push(new Tab(this._navigator,const_287,const_423,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_1393));
         this.setSelectedTab(const_321);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_351;
      }
      
      public function get tabs() : Array
      {
         return this.var_488;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_488)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_488)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_488)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
