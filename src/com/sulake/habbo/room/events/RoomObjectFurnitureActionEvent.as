package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectFurnitureActionEvent extends RoomObjectEvent
   {
      
      public static const const_567:String = "ROFCAE_DICE_OFF";
      
      public static const const_649:String = "ROFCAE_DICE_ACTIVATE";
      
      public static const const_617:String = "ROFCAE_USE_HABBOWHEEL";
      
      public static const const_639:String = "ROFCAE_STICKIE";
      
      public static const const_635:String = "ROFCAE_VIRAL_GIFT";
      
      public static const const_607:String = "ROFCAE_ENTER_ONEWAYDOOR";
      
      public static const const_658:String = "ROFCAE_QUEST_VENDING";
      
      public static const const_500:String = "ROFCAE_SOUND_MACHINE_INIT";
      
      public static const const_514:String = "ROFCAE_SOUND_MACHINE_START";
      
      public static const const_561:String = "ROFCAE_SOUND_MACHINE_STOP";
      
      public static const const_601:String = "ROFCAE_SOUND_MACHINE_DISPOSE";
      
      public static const const_595:String = "ROFCAE_JUKEBOX_INIT";
      
      public static const const_499:String = "ROFCAE_JUKEBOX_START";
      
      public static const const_502:String = "ROFCAE_JUKEBOX_MACHINE_STOP";
      
      public static const const_665:String = "ROFCAE_JUKEBOX_DISPOSE";
      
      public static const const_254:String = "ROFCAE_MOUSE_BUTTON";
      
      public static const const_323:String = "ROFCAE_MOUSE_ARROW";
       
      
      public function RoomObjectFurnitureActionEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param3,param4,param5);
      }
   }
}
