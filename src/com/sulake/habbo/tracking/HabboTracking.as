package com.sulake.habbo.tracking
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.runtime.events.ErrorEvent;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.habbo.advertisement.IAdManager;
   import com.sulake.habbo.advertisement.events.AdEvent;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.catalog.enum.HabboCatalogTrackingEvent;
   import com.sulake.habbo.catalog.navigation.events.CatalogPageOpenedEvent;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.enum.HabboCommunicationEvent;
   import com.sulake.habbo.communication.enum.HabboHotelViewEvent;
   import com.sulake.habbo.communication.messages.incoming.handshake.AuthenticationOKMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.notifications.HabboAchievementNotificationMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.room.engine.RoomEntryInfoMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.room.session.CloseConnectionMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.tracking.EventLogMessageComposer;
   import com.sulake.habbo.communication.messages.parser.notifications.HabboAchievementNotificationMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.friendlist.IHabboFriendList;
   import com.sulake.habbo.friendlist.events.HabboFriendListTrackingEvent;
   import com.sulake.habbo.help.IHabboHelp;
   import com.sulake.habbo.help.enum.HabboHelpTrackingEvent;
   import com.sulake.habbo.inventory.IHabboInventory;
   import com.sulake.habbo.inventory.events.HabboInventoryTrackingEvent;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.navigator.IHabboNavigator;
   import com.sulake.habbo.navigator.events.HabboNavigatorEvent;
   import com.sulake.habbo.navigator.events.HabboNavigatorTrackingEvent;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.room.events.RoomEngineEvent;
   import com.sulake.habbo.room.events.RoomObjectRoomAdEvent;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowTrackingEvent;
   import com.sulake.iid.IIDHabboAdManager;
   import com.sulake.iid.IIDHabboCatalog;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboFriendList;
   import com.sulake.iid.IIDHabboHelp;
   import com.sulake.iid.IIDHabboInventory;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboNavigator;
   import com.sulake.iid.IIDHabboToolbar;
   import com.sulake.iid.IIDRoomEngine;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.net.navigateToURL;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import iid.IIDHabboWindowManager;
   
   public class HabboTracking extends Component implements IHabboTracking, IUpdateReceiver
   {
      
      private static const const_1122:uint = 11;
      
      private static var _instance:HabboTracking;
       
      
      private var var_142:IHabboConfigurationManager;
      
      private var _localization:IHabboLocalizationManager;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_330:IAdManager;
      
      private var _catalog:IHabboCatalog;
      
      private var _navigator:IHabboNavigator;
      
      private var var_12:IHabboInventory;
      
      private var var_228:IHabboFriendList;
      
      private var var_1338:IHabboWindowManager;
      
      private var _toolbar:IHabboToolbar;
      
      private var var_210:IHabboHelp;
      
      private var var_1606:Array;
      
      private var _crashed:Boolean = false;
      
      private var var_298:PerformanceTracker = null;
      
      private var var_467:FramerateTracker = null;
      
      private var var_299:LatencyTracker = null;
      
      private var var_695:LagWarningLogger = null;
      
      private var var_468:ToolbarClickTracker = null;
      
      private var _roomEngine:IRoomEngine = null;
      
      private var _connection:IConnection = null;
      
      private var var_2787:Boolean = false;
      
      private var var_565:int = -1;
      
      private var var_2029:int = 0;
      
      private var var_2028:int = 0;
      
      private var var_345:Timer;
      
      private var var_2030:int = 0;
      
      public function HabboTracking(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         if(_instance == null)
         {
            _instance = this;
         }
         super(param1,param2,param3);
         this.var_298 = new PerformanceTracker();
         this.var_467 = new FramerateTracker();
         this.var_299 = new LatencyTracker();
         this.var_695 = new LagWarningLogger();
         this.var_468 = new ToolbarClickTracker(this);
         this.var_1606 = new Array(const_1122);
         var _loc4_:int = 0;
         while(_loc4_ < const_1122)
         {
            this.var_1606[_loc4_] = 0;
            _loc4_++;
         }
         var _loc5_:IContext = param1.root;
         if(_loc5_ != null)
         {
            _loc5_.events.addEventListener(Component.COMPONENT_EVENT_ERROR,this.onError);
            _loc5_.events.addEventListener(Component.COMPONENT_EVENT_RUNNING,this.onCoreRunning);
            ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1922,new Date().getTime().toString());
            ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1793,!true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown");
            ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1852,Capabilities.serverString);
            ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_843,String(false));
            ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1245,String(0));
         }
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationReady);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationReady);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationReady);
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDHabboNavigator(),this.onNavigatorReady);
         queueInterface(new IIDHabboCatalog(),this.onCatalogReady);
         queueInterface(new IIDHabboInventory(),this.onInventoryReady);
         queueInterface(new IIDHabboFriendList(),this.onFriendlistReady);
         queueInterface(new IIDHabboHelp(),this.onHelpReady);
         queueInterface(new IIDRoomEngine(),this.onRoomEngineReady);
         queueInterface(new IIDHabboAdManager(),this.onAdManagerReady);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
         registerUpdateReceiver(this,1);
      }
      
      public static function getInstance() : HabboTracking
      {
         return _instance;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(_instance == this)
            {
               _instance = null;
            }
            if(this._communication)
            {
               this._communication.release(new IIDHabboCommunicationManager());
               this._communication = null;
            }
            if(this.var_142)
            {
               this.var_142.release(new IIDHabboConfigurationManager());
               this.var_142 = null;
            }
            if(this._localization)
            {
               this._localization.release(new IIDHabboLocalizationManager());
               this._localization = null;
            }
            if(this.var_1338)
            {
               this.var_1338.release(new IIDHabboWindowManager());
               this.var_1338 = null;
            }
            if(this.var_330)
            {
               this.var_330.release(new IIDHabboAdManager());
               this.var_330 = null;
            }
            if(this._navigator)
            {
               if(!this._navigator.disposed)
               {
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_CLOSED,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_EVENTS,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ROOMS,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ME,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCH,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_OFFICIAL,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_LATEST_EVENTS,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FAVOURITES,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FRIENDS_ROOMS,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_HISTORY,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_ROOMS,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_OFFICIALROOMS,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_POPULAR_ROOMS,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WHERE_MY_FRIENDS_ARE,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WITH_HIGHEST_SCORE,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TAG_SEARCH,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TEXT_SEARCH,this.onNavigatorTrackingEvent);
                  this._navigator.events.removeEventListener(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED,this.onRoomSettingsTrackingEvent);
                  this._navigator.events.removeEventListener(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT,this.onRoomSettingsTrackingEvent);
                  this._navigator.events.removeEventListener(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_ADVANCED,this.onRoomSettingsTrackingEvent);
                  this._navigator.events.removeEventListener(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS,this.onRoomSettingsTrackingEvent);
                  this._navigator.events.removeEventListener(HabboNavigatorEvent.const_332,this.onZoomToggle);
               }
               this._navigator.release(new IIDHabboNavigator());
               this._navigator = null;
            }
            if(this._catalog)
            {
               if(!this._catalog.disposed)
               {
                  this._catalog.events.removeEventListener(HabboCatalogTrackingEvent.HABBO_CATALOG_TRACKING_EVENT_CLOSE,this.onCatalogTrackingEvent);
                  this._catalog.events.removeEventListener(HabboCatalogTrackingEvent.HABBO_CATALOG_TRACKING_EVENT_OPEN,this.onCatalogTrackingEvent);
               }
               this._catalog.release(new IIDHabboCatalog());
               this._catalog = null;
            }
            if(this.var_12)
            {
               if(!this.var_12.disposed)
               {
                  Component(this.var_12).events.removeEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_CLOSED,this.onInvetoryTrackingEvent);
                  Component(this.var_12).events.removeEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_FURNI,this.onInvetoryTrackingEvent);
                  Component(this.var_12).events.removeEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_POSTERS,this.onInvetoryTrackingEvent);
                  Component(this.var_12).events.removeEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_BADGES,this.onInvetoryTrackingEvent);
                  Component(this.var_12).events.removeEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_ACHIEVEMENTS,this.onInvetoryTrackingEvent);
                  Component(this.var_12).events.removeEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_TRADING,this.onInvetoryTrackingEvent);
               }
               this.var_12.release(new IIDHabboInventory());
               this.var_12 = null;
            }
            if(this.var_228)
            {
               if(!this.var_228.disposed)
               {
                  Component(this.var_228).events.removeEventListener(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_CLOSED,this.onFriendlistTrackingEvent);
                  Component(this.var_228).events.removeEventListener(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_FRIENDS,this.onFriendlistTrackingEvent);
                  Component(this.var_228).events.removeEventListener(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_SEARCH,this.onFriendlistTrackingEvent);
                  Component(this.var_228).events.removeEventListener(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_REQUEST,this.onFriendlistTrackingEvent);
                  Component(this.var_228).events.removeEventListener(HabboFriendListTrackingEvent.const_623,this.onFriendlistTrackingEvent);
               }
               this.var_228.release(new IIDHabboFriendList());
               this.var_228 = null;
            }
            if(this.var_210)
            {
               if(!this.var_210.disposed)
               {
                  this.var_210.events.removeEventListener(HabboHelpTrackingEvent.HABBO_HELP_TRACKING_EVENT_CLOSED,this.onHelpTrackingEvent);
                  this.var_210.events.removeEventListener(HabboHelpTrackingEvent.HABBO_HELP_TRACKING_EVENT_DEFAULT,this.onHelpTrackingEvent);
               }
               this.var_210.release(new IIDHabboHelp());
               this.var_210 = null;
            }
            if(this._toolbar)
            {
               if(!this._toolbar.disposed)
               {
                  this._toolbar.events.removeEventListener(HabboToolbarEvent.const_49,this.onToolbarClick);
               }
               this._toolbar.release(new IIDHabboToolbar());
               this._toolbar = null;
            }
            if(this._roomEngine)
            {
               if(!this._roomEngine.disposed)
               {
                  this._roomEngine.events.removeEventListener(RoomObjectRoomAdEvent.const_229,this.onRoomAdClick);
                  this._roomEngine.events.removeEventListener(RoomEngineEvent.const_181,this.onRoomAction);
                  this._roomEngine.events.removeEventListener(RoomEngineEvent.const_340,this.onRoomAction);
               }
               this._roomEngine.release(new IIDRoomEngine());
               this._roomEngine = null;
            }
            removeUpdateReceiver(this);
            if(this.var_298 != null)
            {
               this.var_298.dispose();
               this.var_298 = null;
            }
            if(this.var_467 != null)
            {
               this.var_467.dispose();
               this.var_467 = null;
            }
            if(this.var_299 != null)
            {
               this.var_299.dispose();
               this.var_299 = null;
            }
            if(this.var_468)
            {
               this.var_468.dispose();
               this.var_468 = null;
            }
            if(this.var_345)
            {
               this.var_345.stop();
               this.var_345.removeEventListener(TimerEvent.TIMER,this.onRoomActionTimerEvent);
               this.var_345 = null;
            }
            this._connection = null;
            super.dispose();
         }
      }
      
      private function setErrorContextFlag(param1:uint, param2:uint) : void
      {
         this.var_1606[param2] = param1;
      }
      
      private function onConfigurationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_142 = IHabboConfigurationManager(param2);
         if(this.var_142)
         {
            if(this.var_299 != null)
            {
               this.var_299.configuration = this.var_142;
            }
            if(this.var_298 != null)
            {
               this.var_298.configuration = this.var_142;
            }
            this.setErrorContextFlag(1,0);
            this.trackLoginStep(HabboLoginTrackingStep.const_1756);
            if(this.var_142)
            {
               if(this.var_695 != null)
               {
                  this.var_695.configure(this.var_142);
               }
               if(this.var_467 != null)
               {
                  this.var_467.configure(this.var_142);
               }
               if(this.var_468 != null)
               {
                  this.var_468.configure(this.var_142);
               }
            }
         }
      }
      
      private function onLocalizationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._localization = IHabboLocalizationManager(param2);
         this.setErrorContextFlag(1,1);
         this.trackLoginStep(HabboLoginTrackingStep.const_197);
      }
      
      private function onCommunicationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._communication = IHabboCommunicationManager(param2);
         if(this._communication != null)
         {
            this._communication.addHabboConnectionMessageEvent(new AuthenticationOKMessageEvent(this.onAuthOK));
            this._communication.addHabboConnectionMessageEvent(new RoomEntryInfoMessageEvent(this.onRoomEnter));
            this._communication.addHabboConnectionMessageEvent(new HabboAchievementNotificationMessageEvent(this.onAchievementNotification));
            this._connection = this._communication.getHabboMainConnection(this.onConnectionReady);
            if(this._connection != null)
            {
               this.onConnectionReady(this._connection);
            }
         }
         Component(context).events.addEventListener(HabboCommunicationEvent.INIT,this.onConnectionEvent);
         Component(context).events.addEventListener(HabboCommunicationEvent.const_861,this.onConnectionEvent);
         Component(context).events.addEventListener(HabboCommunicationEvent.const_311,this.onConnectionEvent);
         Component(context).events.addEventListener(HabboCommunicationEvent.const_230,this.onConnectionEvent);
         Component(context).events.addEventListener(HabboCommunicationEvent.const_223,this.onConnectionEvent);
         Component(context).events.addEventListener(HabboCommunicationEvent.const_307,this.onConnectionEvent);
         Component(context).events.addEventListener(HabboHotelViewEvent.const_879,this.onHotelViewEvent);
         Component(context).events.addEventListener(HabboHotelViewEvent.const_78,this.onHotelViewEvent);
         Component(context).events.addEventListener(HabboHotelViewEvent.const_543,this.onHotelViewEvent);
      }
      
      private function onConnectionReady(param1:IConnection) : void
      {
         if(disposed)
         {
            return;
         }
         if(param1 != null)
         {
            this._connection = param1;
            if(this.var_298 != null)
            {
               this.var_298.connection = param1;
            }
            if(this.var_299 != null)
            {
               this.var_299.communication = this._communication;
               this.var_299.connection = param1;
            }
            if(this.var_695 != null)
            {
               this.var_695.connection = param1;
            }
         }
      }
      
      private function onHotelViewEvent(param1:Event) : void
      {
         if(param1.type == HabboHotelViewEvent.const_879)
         {
            this.trackLoginStep(HabboLoginTrackingStep.const_1910);
         }
         else if(param1.type == HabboHotelViewEvent.const_543)
         {
            this.trackLoginStep(HabboLoginTrackingStep.const_1845);
         }
         else if(param1.type == HabboHotelViewEvent.const_78)
         {
            this.trackLoginStep(HabboLoginTrackingStep.const_1929);
         }
      }
      
      private function onConnectionEvent(param1:Event) : void
      {
         switch(param1.type)
         {
            case HabboCommunicationEvent.INIT:
               this.trackLoginStep(HabboLoginTrackingStep.const_1774);
               break;
            case HabboCommunicationEvent.const_861:
               this.trackLoginStep(HabboLoginTrackingStep.const_1970,String(this._communication.port));
               break;
            case HabboCommunicationEvent.const_311:
               this.trackLoginStep(HabboLoginTrackingStep.const_311);
               break;
            case HabboCommunicationEvent.const_223:
               this.trackLoginStep(HabboLoginTrackingStep.const_223);
               break;
            case HabboCommunicationEvent.const_230:
               this.setErrorContextFlag(2,0);
               this.trackLoginStep(HabboLoginTrackingStep.const_230);
               break;
            case HabboCommunicationEvent.const_307:
               this.setErrorContextFlag(3,0);
               this.trackLoginStep(HabboLoginTrackingStep.const_307);
               if(this.var_299 != null)
               {
                  this.var_299.init();
               }
         }
         if(this._communication)
         {
            Component(context).events.removeEventListener(param1.type,this.onConnectionEvent);
         }
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_1338 = IHabboWindowManager(param2);
         if(this.var_1338)
         {
            Component(context).events.addEventListener(HabboWindowTrackingEvent.HABBO_WINDOW_TRACKING_EVENT_INPUT,this.onWindowEvent);
            Component(context).events.addEventListener(HabboWindowTrackingEvent.HABBO_WINDOW_TRACKING_EVENT_RENDER,this.onWindowEvent);
            Component(context).events.addEventListener(HabboWindowTrackingEvent.HABBO_WINDOW_TRACKING_EVENT_SLEEP,this.onWindowEvent);
         }
      }
      
      private function onWindowEvent(param1:Event) : void
      {
         if(param1.type == HabboWindowTrackingEvent.HABBO_WINDOW_TRACKING_EVENT_SLEEP)
         {
            this.setErrorContextFlag(0,3);
         }
         else if(param1.type == HabboWindowTrackingEvent.HABBO_WINDOW_TRACKING_EVENT_RENDER)
         {
            this.setErrorContextFlag(1,3);
         }
         else if(param1.type == HabboWindowTrackingEvent.HABBO_WINDOW_TRACKING_EVENT_INPUT)
         {
            this.setErrorContextFlag(2,3);
         }
      }
      
      private function onError(param1:ErrorEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:* = null;
         var _loc9_:int = 0;
         if(param1.critical && !this._crashed)
         {
            this._crashed = true;
            ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_20,new Date().getTime().toString());
            if(this.var_142)
            {
               if(this.var_142.keyExists("client.fatal.error.url"))
               {
                  _loc2_ = this.var_142.getKey("client.fatal.error.url");
                  _loc3_ = new URLRequest(_loc2_);
                  _loc4_ = new URLVariables();
                  _loc5_ = ErrorReportStorage.getParameterNames();
                  _loc6_ = _loc5_.length;
                  _loc7_ = 0;
                  while(_loc7_ < _loc6_)
                  {
                     _loc4_[_loc5_[_loc7_]] = ErrorReportStorage.getParameter(_loc5_[_loc7_]);
                     _loc7_++;
                  }
                  _loc8_ = "";
                  for each(_loc9_ in this.var_1606)
                  {
                     _loc8_ += String(_loc9_);
                  }
                  _loc4_["null"] = _loc8_;
                  if(this.var_298 != null)
                  {
                     _loc4_["null"] = this.var_298.flashVersion;
                     _loc4_["null"] = this.var_298.averageUpdateInterval;
                  }
                  ErrorReportStorage.addDebugData("Flash memory usage","Memory usage: " + Math.round(0 / (1024 * 1024)) + " MB");
                  _loc4_["null"] = ErrorReportStorage.getDebugData();
                  _loc3_.data = _loc4_;
                  _loc3_.method = URLRequestMethod.POST;
                  navigateToURL(_loc3_,"_self");
               }
            }
         }
         this.logError(context.root.getLastErrorMessage());
      }
      
      private function onCoreRunning(param1:Event) : void
      {
         this.trackLoginStep(HabboLoginTrackingStep.const_1179);
         if(context && false)
         {
            context.root.events.removeEventListener(HabboLoginTrackingStep.const_1179,this.onCoreRunning);
         }
      }
      
      private function onNavigatorReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._navigator = IHabboNavigator(param2) as IHabboNavigator;
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_CLOSED,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_EVENTS,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ROOMS,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ME,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCH,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_OFFICIAL,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_LATEST_EVENTS,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FAVOURITES,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FRIENDS_ROOMS,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_HISTORY,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_ROOMS,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_OFFICIALROOMS,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_POPULAR_ROOMS,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WHERE_MY_FRIENDS_ARE,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WITH_HIGHEST_SCORE,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TAG_SEARCH,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TEXT_SEARCH,this.onNavigatorTrackingEvent);
         this._navigator.events.addEventListener(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED,this.onRoomSettingsTrackingEvent);
         this._navigator.events.addEventListener(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT,this.onRoomSettingsTrackingEvent);
         this._navigator.events.addEventListener(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_ADVANCED,this.onRoomSettingsTrackingEvent);
         this._navigator.events.addEventListener(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS,this.onRoomSettingsTrackingEvent);
         this._navigator.events.addEventListener(HabboNavigatorEvent.const_332,this.onZoomToggle);
      }
      
      private function onNavigatorTrackingEvent(param1:Event) : void
      {
         switch(param1.type)
         {
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_CLOSED:
               this.setErrorContextFlag(0,4);
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_EVENTS:
               this.setErrorContextFlag(1,4);
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ROOMS:
               this.setErrorContextFlag(2,4);
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_ME:
               this.setErrorContextFlag(3,4);
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_OFFICIAL:
               this.setErrorContextFlag(4,4);
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCH:
               this.setErrorContextFlag(5,4);
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_LATEST_EVENTS:
               this.legacyTrackGoogle("navigator","latest_events");
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FAVOURITES:
               this.legacyTrackGoogle("navigator","my_favorites");
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_FRIENDS_ROOMS:
               this.legacyTrackGoogle("navigator","my_friends_rooms");
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_HISTORY:
               this.legacyTrackGoogle("navigator","my_history");
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_MY_ROOMS:
               this.legacyTrackGoogle("navigator","my_rooms");
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_OFFICIALROOMS:
               this.legacyTrackGoogle("navigator","official_rooms");
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_POPULAR_ROOMS:
               this.legacyTrackGoogle("navigator","popular_rooms");
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WHERE_MY_FRIENDS_ARE:
               this.legacyTrackGoogle("navigator","rooms_where_my_friends_are");
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_ROOMS_WITH_HIGHEST_SCORE:
               this.legacyTrackGoogle("navigator","highest_score");
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TAG_SEARCH:
               this.legacyTrackGoogle("navigator","tag_search");
               break;
            case HabboNavigatorTrackingEvent.HABBO_NAVIGATOR_TRACKING_EVENT_SEARCHTYPE_TEXT_SEARCH:
               this.legacyTrackGoogle("navigator","text_search");
         }
      }
      
      private function onRoomSettingsTrackingEvent(param1:Event) : void
      {
         switch(param1.type)
         {
            case HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED:
               this.setErrorContextFlag(0,7);
               break;
            case HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT:
               this.setErrorContextFlag(1,7);
               break;
            case HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_ADVANCED:
               this.setErrorContextFlag(2,7);
         }
      }
      
      private function onInventoryReady(param1:IID, param2:IUnknown) : void
      {
         this.var_12 = param2 as IHabboInventory;
         Component(this.var_12).events.addEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_CLOSED,this.onInvetoryTrackingEvent);
         Component(this.var_12).events.addEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_FURNI,this.onInvetoryTrackingEvent);
         Component(this.var_12).events.addEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_POSTERS,this.onInvetoryTrackingEvent);
         Component(this.var_12).events.addEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_BADGES,this.onInvetoryTrackingEvent);
         Component(this.var_12).events.addEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_ACHIEVEMENTS,this.onInvetoryTrackingEvent);
         Component(this.var_12).events.addEventListener(HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_TRADING,this.onInvetoryTrackingEvent);
      }
      
      private function onInvetoryTrackingEvent(param1:Event) : void
      {
         switch(param1.type)
         {
            case HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_CLOSED:
               this.setErrorContextFlag(0,5);
               break;
            case HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_FURNI:
               this.setErrorContextFlag(1,5);
               break;
            case HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_POSTERS:
               this.setErrorContextFlag(2,5);
               break;
            case HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_BADGES:
               this.setErrorContextFlag(3,5);
               break;
            case HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_ACHIEVEMENTS:
               this.setErrorContextFlag(4,5);
               break;
            case HabboInventoryTrackingEvent.HABBO_INVENTORY_TRACKING_EVENT_TRADING:
               this.setErrorContextFlag(5,5);
         }
      }
      
      private function onCatalogReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._catalog = IHabboCatalog(param2) as IHabboCatalog;
         this._catalog.events.addEventListener(CatalogPageOpenedEvent.CATALOG_PAGE_OPENED,this.onCatalogPageOpened);
         this._catalog.events.addEventListener(HabboCatalogTrackingEvent.HABBO_CATALOG_TRACKING_EVENT_OPEN,this.onCatalogTrackingEvent);
         this._catalog.events.addEventListener(HabboCatalogTrackingEvent.HABBO_CATALOG_TRACKING_EVENT_CLOSE,this.onCatalogTrackingEvent);
      }
      
      private function onAchievementNotification(param1:HabboAchievementNotificationMessageEvent) : void
      {
         var _loc2_:HabboAchievementNotificationMessageParser = param1.getParser();
         this.legacyTrackGoogle("achievement","achievement",[_loc2_.data.badgeCode]);
      }
      
      private function onCatalogPageOpened(param1:CatalogPageOpenedEvent) : void
      {
         this.legacyTrackGoogle("catalogue","page",[param1.pageLocalization]);
      }
      
      private function onCatalogTrackingEvent(param1:Event) : void
      {
         switch(param1.type)
         {
            case HabboCatalogTrackingEvent.HABBO_CATALOG_TRACKING_EVENT_OPEN:
               this.setErrorContextFlag(1,9);
               break;
            case HabboCatalogTrackingEvent.HABBO_CATALOG_TRACKING_EVENT_CLOSE:
               this.setErrorContextFlag(0,9);
         }
      }
      
      private function onFriendlistReady(param1:IID, param2:IUnknown) : void
      {
         this.var_228 = param2 as IHabboFriendList;
         Component(this.var_228).events.addEventListener(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_CLOSED,this.onFriendlistTrackingEvent);
         Component(this.var_228).events.addEventListener(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_FRIENDS,this.onFriendlistTrackingEvent);
         Component(this.var_228).events.addEventListener(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_SEARCH,this.onFriendlistTrackingEvent);
         Component(this.var_228).events.addEventListener(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_REQUEST,this.onFriendlistTrackingEvent);
         Component(this.var_228).events.addEventListener(HabboFriendListTrackingEvent.const_623,this.onFriendlistTrackingEvent);
      }
      
      private function onFriendlistTrackingEvent(param1:Event) : void
      {
         switch(param1.type)
         {
            case HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_CLOSED:
               this.setErrorContextFlag(0,6);
               break;
            case HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_FRIENDS:
               this.setErrorContextFlag(1,6);
               break;
            case HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_SEARCH:
               this.setErrorContextFlag(2,6);
               break;
            case HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_REQUEST:
               this.setErrorContextFlag(3,6);
               break;
            case HabboFriendListTrackingEvent.const_623:
               this.setErrorContextFlag(4,6);
         }
      }
      
      private function onHelpReady(param1:IID, param2:IUnknown) : void
      {
         this.var_210 = param2 as IHabboHelp;
         this.var_210.events.addEventListener(HabboHelpTrackingEvent.HABBO_HELP_TRACKING_EVENT_CLOSED,this.onHelpTrackingEvent);
         this.var_210.events.addEventListener(HabboHelpTrackingEvent.HABBO_HELP_TRACKING_EVENT_DEFAULT,this.onHelpTrackingEvent);
      }
      
      private function onHelpTrackingEvent(param1:Event) : void
      {
         switch(param1.type)
         {
            case HabboHelpTrackingEvent.HABBO_HELP_TRACKING_EVENT_CLOSED:
               this.setErrorContextFlag(0,10);
               break;
            case HabboHelpTrackingEvent.HABBO_HELP_TRACKING_EVENT_DEFAULT:
               this.setErrorContextFlag(1,10);
         }
      }
      
      private function onAuthOK(param1:IMessageEvent) : void
      {
         this.legacyTrackGoogle("authentication","authok");
      }
      
      private function onRoomEnter(param1:IMessageEvent) : void
      {
         if(!this.var_2787)
         {
            this.trackLoginStep(HabboLoginTrackingStep.const_1975);
            this.var_2787 = true;
         }
         var _loc2_:RoomEntryInfoMessageParser = RoomEntryInfoMessageEvent(param1).getParser();
         if(_loc2_.privateRoom)
         {
            ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1245,String(_loc2_.guestRoomId));
            ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_843,String(true));
            this.legacyTrackGoogle("navigator","private",[_loc2_.guestRoomId]);
         }
         else if(_loc2_.publicSpace != null)
         {
            if(_loc2_.publicSpace.worldId == 0)
            {
               this.legacyTrackGoogle("navigator","public",[_loc2_.publicSpace.unitPropertySet]);
            }
            else
            {
               this.legacyTrackGoogle("navigator","public",[_loc2_.publicSpace.unitPropertySet + "/" + _loc2_.publicSpace.worldId]);
            }
         }
      }
      
      private function onRoomLeave(param1:CloseConnectionMessageEvent) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_843,String(false));
      }
      
      private function onRoomEngineReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._roomEngine = param2 as IRoomEngine;
         if(this._roomEngine == null)
         {
            return;
         }
         Component(this._roomEngine).events.addEventListener(RoomObjectRoomAdEvent.const_229,this.onRoomAdClick);
         Component(this._roomEngine).events.addEventListener(RoomEngineEvent.const_181,this.onRoomAction);
         Component(this._roomEngine).events.addEventListener(RoomEngineEvent.const_340,this.onRoomAction);
      }
      
      private function onAdManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_330 = param2 as IAdManager;
         this.var_330.events.addEventListener(AdEvent.const_576,this.onRoomAdLoad);
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._toolbar = param2 as IHabboToolbar;
         this._toolbar.events.addEventListener(HabboToolbarEvent.const_49,this.onToolbarClick);
      }
      
      private function onRoomAdLoad(param1:AdEvent) : void
      {
         this.legacyTrackGoogle("room_ad","show",[this.getAliasFromAdTechUrl(param1.clickUrl)]);
      }
      
      private function onRoomAdClick(param1:RoomObjectRoomAdEvent) : void
      {
         this.legacyTrackGoogle("room_ad","click",[this.getAliasFromAdTechUrl(param1.clickUrl)]);
      }
      
      private function getAliasFromAdTechUrl(param1:String) : String
      {
         var _loc2_:Array = param1.match(/;alias=([^;]+)/);
         if(_loc2_ != null && _loc2_.length > 1)
         {
            return _loc2_[1];
         }
         return "unknown";
      }
      
      private function onRoomAction(param1:RoomEngineEvent) : void
      {
         if(param1.type == RoomEngineEvent.const_181)
         {
            if(this.var_2030 < 1)
            {
               if(!this.var_345)
               {
                  this.var_345 = new Timer(60000,1);
                  this.var_345.addEventListener(TimerEvent.TIMER,this.onRoomActionTimerEvent);
                  this.var_345.start();
               }
            }
         }
         else if(param1.type == RoomEngineEvent.const_340)
         {
            if(this.var_345)
            {
               this.var_345.removeEventListener(TimerEvent.TIMER,this.onRoomActionTimerEvent);
               this.var_345.stop();
               this.var_345 = null;
            }
         }
      }
      
      private function onRoomActionTimerEvent(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(!disposed)
         {
            if(this._connection)
            {
               if(this.var_467)
               {
                  _loc2_ = null;
                  if(this._roomEngine)
                  {
                     _loc3_ = this._roomEngine.getRoomObjectCount(this._roomEngine.activeRoomId,this._roomEngine.activeRoomCategory,RoomObjectCategoryEnum.const_29);
                     _loc4_ = this._roomEngine.getRoomObjectCount(this._roomEngine.activeRoomId,this._roomEngine.activeRoomCategory,RoomObjectCategoryEnum.const_27) + this._roomEngine.getRoomObjectCount(this._roomEngine.activeRoomId,this._roomEngine.activeRoomCategory,RoomObjectCategoryEnum.const_26);
                     _loc2_ = "Avatars: " + _loc3_ + ", Objects: " + _loc4_;
                  }
                  this.trackEventLog("Performance","fps",String(this.var_467.frameRate),_loc2_);
                  ++this.var_2030;
               }
            }
         }
      }
      
      private function onToolbarClick(param1:HabboToolbarEvent) : void
      {
         if(this.var_468)
         {
            this.var_468.track(param1.iconName);
         }
      }
      
      private function onZoomToggle(param1:HabboNavigatorEvent) : void
      {
         if(this.var_468)
         {
            this.var_468.track(param1.type);
         }
      }
      
      public function legacyTrackGoogle(param1:String, param2:String, param3:Array = null) : void
      {
         Logger.log("legacyTrackGoogle(" + param1 + ", " + param2 + ", " + param3 + ")");
         if(false)
         {
            ExternalInterface.call("FlashExternalInterface.legacyTrack",param1,param2,param3 == null ? [] : param3);
         }
         else
         {
            Logger.log("com.sulake.habbo.tracking: ExternalInterface is not available, tracking is disabled");
         }
      }
      
      public function trackGoogle(param1:String, param2:String, param3:int = -1) : void
      {
         Logger.log("trackGoogle(" + param1 + ", " + param2 + ", " + param3 + ")");
         if(false)
         {
            ExternalInterface.call("FlashExternalInterface.track",param1,param2,param3);
         }
         else
         {
            Logger.log("com.sulake.habbo.tracking: ExternalInterface is not available, tracking is disabled");
         }
      }
      
      public function trackLoginStep(param1:String, param2:String = null) : void
      {
         if(this.var_142 != null && !Boolean(this.var_142.getKey("processlog.enabled")))
         {
            return;
         }
         Logger.log("* Track Login Step: " + param1);
         if(false)
         {
            if(param2 != null)
            {
               ExternalInterface.call("FlashExternalInterface.logLoginStep",param1,param2);
            }
            else
            {
               ExternalInterface.call("FlashExternalInterface.logLoginStep",param1);
            }
         }
         else
         {
            Logger.log("HabboMain: ExternalInterface is not available, tracking is disabled");
         }
      }
      
      public function trackEventLog(param1:String, param2:String, param3:String, param4:String = "") : void
      {
         if(this._connection && this._connection.connected)
         {
            this._connection.send(new EventLogMessageComposer(param1,param2,param3,param4));
         }
      }
      
      public function logError(param1:String) : void
      {
         Logger.log("logError(" + param1 + ")");
         if(false)
         {
            ExternalInterface.call("FlashExternalInterface.logError",param1);
         }
         else
         {
            Logger.log("com.sulake.habbo.tracking: ExternalInterface is not available, tracking is disabled");
         }
      }
      
      public function chatLagDetected(param1:int) : void
      {
         this.var_695.chatLagDetected(param1);
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:int = getTimer();
         if(this.var_565 > -1 && _loc2_ < this.var_565)
         {
            ++this.var_2029;
            ErrorReportStorage.addDebugData("Invalid time counter","Invalid times: " + this.var_2029);
         }
         if(this.var_565 > -1 && _loc2_ - this.var_565 > 15000)
         {
            ++this.var_2028;
            ErrorReportStorage.addDebugData("Time leap counter","Time leaps: " + this.var_2028);
         }
         this.var_565 = _loc2_;
         if(this.var_298 != null)
         {
            this.var_298.update(param1,this.var_565);
         }
         if(this.var_299 != null)
         {
            this.var_299.update(param1,this.var_565);
         }
         if(this.var_467 != null)
         {
            this.var_467.trackUpdate(param1,this,this.var_565);
         }
         if(this.var_695 != null)
         {
            this.var_695.update(this.var_565);
         }
      }
   }
}
