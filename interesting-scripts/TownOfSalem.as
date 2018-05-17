package
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.ProgressEvent;
   import flash.events.TextEvent;
   import flash.external.ExternalInterface;
   import flash.net.Socket;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import joshua.brittain.TownOfSalem.Achievements.ToSAchievementManager;
   import joshua.brittain.TownOfSalem.Background.BackgroundManager;
   import joshua.brittain.TownOfSalem.Camera.CameraManager;
   import joshua.brittain.TownOfSalem.Character.CharacterManager;
   import joshua.brittain.TownOfSalem.GameState.GameStateManager;
   import joshua.brittain.TownOfSalem.House.HouseManager;
   import joshua.brittain.TownOfSalem.Pet.PetManager;
   import joshua.brittain.TownOfSalem.Resolution.ResolutionManager;
   import joshua.brittain.TownOfSalem.ServerMessageManager.ServerMessageManager;
   import joshua.brittain.TownOfSalem.ServerMessageManager.TestServerEmulator;
   import joshua.brittain.TownOfSalem.ServerMessageManager.TutorialServerEmulator;
   import joshua.brittain.TownOfSalem.Sound.SoundManager;
   import joshua.brittain.TownOfSalem.StringTable.StringTableManager;
   import joshua.brittain.TownOfSalem.Timer.ResizeTimer;
   import joshua.brittain.TownOfSalem.Transition.TransitionManager;
   import joshua.brittain.TownOfSalem.User.User;
   import joshua.brittain.TownOfSalem.UserInterface.TosTutorialInterface;
   import joshua.brittain.TownOfSalem.UserInterface.UserInterfaceManager;
   import salem.AccountOptions.AccountOptions;
   import salem.game.GameInfo;
   import salem.localization.LocalizationManager;
   import salem.sharedinfo.ITownOfSalem;
   import salem.sharedinfo.SharedInfo;
   import salem.tutorial.TutorialManager;
   import salem.utils.events.SalemEvent;
   import salem.utils.events.SalemEventDispatcher;
   
   public class TownOfSalem extends Sprite implements ITownOfSalem
   {
      
      public static const MAX_NUM_OF_PLAYERS:uint = 15;
      
      private static var m_versionText:TextField = new TextField();
      
      private static var m_logoutText:TextField = new TextField();
      
      private static var m_instance:TownOfSalem = null;
      
      public static const DISPLAY_STACK_INTERFACE:int = 0;
      
      public static const DISPLAY_STACK_TOOLTIPS:int = 1;
      
      public static const DISPLAY_STACK_COUNT:int = 2;
      
      private static const DISPLAY_OBJECT_NAME_ID:String = "tos_stage_display_stack_element";
      
      public static const ON_SOCKET_RECIEVED:String = "OnSocketRecieved";
      
      public static const FONT_FACE:String = "<font face=\"Arial\" ";
      
      public static const SYSTEM_MESSAGE_COLOR:String = "color=\"#00FF00\"";
      
      public static const DEAD_MESSAGE_COLOR:String = "color=\"#A3A3A3\"";
      
      public static const CHAT_MESSAGE_COLOR:String = "color=\"#FFFFFF\"";
      
      public static const SPY_MESSAGE_COLOR:String = "color=\"#DD1111\"";
      
      public static const ANON_MESSAGE_COLOR:String = "color=\"#DDDDDD\"";
      
      public static const WHISPER_TO_MESSAGE_COLOR:String = "color=\"#ABABFF\"";
      
      public static const WHISPER_MESSAGE_COLOR:String = "color=\"#FF00FF\"";
      
      public static const MAYOR_REVEAL_COLOR:String = "color=\"#FF7F66\"";
      
      public static const SERVER_WIDE_MESSAGE:String = "color=\"#FFFF00\"";
      
      {
         SalemEventDispatcher.Initialize();
      }
      
      public var m_bIsFullscreen:Boolean = false;
      
      private var m_socket:Socket;
      
      private var m_displayObjects:Vector.<Sprite>;
      
      private var m_users:Vector.<User>;
      
      private var m_achievementManager:ToSAchievementManager;
      
      private var m_cameraManager:CameraManager;
      
      private var m_characterManager:CharacterManager;
      
      private var m_petManager:PetManager;
      
      private var m_backgroundManager:BackgroundManager;
      
      private var m_houseManager:HouseManager;
      
      private var m_soundManager:SoundManager;
      
      private var m_transitionManager:TransitionManager;
      
      private var m_userInterfaceManager:UserInterfaceManager;
      
      private var m_gameStateManager:GameStateManager;
      
      private var m_stringTableManager:StringTableManager;
      
      private var m_serverMessageManager:ServerMessageManager;
      
      private var m_tutorialServerEmulator:TutorialServerEmulator;
      
      private var m_bIsMobile:Boolean = false;
      
      private var m_eventDispatcher:SalemEventDispatcher;
      
      private var m_resizeTimer:ResizeTimer;
      
      private var m_accountOptions:AccountOptions;
      
      private var m_bChatFilterEnabled:Boolean = true;
      
      private var LOCALLY_TEST_GAME:Boolean = true;
      
      private var m_bDevLoginThroughFacebook:Boolean = false;
      
      private var m_bDebugOnLive:Boolean = false;
      
      private var m_tosTutorialInterface:TosTutorialInterface;
      
      private var m_testEmulator:TestServerEmulator;
      
      public function TownOfSalem()
      {
         var _loc1_:int = 0;
         m_users = new Vector.<User>(0,false);
         m_transitionManager = new TransitionManager();
         m_gameStateManager = new GameStateManager();
         m_resizeTimer = new ResizeTimer();
         super();
         trace(SharedInfo.m_gameVersion);
         m_instance = this;
         m_displayObjects = new Vector.<Sprite>(2);
         _loc1_ = 0;
         while(_loc1_ < 2)
         {
            m_displayObjects[_loc1_] = new Sprite();
            m_displayObjects[_loc1_].name = "tos_stage_display_stack_element";
            _loc1_++;
         }
         addEventListener("addedToStage",HandleAddedToStage,false,0,true);
      }
      
      public static function GetSingleton() : TownOfSalem
      {
         return m_instance;
      }
      
      public static function DetermineTeammateRolesNightAbilityString(param1:int, param2:Boolean, param3:*) : String
      {
         var _loc4_:String = "";
         var _loc5_:* = param1;
         if(51 !== _loc5_)
         {
            if(15 !== _loc5_)
            {
               if(16 !== _loc5_)
               {
                  if(17 !== _loc5_)
                  {
                     if(50 !== _loc5_)
                     {
                        if(18 !== _loc5_)
                        {
                           if(19 !== _loc5_)
                           {
                              if(20 !== _loc5_)
                              {
                                 if(21 !== _loc5_)
                                 {
                                    if(22 !== _loc5_)
                                    {
                                       if(23 !== _loc5_)
                                       {
                                          if(30 !== _loc5_)
                                          {
                                             if(56 !== _loc5_)
                                             {
                                                if(57 !== _loc5_)
                                                {
                                                   if(58 !== _loc5_)
                                                   {
                                                      if(59 !== _loc5_)
                                                      {
                                                         if(60 !== _loc5_)
                                                         {
                                                            if(61 !== _loc5_)
                                                            {
                                                               _loc4_ = "XMafiaTargetingDefault";
                                                            }
                                                            else
                                                            {
                                                               _loc4_ = "XMedusaTargeting";
                                                            }
                                                         }
                                                         else
                                                         {
                                                            _loc4_ = "XPoisonerTargeting";
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc4_ = "XNecromancerTargeting";
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc4_ = "XHexMasterTargeting";
                                                   }
                                                }
                                                else if(param3 == 1)
                                                {
                                                   _loc4_ = "XPotionMasterTargetingHeal";
                                                }
                                                else if(param3 == 2)
                                                {
                                                   _loc4_ = "XPotionMasterTargetingAttack";
                                                }
                                                else
                                                {
                                                   _loc4_ = "XPotionMasterTargetingInvestigate";
                                                }
                                             }
                                             else
                                             {
                                                _loc4_ = "XCovenLeaderTargeting";
                                             }
                                          }
                                          else
                                          {
                                             _loc4_ = "XVampireTargeting";
                                          }
                                       }
                                       else
                                       {
                                          _loc4_ = "XMafiaTargetingMafioso";
                                       }
                                    }
                                    else
                                    {
                                       _loc4_ = "XMafiaTargetingJanitor";
                                    }
                                 }
                                 else
                                 {
                                    _loc4_ = "XMafiaTargetingGodfather";
                                 }
                              }
                              else
                              {
                                 _loc4_ = "XMafiaTargetingFramer";
                              }
                           }
                           else
                           {
                              _loc4_ = "XMafiaTargetingForger";
                           }
                        }
                        else
                        {
                           _loc4_ = "XMafiaTargetingDisguiser";
                        }
                     }
                     else
                     {
                        _loc4_ = "XMafiaTargetingHypnotist";
                     }
                  }
                  else
                  {
                     _loc4_ = "XMafiaTargetingConsort";
                  }
               }
               else
               {
                  _loc4_ = "XMafiaTargetingConsigliere";
               }
            }
            else
            {
               _loc4_ = "XMafiaTargetingBlackmailer";
            }
         }
         else
         {
            _loc4_ = "XMafiaTargetingAmbusher";
         }
         if(param2)
         {
            _loc4_ = _loc4_.concat("Instead");
         }
         return _loc4_;
      }
      
      public static function DetermineTeammateRolesNightAbilityStringSecondColumn(param1:int, param2:Boolean) : String
      {
         var _loc3_:String = "";
         switch(int(param1) - 56)
         {
            case 0:
               _loc3_ = "XCovenLeaderTargetingVictim";
               break;
            default:
            default:
               _loc3_ = "XMafiaTargetingDefault";
               break;
            case 3:
               _loc3_ = "XNecromancerTargetingAdditional";
         }
         if(param2)
         {
            _loc3_ = _loc3_.concat("Instead");
         }
         return _loc3_;
      }
      
      public static function DetermineColor(param1:int) : String
      {
         return "\'#FFFFFF\'";
      }
      
      public static function DetermineColorAsHex(param1:int) : uint
      {
         return 16777215;
      }
      
      public static function GetRoleDescription(param1:int) : String
      {
         var _loc2_:String = "RoleSelectedDesc_" + param1;
         if(LocalizationManager.HasGuiEntry(_loc2_))
         {
            return LocalizationManager.GetGuiEntry(_loc2_).text;
         }
         return "";
      }
      
      public function AsDisplayObject() : DisplayObject
      {
         return this as DisplayObject;
      }
      
      private function HandleAddedToStage(param1:Event) : void
      {
         removeEventListener("addedToStage",HandleAddedToStage);
         if(LocalizationManager.GetInstance() == null)
         {
            LocalizationManager.Initialize();
            SalemEventDispatcher.GetInstance().addEventListener("EVENT_UILanguageChanged",OnLanguageChanged);
            LocalizationManager.UpdateUILanguage(LocalizationManager.SelectedUILanguageId);
            return;
         }
         SalemEventDispatcher.GetInstance().dispatchEvent(new SalemEvent("TownOfSalemAdded",{"message":"onAddedToStage"}));
         Initialize();
      }
      
      private function OnLanguageChanged(param1:Event = null) : void
      {
         SalemEventDispatcher.GetInstance().removeEventListener("EVENT_UILanguageChanged",OnLanguageChanged);
         if(LOCALLY_TEST_GAME)
         {
            SalemEventDispatcher.GetInstance().dispatchEvent(new SalemEvent("TownOfSalemAdded",{"message":"onAddedToStage"}));
            Initialize();
         }
      }
      
      public function addDisplayObject(param1:DisplayObject, param2:int = 0) : void
      {
         m_displayObjects[param2].addChild(param1);
      }
      
      public function hasDisplayObject(param1:DisplayObject) : Boolean
      {
         return param1.parent && param1.parent.name == "tos_stage_display_stack_element";
      }
      
      public function removeDisplayObject(param1:DisplayObject) : void
      {
         param1.parent.removeChild(param1);
      }
      
      public function removeDisplayObjectSafely(param1:DisplayObject) : void
      {
         if(param1 && hasDisplayObject(param1))
         {
            removeDisplayObject(param1);
         }
      }
      
      public function Reset() : void
      {
         m_instance.GetSoundManager().StopCurrentMusic();
         m_cameraManager.Reset();
         stage.removeEventListener("resize",OnStageResize);
         stage.removeEventListener("fullScreenInteractiveAccepted",OnFullscreenEvent);
         stage.removeEventListener("rightClick",function(param1:Event):void
         {
         });
         stage.removeEventListener("resize",OnStageResize);
         m_userInterfaceManager.Reset();
         m_transitionManager.Reset();
         m_socket.removeEventListener("socketData",OnTownOfSalemSockData);
         m_socket = null;
         TutorialManager.GetInstance().PopInterface(m_tosTutorialInterface);
         TutorialManager.GetInstance().SetRole(-1);
         m_achievementManager.Clear();
         m_accountOptions = null;
         m_achievementManager = null;
         m_cameraManager = null;
         m_characterManager = null;
         m_petManager = null;
         m_backgroundManager = null;
         m_houseManager = null;
         m_soundManager = null;
         m_stringTableManager = null;
         m_transitionManager = null;
         m_userInterfaceManager = null;
         m_gameStateManager = null;
         m_stringTableManager = null;
         m_serverMessageManager = null;
         if(m_users)
         {
            var _loc2_:int = 0;
            var _loc1_:* = m_users;
            for each(user in m_users)
            {
               user.Reset();
            }
         }
         m_users = null;
         m_resizeTimer = null;
         if(m_displayObjects)
         {
            var i:int = 0;
            while(i < 2)
            {
               if(m_displayObjects[i] && m_displayObjects[i].parent)
               {
                  m_displayObjects[i].parent.removeChild(m_displayObjects[i]);
               }
               i = i + 1;
            }
         }
         m_displayObjects = null;
         m_instance = null;
      }
      
      private function OnConnection(param1:Event) : void
      {
         SendServerMessage(String.fromCharCode(2) + String.fromCharCode(2) + "DevTestAccount" + "*" + "$H$9nmY/6Ipuh.UhO2.rc6jG9prG.UoPD." + String.fromCharCode(0));
         m_accountOptions = new AccountOptions();
         SendServerMessage(String.fromCharCode(30) + String.fromCharCode(2) + String.fromCharCode(0));
         SendServerMessage(String.fromCharCode(6) + String.fromCharCode(1) + String.fromCharCode(0));
         SendServerMessage(String.fromCharCode(9) + String.fromCharCode(0));
      }
      
      public function InitializeSocket(param1:Socket, param2:String, param3:AccountOptions, param4:Boolean, param5:GameInfo) : void
      {
         a_socket = param1;
         a_sMessage = param2;
         a_accountOptions = param3;
         a_bChatFiltered = param4;
         a_gameInfo = param5;
         m_accountOptions = a_accountOptions;
         m_gameStateManager.m_gameInfo = a_gameInfo;
         m_bChatFilterEnabled = a_bChatFiltered;
         TutorialManager.Initialize().PushInterface(m_tosTutorialInterface);
         AddDisplayContainersToStage();
         m_userInterfaceManager.GetNameSelection().LoadBackground();
         m_socket = a_socket;
         m_socket.addEventListener("socketData",OnTownOfSalemSockData);
         m_serverMessageManager.HandleServerMessage(a_sMessage);
         stage.addEventListener("rightClick",function(param1:Event):void
         {
         });
         dispatchEvent(new Event("OnSocketRecieved"));
      }
      
      public function InitializeSoundSettings(param1:Boolean, param2:Number, param3:Boolean, param4:Number) : void
      {
         m_soundManager.Initialize(param1,param2,param3,param4);
         if(param1)
         {
            m_userInterfaceManager.GetMusicButton().MuteMusic();
         }
         if(param3)
         {
            m_userInterfaceManager.GetSoundButton().MuteSound();
         }
      }
      
      public function AddDisplayContainersToStage() : void
      {
         var _loc1_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < 2)
         {
            stage.addChild(m_displayObjects[_loc1_]);
            _loc1_++;
         }
      }
      
      public function Initialize() : void
      {
         removeEventListener("addedToStage",HandleAddedToStage);
         m_serverMessageManager = new ServerMessageManager();
         m_achievementManager = new ToSAchievementManager();
         m_backgroundManager = new BackgroundManager();
         m_cameraManager = new CameraManager();
         m_characterManager = new CharacterManager();
         m_petManager = new PetManager();
         m_houseManager = new HouseManager();
         m_soundManager = new SoundManager();
         m_stringTableManager = new StringTableManager();
         stage.addEventListener("fullScreenInteractiveAccepted",OnFullscreenEvent);
         var stageWidth:int = stage.stageWidth;
         var stageHeight:int = stage.stageHeight;
         if(stageWidth < 800)
         {
            stageWidth = 800;
         }
         if(stageHeight < 600)
         {
            stageHeight = 600;
         }
         stage.addEventListener("resize",OnStageResize);
         m_userInterfaceManager = new UserInterfaceManager();
         m_userInterfaceManager.Initialize(stageWidth,stageHeight);
         UpdateLogoutButton();
         m_tosTutorialInterface = new TosTutorialInterface();
         if(LOCALLY_TEST_GAME)
         {
            m_gameStateManager.m_gameInfo = new GameInfo();
            m_gameStateManager.m_gameInfo.permissionLevel = 1;
            m_gameStateManager.m_gameInfo.isRapid = false;
            stage.scaleMode = "noScale";
            stage.align = "TL";
            m_serverMessageManager = new ServerMessageManager();
            m_accountOptions = new AccountOptions();
            AddDisplayContainersToStage();
            m_userInterfaceManager.GetNameSelection().LoadBackground();
            stage.addEventListener("rightClick",function(param1:Event):void
            {
            });
            InitializeSoundSettings(true,0,true,0);
            m_testEmulator = new TestServerEmulator(m_serverMessageManager);
            dispatchEvent(new Event("OnSocketRecieved"));
         }
      }
      
      public function LoadedByHome() : void
      {
         LOCALLY_TEST_GAME = false;
      }
      
      public function IsChatFiltered() : Boolean
      {
         return m_bChatFilterEnabled;
      }
      
      public function IsTestGame() : Boolean
      {
         return LOCALLY_TEST_GAME;
      }
      
      public function GetAccountOptions() : AccountOptions
      {
         return m_accountOptions;
      }
      
      public function GetCharacterManager() : CharacterManager
      {
         return m_characterManager;
      }
      
      public function GetPetManager() : PetManager
      {
         return m_petManager;
      }
      
      public function GetBackgroundManager() : BackgroundManager
      {
         return m_backgroundManager;
      }
      
      public function GetCameraManager() : CameraManager
      {
         return m_cameraManager;
      }
      
      public function GetTransitionManager() : TransitionManager
      {
         return m_transitionManager;
      }
      
      public function GetHouseManager() : HouseManager
      {
         return m_houseManager;
      }
      
      public function GetStringTableManager() : StringTableManager
      {
         return m_stringTableManager;
      }
      
      private function OnStageResize(param1:Event) : void
      {
         var _loc2_:Number = ResolutionManager.DetermineRatio(stage.stageWidth,stage.stageHeight);
         m_userInterfaceManager.Resize(_loc2_,stage.stageWidth,stage.stageHeight);
         m_achievementManager.Resize(_loc2_,stage.stageWidth,stage.stageHeight);
         UpdateLogoutButton();
         m_cameraManager.Resize();
      }
      
      public function ResizeStage() : void
      {
         var _loc1_:Number = ResolutionManager.DetermineRatio(stage.stageWidth,stage.stageHeight);
         m_userInterfaceManager.Resize(_loc1_,stage.stageWidth,stage.stageHeight);
         m_achievementManager.Resize(_loc1_,stage.stageWidth,stage.stageHeight);
         UpdateLogoutButton();
         m_cameraManager.Resize();
      }
      
      public function GetGameStateManager() : GameStateManager
      {
         return m_gameStateManager;
      }
      
      public function GetUserInterfaceManager() : UserInterfaceManager
      {
         return m_userInterfaceManager;
      }
      
      private function UpdateLogoutButton() : void
      {
         var _loc1_:Number = ResolutionManager.DetermineReverseRatio(stage.stageWidth,stage.stageHeight);
         m_logoutText.x = m_versionText.x + m_versionText.width + 15 * _loc1_;
         m_logoutText.y = m_versionText.y;
      }
      
      private function HandleLogout(param1:TextEvent) : void
      {
         try
         {
            ExternalInterface.call("CreateCookie","username","") as String;
            navigateToURL(new URLRequest("http://www.blankmediagames.com/townofsalem/index.html"),"_self");
            return;
         }
         catch(e:Error)
         {
            trace("Logout error: " + e.message);
            return;
         }
      }
      
      private function OnSocketClose(param1:Event) : void
      {
         m_userInterfaceManager.SocketClose();
      }
      
      private function UpdateVersionText() : void
      {
         var _loc2_:* = 75;
         var _loc1_:* = 5;
         var _loc3_:Number = ResolutionManager.DetermineRatio(stage.stageWidth,stage.stageHeight);
         m_versionText.scaleX = _loc3_;
         m_versionText.scaleY = _loc3_;
         m_versionText.x = _loc2_;
         m_versionText.y = _loc1_;
         m_versionText.htmlText = "<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + SharedInfo.m_gameVersion + "</font>";
      }
      
      private function OnTownOfSalemSockData(param1:ProgressEvent) : void
      {
         var _loc5_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:Array = [];
         var _loc3_:ByteArray = new ByteArray();
         var _loc6_:int = 0;
         if(m_socket)
         {
            while(m_socket.bytesAvailable)
            {
               _loc3_.writeByte(m_socket.readUnsignedByte());
               if(_loc3_[_loc6_] == 0)
               {
                  _loc2_.push(new String(_loc3_.toString()));
                  _loc3_.length = 0;
                  _loc6_ = -1;
               }
               _loc6_++;
            }
         }
         _loc5_ = 0;
         while(_loc5_ < _loc2_.length)
         {
            if(m_serverMessageManager)
            {
               m_serverMessageManager.HandleServerMessage(_loc2_[_loc5_]);
            }
            else
            {
               trace("TownOfSalem::TownOfSalem WARNING:: message not handled:  " + _loc2_[_loc5_]);
               _loc4_ = 0;
               while(_loc4_ < _loc2_[_loc5_].length)
               {
                  trace("  >>" + _loc2_[_loc5_].charCodeAt(_loc4_));
                  _loc4_++;
               }
            }
            _loc5_++;
         }
      }
      
      public function SendServerMessage(param1:String) : void
      {
         if(m_socket)
         {
            m_socket.writeUTFBytes(param1);
            m_socket.flush();
         }
         else
         {
            trace("SOCKET::SKIPPING MESSAGE:: " + param1);
         }
      }
      
      public function GetSocket() : Socket
      {
         return m_socket;
      }
      
      public function SendRemainingServerMessages(param1:String) : void
      {
         m_serverMessageManager.HandleServerMessage(param1);
      }
      
      public function GetUsers() : Vector.<User>
      {
         return m_users;
      }
      
      public function GetAchievementManager() : ToSAchievementManager
      {
         return m_achievementManager;
      }
      
      public function GetSoundManager() : SoundManager
      {
         return m_soundManager;
      }
      
      private function Destructor() : void
      {
         stage.removeEventListener("resize",OnStageResize);
      }
      
      public function GetResolutionRatio() : Number
      {
         return ResolutionManager.DetermineRatio(stage.stageWidth,stage.stageHeight);
      }
      
      public function GetReverseResolutionRatio() : Number
      {
         return ResolutionManager.DetermineReverseRatio(stage.stageWidth,stage.stageHeight);
      }
      
      private function OnFullscreenEvent(param1:FullScreenEvent) : void
      {
         m_bIsFullscreen = !m_bIsFullscreen;
      }
   }
}
