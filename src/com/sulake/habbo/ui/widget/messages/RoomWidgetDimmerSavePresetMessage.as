package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_979:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2874:int;
      
      private var var_2875:int;
      
      private var _color:uint;
      
      private var var_1179:int;
      
      private var var_2902:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_979);
         this.var_2874 = param1;
         this.var_2875 = param2;
         this._color = param3;
         this.var_1179 = param4;
         this.var_2902 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2874;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2875;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1179;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2902;
      }
   }
}
