package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_635:IWindowContainer;
      
      private var var_951:ITextWindow;
      
      private var var_184:RoomSettingsCtrl;
      
      private var var_1131:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var _hideInfoTimer:Timer;
      
      private var var_1130:ITextWindow;
      
      private var var_330:IWindowContainer;
      
      private var var_1675:IWindowContainer;
      
      private var var_1673:ITextWindow;
      
      private var var_771:IWindowContainer;
      
      private var var_1400:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_740:ITextWindow;
      
      private var var_1402:IWindowContainer;
      
      private var var_1135:IWindowContainer;
      
      private var var_772:ITextWindow;
      
      private var var_952:ITextFieldWindow;
      
      private var var_291:IWindowContainer;
      
      private var var_773:ITextWindow;
      
      private var var_1401:IButtonWindow;
      
      private var var_950:ITextWindow;
      
      private var var_2286:int;
      
      private var var_1132:IContainerButtonWindow;
      
      private var var_774:IWindowContainer;
      
      private var var_1133:ITextWindow;
      
      private var var_1134:IContainerButtonWindow;
      
      private var var_1403:ITextWindow;
      
      private var var_1404:IButtonWindow;
      
      private var var_901:TagRenderer;
      
      private var var_1674:ITextWindow;
      
      private var var_329:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_634:ITextWindow;
      
      private var var_247:RoomThumbnailCtrl;
      
      private var var_1136:IContainerButtonWindow;
      
      private var var_1672:IWindowContainer;
      
      private var var_246:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_329 = new RoomEventViewCtrl(_navigator);
         var_184 = new RoomSettingsCtrl(_navigator,this,true);
         var_247 = new RoomThumbnailCtrl(_navigator);
         var_901 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_184);
         _hideInfoTimer = new Timer(6000,1);
         _hideInfoTimer.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_184.active = true;
         this.var_329.active = false;
         this.var_247.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1400.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1404.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1402.visible = Util.hasVisibleChildren(var_1402);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_740.text = param1.roomName;
         var_740.height = NaN;
         _ownerName.text = param1.ownerName;
         var_772.text = param1.description;
         var_901.refreshTags(var_330,param1.tags);
         var_772.visible = false;
         if(param1.description != "")
         {
            var_772.height = NaN;
            var_772.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_330,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_330,"thumb_down",_loc3_,onThumbDown,0);
         var_1673.visible = _loc3_;
         var_773.visible = !_loc3_;
         var_1403.visible = !_loc3_;
         var_1403.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_330,"home",param2,null,0);
         _navigator.refreshButton(var_330,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_330,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_740.y,0);
         var_330.visible = true;
         var_330.height = Util.getLowestPoint(var_330);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function dispose() : void
      {
         if(_hideInfoTimer)
         {
            _hideInfoTimer.removeEventListener(TimerEvent.TIMER,hideInfo);
            _hideInfoTimer.reset();
            _hideInfoTimer = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_384,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1401.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1131.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1136.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1132.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1134.visible = _navigator.data.canEditRoomSettings && param1;
         var_1135.visible = Util.hasVisibleChildren(var_1135);
      }
      
      public function open(param1:Boolean) : void
      {
         this._hideInfoTimer.reset();
         this.var_329.active = false;
         this.var_184.active = false;
         this.var_247.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_48,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this._hideInfoTimer.start();
         }
      }
      
      public function toggle() : void
      {
         this._hideInfoTimer.reset();
         this.var_329.active = false;
         this.var_184.active = false;
         this.var_247.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_48,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_384,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_291);
         var_291.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_184.refresh(var_291);
         this.var_247.refresh(var_291);
         Util.moveChildrenToColumn(var_291,["room_details","room_buttons"],0,2);
         var_291.height = Util.getLowestPoint(var_291);
         var_291.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_952.setSelection(0,var_952.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_246);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_329.refresh(var_246);
         if(Util.hasVisibleChildren(var_246) && !this.var_247.active)
         {
            Util.moveChildrenToColumn(var_246,["event_details","event_buttons"],0,2);
            var_246.height = Util.getLowestPoint(var_246);
            var_246.visible = true;
         }
         else
         {
            var_246.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_329.active = true;
         this.var_184.active = false;
         this.var_247.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         _hideInfoTimer.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_951.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_951.height = NaN;
         var_1130.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1130.height = NaN;
         Util.moveChildrenToColumn(var_635,["public_space_name","public_space_desc"],var_951.y,0);
         var_635.visible = true;
         var_635.height = Math.max(86,Util.getLowestPoint(var_635));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         if(_loc1_ && true && true && true)
         {
            var_774.visible = true;
            var_952.text = this.getEmbedData();
         }
         else
         {
            var_774.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this._hideInfoTimer.reset();
         this.var_184.load(param1);
         this.var_184.active = true;
         this.var_329.active = false;
         this.var_247.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_184.active = false;
         this.var_329.active = false;
         this.var_247.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_68,false);
         _window.setParamFlag(HabboWindowParam.const_1190,true);
         _window.visible = false;
         var_291 = IWindowContainer(find("room_info"));
         var_330 = IWindowContainer(find("room_details"));
         var_635 = IWindowContainer(find("public_space_details"));
         var_1672 = IWindowContainer(find("owner_name_cont"));
         var_1675 = IWindowContainer(find("rating_cont"));
         var_1135 = IWindowContainer(find("room_buttons"));
         var_740 = ITextWindow(find("room_name"));
         var_951 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_772 = ITextWindow(find("room_desc"));
         var_1130 = ITextWindow(find("public_space_desc"));
         var_950 = ITextWindow(find("owner_caption"));
         var_773 = ITextWindow(find("rating_caption"));
         var_1673 = ITextWindow(find("rate_caption"));
         var_1403 = ITextWindow(find("rating_txt"));
         var_246 = IWindowContainer(find("event_info"));
         var_771 = IWindowContainer(find("event_details"));
         var_1402 = IWindowContainer(find("event_buttons"));
         var_1674 = ITextWindow(find("event_name"));
         var_634 = ITextWindow(find("event_desc"));
         var_1131 = IContainerButtonWindow(find("add_favourite_button"));
         var_1136 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1132 = IContainerButtonWindow(find("make_home_button"));
         var_1134 = IContainerButtonWindow(find("unmake_home_button"));
         var_1401 = IButtonWindow(find("room_settings_button"));
         var_1400 = IButtonWindow(find("create_event_button"));
         var_1404 = IButtonWindow(find("edit_event_button"));
         var_774 = IWindowContainer(find("embed_info"));
         var_1133 = ITextWindow(find("embed_info_txt"));
         var_952 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1131,onAddFavouriteClick);
         Util.setProcDirectly(var_1136,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1401,onRoomSettingsClick);
         Util.setProcDirectly(var_1132,onMakeHomeClick);
         Util.setProcDirectly(var_1134,onUnmakeHomeClick);
         Util.setProcDirectly(var_1400,onEventSettingsClick);
         Util.setProcDirectly(var_1404,onEventSettingsClick);
         Util.setProcDirectly(var_952,onEmbedSrcClick);
         _navigator.refreshButton(var_1131,"favourite",true,null,0);
         _navigator.refreshButton(var_1136,"favourite",true,null,0);
         _navigator.refreshButton(var_1132,"home",true,null,0);
         _navigator.refreshButton(var_1134,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_291,onHover);
         Util.setProcDirectly(var_246,onHover);
         var_950.width = var_950.textWidth;
         Util.moveChildrenToRow(var_1672,["owner_caption","owner_name"],var_950.x,var_950.y,3);
         var_773.width = var_773.textWidth;
         Util.moveChildrenToRow(var_1675,["rating_caption","rating_txt"],var_773.x,var_773.y,3);
         var_1133.height = NaN;
         Util.moveChildrenToColumn(var_774,["embed_info_txt","embed_src_txt"],var_1133.y,2);
         var_774.height = Util.getLowestPoint(var_774) + 5;
         var_2286 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_1674.text = param1.eventName;
         var_634.text = param1.eventDescription;
         var_901.refreshTags(var_771,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_634.visible = false;
         if(param1.eventDescription != "")
         {
            var_634.height = NaN;
            var_634.y = Util.getLowestPoint(var_771) + 2;
            var_634.visible = true;
         }
         var_771.visible = true;
         var_771.height = Util.getLowestPoint(var_771);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_832,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
