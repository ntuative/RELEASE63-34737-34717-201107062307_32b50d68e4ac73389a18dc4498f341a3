package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_824:TileHeightMap = null;
      
      private var var_1271:LegacyWallGeometry = null;
      
      private var var_1270:RoomCamera = null;
      
      private var var_826:SelectedRoomObjectData = null;
      
      private var var_825:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_547:Map;
      
      private var var_548:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_547 = new Map();
         this.var_548 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1271 = new LegacyWallGeometry();
         this.var_1270 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_824;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_824 != null)
         {
            this.var_824.dispose();
         }
         this.var_824 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1271;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1270;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_826;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_826 != null)
         {
            this.var_826.dispose();
         }
         this.var_826 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_825;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_825 != null)
         {
            this.var_825.dispose();
         }
         this.var_825 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_824 != null)
         {
            this.var_824.dispose();
            this.var_824 = null;
         }
         if(this.var_1271 != null)
         {
            this.var_1271.dispose();
            this.var_1271 = null;
         }
         if(this.var_1270 != null)
         {
            this.var_1270.dispose();
            this.var_1270 = null;
         }
         if(this.var_826 != null)
         {
            this.var_826.dispose();
            this.var_826 = null;
         }
         if(this.var_825 != null)
         {
            this.var_825.dispose();
            this.var_825 = null;
         }
         if(this.var_547 != null)
         {
            this.var_547.dispose();
            this.var_547 = null;
         }
         if(this.var_548 != null)
         {
            this.var_548.dispose();
            this.var_548 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_547.remove(param1.id);
            this.var_547.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_547.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_547.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_547.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_548.remove(param1.id);
            this.var_548.add(param1.id,param1);
         }
      }
      
      public function method_4() : FurnitureData
      {
         if(this.var_548.length > 0)
         {
            return this.getWallItemDataWithId(this.var_548.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_548.remove(param1);
      }
   }
}
