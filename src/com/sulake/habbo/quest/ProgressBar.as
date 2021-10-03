package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   
   public class ProgressBar implements IDisposable
   {
      
      private static const const_1657:int = 3;
      
      private static const const_1656:int = 10;
       
      
      private var var_51:HabboQuestEngine;
      
      private var _window:IWindowContainer;
      
      private var var_859:int;
      
      private var var_1318:String;
      
      private var var_2746:Boolean;
      
      private var var_1319:int;
      
      private var var_1320:int;
      
      private var var_2747:int;
      
      private var var_1999:int;
      
      private var var_295:int;
      
      private var var_1595:Boolean;
      
      private var var_860:BitmapData;
      
      private var var_690:Array;
      
      private var var_2000:ColorMatrixFilter;
      
      public function ProgressBar(param1:HabboQuestEngine, param2:IWindowContainer, param3:int, param4:String, param5:Boolean, param6:Point)
      {
         this.var_690 = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0];
         this.var_2000 = new ColorMatrixFilter(this.var_690);
         super();
         this.var_51 = param1;
         this._window = param2;
         this.var_859 = param3;
         this.var_1318 = param4;
         this.var_2746 = param5;
         var _loc7_:IWindowContainer = IWindowContainer(this._window.findChildByName("progress_bar_cont"));
         if(_loc7_ == null)
         {
            _loc7_ = IWindowContainer(this.var_51.getXmlWindow("ProgressBar"));
            this._window.addChild(_loc7_);
            _loc7_.x = param6.x;
            _loc7_.y = param6.y;
            _loc7_.width = this.var_859 + const_1656;
         }
         if(param5)
         {
            new PendingImage(this.var_51,this._window.findChildByName("bar_l"),"ach_progressbar1");
            new PendingImage(this.var_51,this._window.findChildByName("bar_c"),"ach_progressbar2");
            new PendingImage(this.var_51,this._window.findChildByName("bar_r"),"ach_progressbar3");
         }
         new PendingImage(this.var_51,this._window.findChildByName("bar_a_c"),"ach_progressbar4");
         new PendingImage(this.var_51,this._window.findChildByName("bar_a_r"),"ach_progressbar5");
      }
      
      public function refresh(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = param3 != this.var_2747 || param2 != this.var_1320;
         this.var_1320 = param2;
         this.var_1319 = param1;
         this.var_1999 = this.var_295;
         this.var_2747 = param3;
         if(_loc4_)
         {
            this.var_295 = this.getProgressWidth(this.var_1319);
         }
         this.var_1595 = true;
         this.updateView();
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:IWindowContainer = IWindowContainer(this._window.findChildByName("progress_bar_cont"));
         if(_loc2_ != null)
         {
            _loc2_.visible = param1;
         }
      }
      
      public function updateView() : void
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:int = 0;
         if(!this.var_1595)
         {
            return;
         }
         var _loc1_:IBitmapWrapperWindow = IBitmapWrapperWindow(this._window.findChildByName("bar_a_c"));
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this._window.findChildByName("bar_a_r"));
         if(_loc1_.bitmap == null || _loc2_.bitmap == null)
         {
            return;
         }
         if(this.var_2746)
         {
            _loc7_ = IBitmapWrapperWindow(this._window.findChildByName("bar_c"));
            _loc8_ = IBitmapWrapperWindow(this._window.findChildByName("bar_r"));
            if(_loc7_.bitmap == null || _loc8_.bitmap == null)
            {
               return;
            }
            _loc7_.width = this.var_859;
            _loc8_.x = this.var_859 + _loc1_.x;
         }
         if(this.var_860 == null)
         {
            this.var_860 = _loc1_.bitmap.clone();
         }
         var _loc3_:int = this.getProgressWidth(this.var_1319);
         if(this.var_295 < _loc3_)
         {
            _loc9_ = Math.min(Math.abs(this.var_295 - _loc3_),Math.abs(this.var_1999 - _loc3_));
            this.var_295 = Math.min(_loc3_,this.var_295 + Math.max(1,Math.round(Math.sqrt(_loc9_))));
         }
         var _loc4_:* = this.var_295 > 0;
         _loc1_.visible = _loc4_;
         _loc2_.visible = _loc4_;
         if(_loc4_)
         {
            _loc1_.width = this.var_860.width;
            if(this.var_295 < _loc3_)
            {
               this.changeProgressColorFilter();
               _loc1_.bitmap.applyFilter(this.var_860,this.var_860.rect,new Point(0,0),this.var_2000);
            }
            else
            {
               _loc1_.bitmap.copyPixels(this.var_860,this.var_860.rect,new Point(0,0),null,null,true);
            }
            _loc1_.width = this.var_295;
            _loc2_.x = this.var_295 + _loc1_.x;
         }
         this.var_1595 = this.var_295 < _loc3_;
         var _loc5_:ITextWindow = ITextWindow(this._window.findChildByName("progress_txt"));
         var _loc6_:int = !!this.var_1595 ? int(Math.round(this.var_295 / this.var_859 * this.var_1320)) : int(this.var_1319);
         this.var_51.localization.registerParameter(this.var_1318,"progress","" + _loc6_);
         this.var_51.localization.registerParameter(this.var_1318,"limit","" + this.var_1320);
         _loc5_.caption = this.var_51.localization.getKey(this.var_1318,this.var_1318);
         _loc5_.x = const_1657 + _loc1_.x + (this.var_859 - _loc5_.width) / 2;
      }
      
      public function dispose() : void
      {
         this.var_51 = null;
         this._window = null;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_51 == null;
      }
      
      private function getProgressWidth(param1:int) : int
      {
         return Math.max(0,Math.round(this.var_859 * param1 / this.var_1320));
      }
      
      private function changeProgressColorFilter() : void
      {
         var _loc1_:int = this.getProgressWidth(this.var_1319);
         var _loc2_:int = _loc1_ - this.var_1999;
         if(_loc2_ == 0)
         {
            return;
         }
         var _loc3_:Number = (_loc1_ - this.var_295) / _loc2_;
         this.var_690[3] = _loc3_;
         this.var_690[8] = _loc3_;
         this.var_690[0] = 1 - _loc3_;
         this.var_690[6] = 1 - _loc3_;
         this.var_690[12] = 1 - _loc3_;
         this.var_2000.matrix = this.var_690;
      }
   }
}
