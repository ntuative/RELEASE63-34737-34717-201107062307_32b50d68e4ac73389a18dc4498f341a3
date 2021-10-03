package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1473:int = 80;
       
      
      private var var_524:Map;
      
      private var var_949:String = "";
      
      private var var_1455:Array;
      
      public function UserRegistry()
      {
         this.var_524 = new Map();
         this.var_1455 = new Array();
         super();
      }
      
      public function getRegistry() : Map
      {
         return this.var_524;
      }
      
      public function registerRoom(param1:String) : void
      {
         this.var_949 = param1;
         if(this.var_949 != "")
         {
            this.addRoomNameForMissing();
         }
      }
      
      public function unregisterRoom() : void
      {
         this.var_949 = "";
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(this.var_524.getValue(param1) != null)
         {
            this.var_524.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,this.var_949);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && this.var_949 == "")
         {
            this.var_1455.push(param1);
         }
         this.var_524.add(param1,_loc4_);
         this.purgeUserIndex();
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(this.var_524.length > const_1473)
         {
            _loc1_ = this.var_524.getKey(0);
            this.var_524.remove(_loc1_);
         }
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(this.var_1455.length > 0)
         {
            _loc1_ = this.var_524.getValue(this.var_1455.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = this.var_949;
            }
         }
      }
   }
}
