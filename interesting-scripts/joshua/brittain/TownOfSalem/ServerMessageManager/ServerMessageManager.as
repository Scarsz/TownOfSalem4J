package joshua.brittain.TownOfSalem.ServerMessageManager
{
   import flash.events.Event;
   import flash.text.TextField;
   import joshua.brittain.Home.Event.ServerMessageEvent;
   import joshua.brittain.TownOfSalem.GameStage.GameStage;
   import joshua.brittain.TownOfSalem.GameState.GameStateManager;
   import joshua.brittain.TownOfSalem.Resolution.ResolutionManager;
   import joshua.brittain.TownOfSalem.Taunts.TauntManager;
   import joshua.brittain.TownOfSalem.User.User;
   import joshua.brittain.TownOfSalem.UserInterface.DayAbilityButton;
   import joshua.brittain.TownOfSalem.UserInterface.UserInterfaceManager;
   import salem.achievements.AchievementManager;
   import salem.localization.LocalizationManager;
   import salem.localization.StringTableEntry;
   import salem.parser.ModMessageParser;
   import salem.sharedinfo.Roles;
   import salem.tutorial.TutorialManager;
   import salem.tutorial.TutorialTriggers;
   import salem.utils.events.SalemEventDispatcher;
   
   public class ServerMessageManager
   {
       
      
      private var m_serverMessages:Array;
      
      private var m_townOfSalem:TownOfSalem;
      
      public function ServerMessageManager()
      {
         m_serverMessages = new Array(228);
         super();
         m_townOfSalem = TownOfSalem.GetSingleton();
         InitializeServerMessagesArray();
      }
      
      public function HandleServerMessage(param1:String) : void
      {
         trace("ServerMessage: | " + param1.charCodeAt(0) + " | " + param1);
         if(param1.charCodeAt(0) >= m_serverMessages.length)
         {
            return;
         }
         return;
         §§push(m_serverMessages[param1.charCodeAt(0)](param1));
      }
      
      public function InitializeServerMessagesArray() : void
      {
         m_serverMessages[0] = DefaultFunction;
         m_serverMessages[1] = DefaultFunction;
         m_serverMessages[2] = DefaultFunction;
         m_serverMessages[3] = DefaultFunction;
         m_serverMessages[4] = DefaultFunction;
         m_serverMessages[5] = UserLeftGame;
         m_serverMessages[6] = ChatBoxMessage;
         m_serverMessages[7] = DefaultFunction;
         m_serverMessages[8] = DefaultFunction;
         m_serverMessages[9] = DefaultFunction;
         m_serverMessages[10] = DefaultFunction;
         m_serverMessages[11] = DefaultFunction;
         m_serverMessages[12] = DefaultFunction;
         m_serverMessages[13] = DefaultFunction;
         m_serverMessages[14] = DefaultFunction;
         m_serverMessages[15] = DefaultFunction;
         m_serverMessages[16] = DoNotSpam;
         m_serverMessages[17] = DefaultFunction;
         m_serverMessages[18] = SystemMessage;
         m_serverMessages[19] = StringTableMessage;
         m_serverMessages[20] = DefaultFunction;
         m_serverMessages[21] = DefaultFunction;
         m_serverMessages[22] = DefaultFunction;
         m_serverMessages[23] = DefaultFunction;
         m_serverMessages[24] = DefaultFunction;
         m_serverMessages[25] = DefaultFunction;
         m_serverMessages[26] = FriendUpdate;
         m_serverMessages[27] = DefaultFunction;
         m_serverMessages[28] = DefaultFunction;
         m_serverMessages[29] = DefaultFunction;
         m_serverMessages[30] = DefaultFunction;
         m_serverMessages[31] = DefaultFunction;
         m_serverMessages[32] = DefaultFunction;
         m_serverMessages[33] = DefaultFunction;
         m_serverMessages[34] = DefaultFunction;
         m_serverMessages[35] = DefaultFunction;
         m_serverMessages[36] = DefaultFunction;
         m_serverMessages[37] = DefaultFunction;
         m_serverMessages[38] = DefaultFunction;
         m_serverMessages[39] = ForcedLogout;
         m_serverMessages[40] = ReturnToHomePage;
         m_serverMessages[41] = DefaultFunction;
         m_serverMessages[42] = ShopPurchaseSuccess;
         m_serverMessages[43] = DefaultFunction;
         m_serverMessages[44] = DefaultFunction;
         m_serverMessages[45] = DefaultFunction;
         m_serverMessages[46] = DefaultFunction;
         m_serverMessages[47] = DefaultFunction;
         m_serverMessages[48] = UpdatePaidCurrency;
         m_serverMessages[49] = DefaultFunction;
         m_serverMessages[50] = DefaultFunction;
         m_serverMessages[51] = SetLastBonusWinTime;
         m_serverMessages[52] = DefaultFunction;
         m_serverMessages[53] = DefaultFunction;
         m_serverMessages[54] = DefaultFunction;
         m_serverMessages[55] = DefaultFunction;
         m_serverMessages[56] = DefaultFunction;
         m_serverMessages[57] = DefaultFunction;
         m_serverMessages[58] = DefaultFunction;
         m_serverMessages[59] = DefaultFunction;
         m_serverMessages[60] = DefaultFunction;
         m_serverMessages[61] = DefaultFunction;
         m_serverMessages[62] = DefaultFunction;
         m_serverMessages[63] = DefaultFunction;
         m_serverMessages[64] = DefaultFunction;
         m_serverMessages[65] = DefaultFunction;
         m_serverMessages[66] = UpdateFriendName;
         m_serverMessages[67] = DefaultFunction;
         m_serverMessages[68] = DefaultFunction;
         m_serverMessages[69] = DefaultFunction;
         m_serverMessages[70] = DefaultFunction;
         m_serverMessages[71] = DefaultFunction;
         m_serverMessages[72] = DefaultFunction;
         m_serverMessages[73] = DefaultFunction;
         m_serverMessages[74] = UserStatistics;
         m_serverMessages[75] = DefaultFunction;
         m_serverMessages[76] = DefaultFunction;
         m_serverMessages[77] = ModeratorMessage;
         m_serverMessages[78] = ReferAFriendUpdate;
         m_serverMessages[79] = PlayerStatistics;
         m_serverMessages[80] = ScrollConsumed;
         m_serverMessages[81] = DefaultFunction;
         m_serverMessages[82] = DefaultFunction;
         m_serverMessages[83] = PromotionPopup;
         m_serverMessages[84] = DefaultFunction;
         m_serverMessages[85] = DefaultFunction;
         m_serverMessages[86] = DefaultFunction;
         m_serverMessages[87] = DefaultFunction;
         m_serverMessages[88] = CurrencyMultiplier;
         m_serverMessages[89] = DefaultFunction;
         m_serverMessages[90] = PickNames;
         m_serverMessages[91] = NamesAndPositionsOfUsers;
         m_serverMessages[92] = RoleAndPosition;
         m_serverMessages[93] = StartNight;
         m_serverMessages[94] = StartDay;
         m_serverMessages[95] = WhoDiedAndHow;
         m_serverMessages[96] = StartDiscussion;
         m_serverMessages[97] = StartVoting;
         m_serverMessages[98] = StartDefenseTransition;
         m_serverMessages[99] = StartJudgement;
         m_serverMessages[100] = TrialFoundGuilty;
         m_serverMessages[101] = TrialFoundNotGuilty;
         m_serverMessages[102] = LookoutNightAbilityMessage;
         m_serverMessages[103] = UserVoted;
         m_serverMessages[104] = UserCanceledVote;
         m_serverMessages[105] = UserChangedVote;
         m_serverMessages[106] = UserDied;
         m_serverMessages[107] = Resurrection;
         m_serverMessages[108] = TellRoleList;
         m_serverMessages[109] = UserChosenName;
         m_serverMessages[110] = OtherMafia;
         m_serverMessages[111] = TellTownAmnesiacChangedRole;
         m_serverMessages[112] = AmnesiacChangedRole;
         m_serverMessages[113] = BroughtBackToLife;
         m_serverMessages[114] = StartFirstDay;
         m_serverMessages[115] = BeingJailed;
         m_serverMessages[116] = JailedTarget;
         m_serverMessages[117] = UserJudgementVoted;
         m_serverMessages[118] = UserChangedJudgementVote;
         m_serverMessages[119] = UserCanceledJudgementVote;
         m_serverMessages[120] = TellJudgementVotes;
         m_serverMessages[121] = ExecutionerCompletedGoal;
         m_serverMessages[122] = JesterCompletedGoal;
         m_serverMessages[123] = MayorRevealed;
         m_serverMessages[124] = MayorRevealedAndAlreadyVoted;
         m_serverMessages[125] = DisguiserStoleYourIdentity;
         m_serverMessages[126] = DisguiserChangedIdentity;
         m_serverMessages[127] = DisguiserChangedUpdateMafia;
         m_serverMessages[128] = MediumIsTalkingToUs;
         m_serverMessages[129] = MediumCommunicating;
         m_serverMessages[130] = TellLastWill;
         m_serverMessages[131] = HowManyAbilitiesLeft;
         m_serverMessages[132] = MafiaTargeting;
         m_serverMessages[133] = TellJanitorTargetsRole;
         m_serverMessages[134] = TellJanitorTargetsWill;
         m_serverMessages[135] = SomeoneHasWon;
         m_serverMessages[136] = MafiosoPromotedToGodfather;
         m_serverMessages[137] = MafiosoPromotedToGodfatherUpdateMafia;
         m_serverMessages[138] = MafiaPromotedToMafioso;
         m_serverMessages[139] = TellMafiaAboutMafiosoPromotion;
         m_serverMessages[140] = ExecutionerConvertedToJester;
         m_serverMessages[141] = AmnesiacBecameMafiaOrWitch;
         m_serverMessages[142] = UserDisconnected;
         m_serverMessages[143] = MafiaWasJailed;
         m_serverMessages[144] = InvalidNameMessage;
         m_serverMessages[145] = StartNightTransition;
         m_serverMessages[146] = StartDayTransition;
         m_serverMessages[147] = LynchUser;
         m_serverMessages[148] = DeathNote;
         m_serverMessages[149] = DefaultFunction;
         m_serverMessages[150] = HousesChosen;
         m_serverMessages[151] = FirstDayTransition;
         m_serverMessages[152] = DefaultFunction;
         m_serverMessages[153] = CharactersChosen;
         m_serverMessages[154] = ResurrectionSetAlive;
         m_serverMessages[155] = StartDefense;
         m_serverMessages[156] = DefaultFunction;
         m_serverMessages[157] = UserLeftDuringSelection;
         m_serverMessages[158] = VigilanteKilledTown;
         m_serverMessages[159] = NotifyUsersOfPrivateMessage;
         m_serverMessages[160] = PrivateMessage;
         m_serverMessages[161] = EarnedAchievements;
         m_serverMessages[162] = DefaultFunction;
         m_serverMessages[163] = SpyNightAbilityMessage;
         m_serverMessages[164] = OneDayBeforeStalemate;
         m_serverMessages[165] = PetsChosen;
         m_serverMessages[166] = FacebookShareAchievement;
         m_serverMessages[167] = FacebookShareWin;
         m_serverMessages[168] = DeathAnimationsChosen;
         m_serverMessages[169] = FullMoonNight;
         m_serverMessages[170] = Identify;
         m_serverMessages[171] = EndGameInfo;
         m_serverMessages[172] = EndGameChatMessage;
         m_serverMessages[173] = EndGameUserUpdate;
         m_serverMessages[174] = DefaultFunction;
         m_serverMessages[175] = RoleLotsInfoMesssage;
         m_serverMessages[176] = PayPalShowApprovalPage;
         m_serverMessages[177] = DefaultFunction;
         m_serverMessages[178] = DefaultFunction;
         m_serverMessages[179] = DefaultFunction;
         m_serverMessages[180] = VampirePromotion;
         m_serverMessages[181] = OtherVampires;
         m_serverMessages[182] = AddVampire;
         m_serverMessages[183] = CanVampiresConvert;
         m_serverMessages[184] = VampireDied;
         m_serverMessages[185] = VampireHunterPromoted;
         m_serverMessages[186] = VampireVisitedMessage;
         m_serverMessages[186] = DefaultFunction;
         m_serverMessages[187] = DefaultFunction;
         m_serverMessages[188] = DefaultFunction;
         m_serverMessages[189] = DefaultFunction;
         m_serverMessages[190] = DefaultFunction;
         m_serverMessages[191] = DefaultFunction;
         m_serverMessages[192] = TransporterNotification;
         m_serverMessages[193] = DefaultFunction;
         m_serverMessages[194] = UpdateFreeCurrency;
         m_serverMessages[195] = ActiveEvents;
         m_serverMessages[196] = DefaultFunction;
         m_serverMessages[197] = TauntResult;
         m_serverMessages[198] = TauntActivated;
         m_serverMessages[199] = TauntConsumed;
         m_serverMessages[200] = TrackerNightAbility;
         m_serverMessages[201] = AmbusherNightAbility;
         m_serverMessages[202] = GuardianAngelProtection;
         m_serverMessages[203] = PirateDuel;
         m_serverMessages[204] = DuelTarget;
         m_serverMessages[205] = PotionMasterPotions;
         m_serverMessages[206] = HasNecronomicon;
         m_serverMessages[207] = OtherWitches;
         m_serverMessages[208] = PsychicNightAbility;
         m_serverMessages[209] = TrapperNightAbility;
         m_serverMessages[210] = TrapperTrapStatus;
         m_serverMessages[211] = PestilenceConversion;
         m_serverMessages[212] = JuggernautKillCount;
         m_serverMessages[213] = CovenGotNecronomicon;
         m_serverMessages[214] = GuardianAngelPromoted;
         m_serverMessages[215] = VIPTarget;
         m_serverMessages[216] = PirateDuelOutcome;
         m_serverMessages[217] = DefaultFunction;
         m_serverMessages[218] = DefaultFunction;
         m_serverMessages[219] = AccountFlags;
         m_serverMessages[220] = ZombieRotted;
         m_serverMessages[221] = LoverTarget;
         m_serverMessages[222] = PlagueSpread;
         m_serverMessages[223] = RivalTarget;
         m_serverMessages[224] = RankedInfo;
         m_serverMessages[225] = JailorDeathNote;
         m_serverMessages[226] = DefaultFunction;
         m_serverMessages[227] = SpyNightInfo;
      }
      
      private function StringTableMessage(param1:String) : void
      {
         if(param1.charCodeAt(1) == 11)
         {
            m_townOfSalem.GetGameStateManager().m_blackmailed = true;
         }
         var _loc3_:String = "" + (param1.charCodeAt(1) - 1);
         var _loc4_:Boolean = GameStateManager.IsCovenGame();
         var _loc2_:StringTableEntry = LocalizationManager.GetGameEntry(_loc3_,!!_loc4_?2:0);
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateWrapText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">","","",_loc2_.text,"</font>",_loc2_.color);
      }
      
      private function ForcedLogout(param1:String) : void
      {
         m_townOfSalem.GetUserInterfaceManager().SocketClose();
         m_townOfSalem.GetSocket().close();
      }
      
      private function ReturnToHomePage(param1:String) : void
      {
         if(m_townOfSalem.stage)
         {
            m_townOfSalem.stage.dispatchEvent(new Event("GoToHome"));
         }
      }
      
      private function UserLeftGame(param1:String) : void
      {
         var _loc2_:* = null;
         var _loc6_:int = param1.charCodeAt(1) - 1;
         var _loc5_:int = param1.charCodeAt(2) - 1;
         var _loc4_:int = param1.charCodeAt(3) - 1;
         var _loc3_:String = m_townOfSalem.GetUsers()[_loc4_].GetName();
         if(!_loc3_)
         {
            _loc3_ = LocalizationManager.GetGuiEntry("SomeoneThatLeft").text;
         }
         if(!_loc5_)
         {
            _loc2_ = "<b>" + _loc3_ + "</b>";
            m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("XHasLeftTheGame","%name%",_loc2_) + "</font>");
         }
      }
      
      private function ChatBoxMessage(param1:String) : void
      {
         var _loc4_:String = "";
         if(param1.length > 2)
         {
            if(param1.substr(2).length > 1)
            {
               _loc4_ = param1.substr(2,param1.substr(2).length - 1);
            }
         }
         if(param1.charCodeAt(1) == 30)
         {
            m_townOfSalem.GetSoundManager().PlaySound("sound/ChatboxSound.mp3");
            m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateWrapText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\"><b><font color=\"#DDDDDD\">","Jailor:","</font></b> ",_loc4_,"</font>");
            return;
         }
         if(param1.charCodeAt(1) == 45)
         {
            m_townOfSalem.GetSoundManager().PlaySound("sound/ChatboxSound.mp3");
            m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateWrapText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\"><b><font color=\"#DDDDDD\">","Medium:","</font></b> ",_loc4_,"</font>");
            return;
         }
         if(param1.charCodeAt(1) == 60)
         {
            m_townOfSalem.GetSoundManager().PlaySound("sound/ChatboxSound.mp3");
            m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateWrapText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\"><b><font color=\"#DDDDDD\">","Mafia:","</font></b> ",_loc4_,"</font>");
            return;
         }
         if(param1.charCodeAt(1) == 75)
         {
            m_townOfSalem.GetSoundManager().PlaySound("sound/ChatboxSound.mp3");
            m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateWrapText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\"><b><font color=\"#DDDDDD\">","Vampire:","</font></b> ",_loc4_,"</font>");
            return;
         }
         var _loc2_:Vector.<User> = m_townOfSalem.GetUsers();
         var _loc3_:int = param1.charCodeAt(1) - 1;
         if(GameStage.gameStage >= 4 && !_loc2_[_loc3_].IsAlive())
         {
            if(!_loc2_[_loc3_].IsIgnored())
            {
               m_townOfSalem.GetSoundManager().PlaySound("sound/ChatboxSound.mp3");
               m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateWrapText("<font face=\"Arial\" color=\"#A3A3A3\"size=\"11\"><i><b>","<font color=\"#DD0000\">" + _loc2_[_loc3_].GetName() + ":</font>","</b> ",_loc4_,"</i></font>");
            }
            return;
         }
         if(!_loc2_[_loc3_].IsIgnored())
         {
            m_townOfSalem.GetSoundManager().PlaySound("sound/ChatboxSound.mp3");
            m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateWrapText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\"><b><font color=" + TownOfSalem.DetermineColor(_loc3_) + ">",_loc2_[_loc3_].GetName() + ":","</font></b> ",_loc4_,"</font>");
         }
      }
      
      private function DoNotSpam(param1:String) : void
      {
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("DoNotSpam") + "</font>");
      }
      
      private function SystemMessage(param1:String) : void
      {
         if(m_townOfSalem)
         {
            m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateWrapText("<font face=\"Arial\" color=\"#FFFF00\" size=\"11\">","","",gui("SystemMessage") + " " + param1.substr(1),"</font>");
         }
      }
      
      private function CurrencyMultiplier(param1:String) : void
      {
         var _loc7_:int = 0;
         var _loc2_:int = 0;
         var _loc4_:String = param1.substr(1);
         var _loc3_:Array = _loc4_.split("*");
         var _loc5_:Object = {
            1:1,
            3:1
         };
         var _loc9_:int = 0;
         var _loc8_:* = _loc3_;
         for each(var _loc6_ in _loc3_)
         {
            _loc7_ = _loc6_.substr(0,1);
            _loc2_ = _loc6_.substr(1,1);
            if(_loc5_[_loc7_])
            {
               _loc5_[_loc7_] = _loc2_;
            }
         }
         m_townOfSalem.GetAccountOptions().m_paidCurrencyMultiplier = _loc5_[1];
         m_townOfSalem.GetAccountOptions().m_freeCurrencyMultiplier = _loc5_[3];
         SalemEventDispatcher.GetInstance().dispatchEvent(new ServerMessageEvent("SERVER_MESSAGE",param1));
      }
      
      private function UpdatePaidCurrency(param1:String) : void
      {
         SalemEventDispatcher.GetInstance().dispatchEvent(new ServerMessageEvent("SERVER_MESSAGE",param1));
      }
      
      private function SetLastBonusWinTime(param1:String) : void
      {
         m_townOfSalem.GetAchievementManager().LoadAchievement(213);
         SalemEventDispatcher.GetInstance().dispatchEvent(new ServerMessageEvent("SERVER_MESSAGE",param1));
      }
      
      private function PickNames(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc5_:* = null;
         GameStage.gameStage = 1;
         var _loc4_:int = param1.charCodeAt(1) - 1;
         _loc3_ = 0;
         while(_loc3_ < _loc4_)
         {
            _loc5_ = new User();
            m_townOfSalem.GetUsers().push(_loc5_);
            _loc3_++;
         }
         m_townOfSalem.GetBackgroundManager().LoadBackground(m_townOfSalem.GetAccountOptions().m_backgroundChoice);
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         _loc2_.Resize(ResolutionManager.DetermineRatio(m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight),m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         m_townOfSalem.addChild(_loc2_.GetChatBox());
         _loc2_.AddVirtualKeyboardListeners();
         _loc2_.GetNameSelection().SetDefaultName(m_townOfSalem.GetAccountOptions().m_nameChoice);
         m_townOfSalem.addChildAt(_loc2_.GetNameSelection(),0);
         TutorialManager.SendTrigger("OnNameSelection");
         m_townOfSalem.stage.focus = m_townOfSalem.stage;
         _loc2_.GetHeaderText().htmlText = "<font face=\"Arial\" color=\"#FFFFFF\" size=\"18\">" + gui("HeaderTextTypeName") + "</font>";
         m_townOfSalem.addChildAt(_loc2_.GetHeaderText(),1);
         m_townOfSalem.addChildAt(_loc2_.GetTipText(),2);
         _loc2_.UpdateGameTimer(gui("SelectName"),25);
      }
      
      private function NamesAndPositionsOfUsers(param1:String) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = param1.charCodeAt(1) - 1;
         var _loc3_:String = new String();
         _loc4_ = 2;
         while(_loc4_ < param1.length && param1.charCodeAt(_loc4_) != 0)
         {
            _loc3_ = _loc3_ + param1.charAt(_loc4_);
            _loc4_++;
         }
         var _loc2_:Vector.<User> = m_townOfSalem.GetUsers();
         _loc2_[_loc5_].SetName(_loc3_);
         _loc2_[_loc5_].SetNameColor(TownOfSalem.DetermineColorAsHex(_loc5_));
         _loc2_[_loc5_].SetPosition(_loc5_);
      }
      
      private function RoleAndPosition(param1:String) : void
      {
         var _loc2_:int = param1.charCodeAt(1) - 1;
         trace(gui("YourRoleIsX","%role%"," [ " + _loc2_ + " ] " + Roles.GetRoleNameByID(_loc2_)));
         if(_loc2_ == 26)
         {
            m_townOfSalem.GetGameStateManager().m_executionerTargetID = param1.charCodeAt(3) - 1;
         }
         else if(_loc2_ == 54)
         {
            m_townOfSalem.GetGameStateManager().m_guardianAngelTargetID = param1.charCodeAt(3) - 1;
         }
         var _loc3_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         _loc3_.DetermineRole(_loc2_,true);
         _loc3_.GetNameSelection().RemoveNameSelection();
         _loc3_.GetRoleCard().Initialize(ResolutionManager.DetermineRatio(m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight),m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         m_townOfSalem.GetGameStateManager().m_ourPos = param1.charCodeAt(2) - 1;
      }
      
      private function GetMonsterName(param1:int) : String
      {
         return param1 == 1?gui("Ghoul"):gui("Zombie");
      }
      
      private function GetActionVerb(param1:int, param2:int) : String
      {
         if(param1 == 1)
         {
            return gui("ActionVerb100");
         }
         var _loc4_:int = TownOfSalem.GetSingleton().GetGameStateManager().GetRoleIdForDeadPlayer(param2);
         if(_loc4_ == -2)
         {
            return gui("ActionVerb");
         }
         var _loc3_:String = "ActionVerb" + _loc4_;
         return gui(_loc3_);
      }
      
      private function gui(param1:String, ... rest) : String
      {
         if(rest.length > 0)
         {
            return LocalizationManager.GetGuiEntry(param1).replace.apply(this,rest);
         }
         return LocalizationManager.GetGuiEntry(param1).text;
      }
      
      private function guiAbility(param1:String, ... rest) : String
      {
         var _loc3_:int = m_townOfSalem.GetGameStateManager().m_numOfAbilities;
         if(_loc3_ != 1)
         {
            param1 = param1 + "2";
         }
         return gui(param1,"%number%",_loc3_.toString());
      }
      
      private function StartNight(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc6_:* = null;
         var _loc5_:* = false;
         GameStage.gameStage = 9;
         m_townOfSalem.GetSoundManager().PlaySound("sound/NightMusic.mp3");
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         var _loc4_:int = m_townOfSalem.GetGameStateManager().m_role;
         if(_loc4_ == 4 || _loc4_ == 6 || _loc4_ == 7 || _loc4_ == 55)
         {
            _loc2_.GetDayAbilityButton().visible = false;
            _loc2_.PositionUIButtons();
         }
         m_townOfSalem.GetTransitionManager().SortAllNightBackground();
         m_townOfSalem.GetGameStateManager().m_bWasLynched = false;
         m_townOfSalem.GetGameStateManager().m_personOnTrialID = -1;
         m_townOfSalem.GetGameStateManager().m_recentlyDeadUsers = new Vector.<int>(0,false);
         GameStage.gameStage = 9;
         m_townOfSalem.GetGameStateManager().m_nightNumber++;
         _loc2_.GetChatLog().AddText(gui("NightNumber") + " " + m_townOfSalem.GetGameStateManager().m_nightNumber.toString(),13421772);
         _loc2_.GetChatBox().Clear();
         _loc2_.GetHeaderText().htmlText = "<font face=\"Arial\" color=\"#FFFFFF\" size=\"18\">" + gui("NightNumber") + " <font color=\"#3366FF\">" + m_townOfSalem.GetGameStateManager().m_nightNumber + "</font></font>";
         m_townOfSalem.addChildAt(_loc2_.GetHeaderText(),1);
         _loc2_.StartHeaderTextTimer(3000);
         m_townOfSalem.GetGameStateManager().m_blackmailed = false;
         if(m_townOfSalem.GetGameStateManager().m_jailed)
         {
            _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("YouWereJailed") + "</font>",13421772);
            _loc2_.GetNightMenu().HideAllButtons();
         }
         if(m_townOfSalem.GetGameStateManager().m_pirateDueled)
         {
            _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("YouWereDueled") + "</font>",13421772);
            if(GameStateManager.CanBeRoleBlocked())
            {
               _loc2_.GetNightMenu().HideAllButtons();
            }
         }
         if(m_townOfSalem.GetGameStateManager().m_jailing)
         {
            _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("YouJailedSomeone") + "</font>");
            if(m_townOfSalem.GetGameStateManager().m_bJailorExecutedTown)
            {
               _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("JailorCantKillAgain") + "</font>");
            }
         }
         if(m_townOfSalem.GetGameStateManager().m_bMediumTalkingToYou)
         {
            _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("MediumIsTalkingToYou") + "</font>");
         }
         if(m_townOfSalem.GetGameStateManager().m_bTalkingToDead)
         {
            _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("YouAreTalkingToTheLiving") + "</font>");
         }
         if(m_townOfSalem.GetGameStateManager().m_jailedMafiaTarget != -1)
         {
            _loc3_ = "<font color=" + TownOfSalem.DetermineColor(m_townOfSalem.GetGameStateManager().m_jailedMafiaTarget) + "><b>" + m_townOfSalem.GetUsers()[m_townOfSalem.GetGameStateManager().m_jailedMafiaTarget].GetName() + "</b></font>";
            _loc6_ = "";
            _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("XWasHauledOffToJail","%name%",_loc3_) + "</font>");
            m_townOfSalem.GetGameStateManager().m_jailedMafiaTarget = -1;
         }
         if(m_townOfSalem.GetGameStateManager().IsAlive())
         {
            var _loc7_:* = m_townOfSalem.GetGameStateManager().m_role;
            if(59 !== _loc7_)
            {
               if(31 !== _loc7_)
               {
                  if(53 !== _loc7_)
                  {
                     if(30 !== _loc7_)
                     {
                        if(48 === _loc7_)
                        {
                           if(m_townOfSalem.GetGameStateManager().m_bIsTrapSet)
                           {
                              m_townOfSalem.GetUserInterfaceManager().GetNightMenu().HideAllButtons();
                              _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("TrapperFeedback4") + "</font>");
                              m_townOfSalem.GetUserInterfaceManager().GetNightMenu().ShowButtonByID(m_townOfSalem.GetGameStateManager().m_ourPos);
                           }
                           else if(m_townOfSalem.GetGameStateManager().m_bIsTrapReady)
                           {
                              _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("TrapperFeedback3") + "</font>");
                              if(m_townOfSalem.GetGameStateManager().m_jailed)
                              {
                                 m_townOfSalem.GetUserInterfaceManager().GetNightMenu().HideAllButtons();
                              }
                              else
                              {
                                 m_townOfSalem.GetUserInterfaceManager().GetNightMenu().ShowAllButtons();
                                 m_townOfSalem.GetUserInterfaceManager().GetNightMenu().HideButtonByID(m_townOfSalem.GetGameStateManager().m_ourPos);
                              }
                           }
                           else
                           {
                              if(!m_townOfSalem.GetGameStateManager().m_jailed)
                              {
                                 _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("TrapperFeedback2") + "</font>");
                              }
                              m_townOfSalem.GetUserInterfaceManager().GetNightMenu().HideAllButtons();
                           }
                        }
                     }
                     else if(m_townOfSalem.GetGameStateManager().m_bCanConvertTonight)
                     {
                        _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("VampCanBiteTonight") + "</font>");
                     }
                     else
                     {
                        _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("VampCantBiteTonight") + "</font>");
                     }
                  }
                  else if(m_townOfSalem.GetGameStateManager().m_nNumJuggernautKills == 0)
                  {
                     m_townOfSalem.GetUserInterfaceManager().GetNightMenu().HideAllButtons();
                  }
               }
               else
               {
                  m_townOfSalem.GetUserInterfaceManager().GetNightMenu().HideAllButtons();
               }
            }
            else
            {
               _loc2_.GetNightMenu().SetNecromancerLeftButtons();
            }
            if(m_townOfSalem.GetGameStateManager().m_dayNumber == 1)
            {
               TutorialManager.SendTrigger("OnFirstNight");
            }
            if(m_townOfSalem.GetGameStateManager().m_numOfAbilities > -1)
            {
               _loc5_ = m_townOfSalem.GetGameStateManager().m_numOfAbilities == 1;
               _loc7_ = m_townOfSalem.GetGameStateManager().m_role;
               if(0 !== _loc7_)
               {
                  if(1 !== _loc7_)
                  {
                     if(4 !== _loc7_)
                     {
                        if(8 !== _loc7_)
                        {
                           if(13 !== _loc7_)
                           {
                              if(14 !== _loc7_)
                              {
                                 if(18 !== _loc7_)
                                 {
                                    if(19 !== _loc7_)
                                    {
                                       if(22 !== _loc7_)
                                       {
                                          if(29 !== _loc7_)
                                          {
                                             if(54 !== _loc7_)
                                             {
                                                if(61 === _loc7_)
                                                {
                                                   _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + guiAbility("MedusaNight") + "</font>");
                                                   if(m_townOfSalem.GetGameStateManager().m_numOfAbilities == 0)
                                                   {
                                                      _loc2_.GetNightMenu().RemoveButton(m_townOfSalem.GetGameStateManager().m_ourPos);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + guiAbility("GuardianAngelNight") + "</font>");
                                                if(m_townOfSalem.GetGameStateManager().m_numOfAbilities == 0)
                                                {
                                                   _loc2_.GetNightMenu().HideAllButtons();
                                                }
                                             }
                                          }
                                          else
                                          {
                                             _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + guiAbility("SurvivorNight") + "</font>");
                                             if(m_townOfSalem.GetGameStateManager().m_numOfAbilities == 0)
                                             {
                                                _loc2_.GetNightMenu().RemoveButton(m_townOfSalem.GetGameStateManager().m_ourPos);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + guiAbility("JanitorNight") + "</font>");
                                          if(m_townOfSalem.GetGameStateManager().m_numOfAbilities == 0)
                                          {
                                             _loc2_.GetNightMenu().HideAllButtons();
                                          }
                                       }
                                    }
                                    else
                                    {
                                       _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + guiAbility("ForgerNight") + "</font>");
                                       if(m_townOfSalem.GetGameStateManager().m_numOfAbilities == 0)
                                       {
                                          _loc2_.GetNightMenu().HideAllButtons();
                                       }
                                    }
                                 }
                                 else
                                 {
                                    _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + guiAbility("DisguiserNight") + "</font>");
                                    if(m_townOfSalem.GetGameStateManager().m_numOfAbilities == 0)
                                    {
                                       _loc2_.GetNightMenu().HideAllButtons();
                                    }
                                 }
                              }
                              else
                              {
                                 if(m_townOfSalem.GetGameStateManager().m_nightNumber == 1)
                                 {
                                    _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("VigilanteMustWait") + "</font>");
                                    _loc2_.GetNightMenu().HideAllButtons();
                                 }
                                 else
                                 {
                                    if(!m_townOfSalem.GetGameStateManager().m_jailed && !m_townOfSalem.GetGameStateManager().m_pirateDueled)
                                    {
                                       _loc2_.GetNightMenu().ShowAllButtons();
                                    }
                                    _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + guiAbility("VigilanteNight") + "</font>");
                                 }
                                 if(m_townOfSalem.GetGameStateManager().m_numOfAbilities == 0)
                                 {
                                    _loc2_.GetNightMenu().HideAllButtons();
                                 }
                              }
                           }
                           else
                           {
                              _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + guiAbility("VeteranNight") + "</font>");
                              if(m_townOfSalem.GetGameStateManager().m_numOfAbilities == 0)
                              {
                                 _loc2_.GetNightMenu().RemoveButton(m_townOfSalem.GetGameStateManager().m_ourPos);
                              }
                           }
                        }
                        else
                        {
                           _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + guiAbility("RetributionistNight") + "</font>");
                           if(m_townOfSalem.GetGameStateManager().m_numOfAbilities == 0)
                           {
                              _loc2_.GetNightMenu().HideAllButtons();
                           }
                        }
                     }
                     else if(m_townOfSalem.GetGameStateManager().m_jailing)
                     {
                        if(m_townOfSalem.GetGameStateManager().m_nightNumber == 1)
                        {
                           _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("JailorMustWait") + "</font>");
                        }
                        else
                        {
                           _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + guiAbility("JailorNight") + "</font>");
                        }
                     }
                  }
                  else
                  {
                     _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + guiAbility("DoctorNight") + "</font>");
                     if(m_townOfSalem.GetGameStateManager().m_numOfAbilities == 0)
                     {
                        _loc2_.GetNightMenu().RemoveButton(m_townOfSalem.GetGameStateManager().m_ourPos);
                     }
                  }
               }
               else
               {
                  _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + guiAbility("BodyguardNight") + "</font>");
                  if(m_townOfSalem.GetGameStateManager().m_numOfAbilities == 0)
                  {
                     _loc2_.GetNightMenu().RemoveButton(m_townOfSalem.GetGameStateManager().m_ourPos);
                  }
               }
            }
         }
         _loc2_.GetNightMenu().ClearTarget();
         _loc2_.GetVotingMenu().EnableButtons();
         _loc2_.GetVotingMenu().RemoveAllGuardianAngelProtection();
         if(_loc2_.GetDayMenu() != null)
         {
            _loc2_.GetDayMenu().ClearTarget();
         }
         if(m_townOfSalem.GetBackgroundManager().GetDayBackground().parent == m_townOfSalem)
         {
            m_townOfSalem.removeChild(m_townOfSalem.GetBackgroundManager().GetDayBackground());
         }
         m_townOfSalem.addChildAt(m_townOfSalem.GetBackgroundManager().GetNightBackground(),0);
         if(TownOfSalem.GetSingleton().GetGameStateManager().m_gameInfo.isRapid)
         {
            _loc2_.UpdateGameTimer(gui("Night"),10,true);
         }
         else
         {
            _loc2_.UpdateGameTimer(gui("Night"),37,true);
         }
         if(_loc2_.GetDayMenu() != null)
         {
            if(_loc2_.GetDayMenu().parent != null)
            {
               _loc2_.GetDayMenu().parent.removeChild(_loc2_.GetDayMenu());
            }
         }
         if(m_townOfSalem.GetGameStateManager().m_bVigilKilledTown && m_townOfSalem.GetGameStateManager().IsAlive())
         {
            _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("VigilanteKilledTown") + "</font>");
            _loc2_.GetNightMenu().HideAllButtons();
         }
         if(m_townOfSalem.GetGameStateManager().IsAlive() || m_townOfSalem.GetGameStateManager().m_jesterLynched)
         {
            _loc2_.GetNightMenu().Resize(m_townOfSalem.GetResolutionRatio(),m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
            m_townOfSalem.addChild(_loc2_.GetNightMenu());
         }
         else
         {
            _loc2_.GetNightMenu().Resize(m_townOfSalem.GetResolutionRatio(),m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
            if(m_townOfSalem.GetGameStateManager().m_role != 54)
            {
               _loc2_.GetNightMenu().HideAllButtons();
            }
            m_townOfSalem.addChild(_loc2_.GetNightMenu());
         }
         TutorialManager.SendTrigger(TutorialTriggers.StartNight);
      }
      
      private function StartDay(param1:String) : void
      {
         var _loc2_:int = m_townOfSalem.GetGameStateManager().m_role;
         GameStage.gameStage = 4;
         m_townOfSalem.GetGameStateManager().m_jesterLynched = false;
         if(m_townOfSalem.GetGameStateManager().m_jailed)
         {
            m_townOfSalem.GetUserInterfaceManager().GetNightMenu().ShowAllButtons();
            m_townOfSalem.GetGameStateManager().m_jailed = false;
         }
         if(m_townOfSalem.GetGameStateManager().m_pirateDueled)
         {
            m_townOfSalem.GetUserInterfaceManager().GetNightMenu().ShowAllButtons();
            m_townOfSalem.GetGameStateManager().m_pirateDueled = false;
         }
         if(m_townOfSalem.GetGameStateManager().m_jailing)
         {
            if(_loc2_ == 4)
            {
               m_townOfSalem.GetUserInterfaceManager().GetNightMenu().RemoveButton(m_townOfSalem.GetGameStateManager().m_jailedTargetID);
            }
            m_townOfSalem.GetGameStateManager().m_jailedTargetID = -1;
            m_townOfSalem.GetGameStateManager().m_jailing = false;
         }
         m_townOfSalem.GetGameStateManager().m_bMediumTalkingToYou = false;
         m_townOfSalem.GetGameStateManager().m_bTalkingToDead = false;
         m_townOfSalem.GetUserInterfaceManager().StartDay();
         if(m_townOfSalem.GetUserInterfaceManager().GetNightMenu().parent == m_townOfSalem)
         {
            m_townOfSalem.removeChild(m_townOfSalem.GetUserInterfaceManager().GetNightMenu());
         }
      }
      
      private function WhoDiedAndHow(param1:String) : void
      {
         var _loc11_:* = null;
         var _loc2_:int = 0;
         var _loc14_:* = null;
         var _loc8_:int = 0;
         var _loc3_:* = null;
         var _loc5_:* = null;
         var _loc9_:* = null;
         trace("WhoDiedAndHow " + param1);
         m_townOfSalem.GetGameStateManager().m_bHasDeathNote = false;
         var _loc12_:int = param1.charCodeAt(1) - 1;
         var _loc13_:int = param1.charCodeAt(2) - 1;
         var _loc10_:int = param1.charCodeAt(3);
         var _loc6_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         if(_loc10_ == 1)
         {
            if(!m_townOfSalem.GetSoundManager().IsPlayingDayMusic())
            {
               m_townOfSalem.GetSoundManager().PlaySound("sound/DayMusic.mp3");
            }
         }
         _loc6_.GetVotingMenu().RemoveColor(_loc12_);
         _loc6_.GetNightMenu().RemoveColor(_loc12_,_loc13_);
         var _loc7_:int = m_townOfSalem.GetGameStateManager().m_role;
         if(_loc7_ == 4 || _loc7_ == 7 || _loc7_ == 55)
         {
            _loc6_.GetDayMenu().RemoveColor(_loc12_,_loc13_);
         }
         var _loc4_:Vector.<User> = m_townOfSalem.GetUsers();
         _loc4_[_loc12_].SetAlive(false);
         if(Roles.IsMafiaRole(_loc13_) || _loc13_ == 200 || _loc13_ == 201)
         {
            if(_loc6_.GetMafiaList())
            {
               _loc6_.GetMafiaList().RemoveRole(_loc12_);
            }
         }
         if(Roles.IsWitchRole(_loc13_) || _loc13_ == 200 || _loc13_ == 201)
         {
            if(_loc6_.GetWitchList())
            {
               _loc6_.GetWitchList().RemoveRole(_loc12_);
            }
         }
         if(_loc10_ == 1)
         {
            m_townOfSalem.GetCameraManager().CenterOnCharacter(_loc12_);
            _loc6_.SetKilledByMessage("");
            _loc11_ = [];
            _loc2_ = 4;
            while(_loc2_ < param1.length - 1)
            {
               _loc14_ = !!_loc4_[_loc12_].IsMale()?gui("He"):gui("She");
               _loc8_ = param1.charCodeAt(_loc2_);
               _loc3_ = "";
               var _loc15_:* = _loc8_;
               if(1 !== _loc15_)
               {
                  if(2 !== _loc15_)
                  {
                     if(3 !== _loc15_)
                     {
                        if(4 !== _loc15_)
                        {
                           if(5 !== _loc15_)
                           {
                              if(6 !== _loc15_)
                              {
                                 if(7 !== _loc15_)
                                 {
                                    if(8 !== _loc15_)
                                    {
                                       if(9 !== _loc15_)
                                       {
                                          if(10 !== _loc15_)
                                          {
                                             if(11 !== _loc15_)
                                             {
                                                if(12 !== _loc15_)
                                                {
                                                   if(13 !== _loc15_)
                                                   {
                                                      if(14 !== _loc15_)
                                                      {
                                                         if(15 !== _loc15_)
                                                         {
                                                            if(16 !== _loc15_)
                                                            {
                                                               if(17 !== _loc15_)
                                                               {
                                                                  if(18 !== _loc15_)
                                                                  {
                                                                     if(19 !== _loc15_)
                                                                     {
                                                                        if(20 !== _loc15_)
                                                                        {
                                                                           if(21 !== _loc15_)
                                                                           {
                                                                              if(22 !== _loc15_)
                                                                              {
                                                                                 if(23 !== _loc15_)
                                                                                 {
                                                                                    if(24 !== _loc15_)
                                                                                    {
                                                                                       if(25 !== _loc15_)
                                                                                       {
                                                                                          if(26 !== _loc15_)
                                                                                          {
                                                                                             if(27 !== _loc15_)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             _loc3_ = "<font color=\"#BF5FFF\">Medusa</font>";
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc3_ = "<font color=\"#BF5FFF\">Poisoner</font>";
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       _loc3_ = "<font color=\"#BF5FFF\">Necromancer\'s Ghoul</font>";
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc3_ = "<font color=\"#BF5FFF\">Hex Master</font>";
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc3_ = "<font color=\"#BF5FFF\">Potion Master</font>";
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              _loc3_ = "<font color=\"#BF5FFF\">Coven Leader</font>";
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc3_ = "<font color=\"#EDC240\">Pirate</font>";
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc3_ = "<font color=\"#631A35\">Juggernaut</font>";
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc3_ = "<font color=\"#424242\">Pestilence, Horseman of the Apocalypse</font>";
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  _loc3_ = "<font color=\"#DD0000\">Ambusher</font>";
                                                               }
                                                            }
                                                            else
                                                            {
                                                               _loc3_ = "<font color=\"#7FFF00\">Trapper</font>";
                                                            }
                                                         }
                                                         else
                                                         {
                                                            _loc3_ = "<font color=\"#7FFF00\">Crusader</font>";
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc3_ = "<font color=\"#7B8968\">Vampire</font>";
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc3_ = "<font color=\"#7FFF00\">Vampire Hunter</font>";
                                                   }
                                                }
                                                else
                                                {
                                                   _loc3_ = "<font color=\"#9F703A\">Werewolf</font>";
                                                }
                                             }
                                          }
                                          else
                                          {
                                             _loc3_ = "<font color=\"#7FFF00\">Veteran</font>";
                                          }
                                       }
                                       else
                                       {
                                          _loc3_ = "<font color=\"#7FFF00\">BodyGuard</font>";
                                       }
                                    }
                                 }
                                 else
                                 {
                                    _loc3_ = "<font color=\"#F7B3DA\">Jester</font>";
                                 }
                              }
                           }
                           else
                           {
                              _loc3_ = "<font color=\"#000080\">Serial Killer</font>";
                           }
                        }
                        else
                        {
                           _loc3_ = "<font color=\"#EE7600\">Arsonist</font>";
                        }
                     }
                     else
                     {
                        _loc3_ = "<font color=\"#DD0000\">Mafia</font>";
                     }
                  }
                  else
                  {
                     _loc3_ = "<font color=\"#7FFF00\">Vigilante</font>";
                  }
               }
               else
               {
                  _loc3_ = "<font color=\"#7FFF00\">Jailor</font>";
               }
               _loc5_ = "XDiedReason" + _loc8_ + "_" + (_loc2_ > 4?"1":"2");
               if(gui(_loc5_).indexOf("%gender%") != 0)
               {
                  _loc14_ = _loc14_.toLowerCase();
               }
               _loc9_ = gui(_loc5_,"%gender%",_loc14_,"%role%",_loc3_);
               _loc6_.AppendKilledByMessage(" " + _loc9_);
               _loc2_++;
            }
            if(_loc2_ == 5)
            {
               if(Math.random() >= 0.5)
               {
                  _loc6_.GetHeaderText().htmlText = "<font face=\"Arial\" color=\"#FFFFFF\" size=\"18\">" + gui("DeadFluff00","%name%","<font color =" + TownOfSalem.DetermineColor(_loc12_) + "><b>" + _loc4_[_loc12_].GetName() + "</b></font>") + "</font></font>";
               }
               else
               {
                  _loc6_.GetHeaderText().htmlText = "<font face=\"Arial\" color=\"#FFFFFF\" size=\"18\">" + gui("DeadFluff01","%name%","<font color =" + TownOfSalem.DetermineColor(_loc12_) + "><b>" + _loc4_[_loc12_].GetName() + "</b></font>") + "</font></font>";
               }
            }
            else if(_loc2_ == 6)
            {
               _loc6_.GetHeaderText().htmlText = "<font face=\"Arial\" color=\"#FFFFFF\" size=\"18\">" + gui("DeadFluff02","%name%","<font color =" + TownOfSalem.DetermineColor(_loc12_) + "><b>" + _loc4_[_loc12_].GetName() + "</b></font>") + "</font></font>";
            }
            else if(_loc2_ > 6)
            {
               _loc6_.GetHeaderText().htmlText = "<font face=\"Arial\" color=\"#FFFFFF\" size=\"18\">" + gui("DeadFluff03").replace("%name%","<font color =" + TownOfSalem.DetermineColor(_loc12_) + "><b>" + _loc4_[_loc12_].GetName() + "</b></font>") + "</font></font>";
            }
            m_townOfSalem.addChildAt(_loc6_.GetHeaderText(),1);
            _loc6_.StartKilledByMessageTimer(3000);
            TutorialManager.SendTrigger("OnDeathAnnouncement");
         }
         m_townOfSalem.GetGameStateManager().m_deadUserIDs.push(_loc12_);
         m_townOfSalem.GetGameStateManager().m_persistentDeadUserIDs.push(_loc12_);
         m_townOfSalem.GetGameStateManager().m_deadUserRoles.push(_loc13_);
         m_townOfSalem.GetGameStateManager().m_persistentDeadUserRoles.push(_loc13_);
         if(_loc10_ == 1)
         {
            _loc6_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("XDiedLastNight","%name%","<font color=" + TownOfSalem.DetermineColor(_loc12_) + "><b>" + _loc4_[_loc12_].GetName() + "</b></font>") + "</font>",16711680);
         }
      }
      
      private function StartDiscussion(param1:String) : void
      {
         m_townOfSalem.GetSoundManager().StopCurrentMusic();
         m_townOfSalem.GetSoundManager().SetPlayingDayMusic(false);
         m_townOfSalem.GetSoundManager().PlaySound("sound/DiscussionMusic.mp3");
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         if(_loc2_.GetHeaderText().parent == m_townOfSalem)
         {
            m_townOfSalem.removeChild(_loc2_.GetHeaderText());
         }
         GameStage.gameStage = 5;
         var _loc3_:int = m_townOfSalem.GetGameStateManager().m_role;
         if(_loc3_ == 4 || _loc3_ == 6 || _loc3_ == 7 || _loc3_ == 55)
         {
            if(m_townOfSalem.GetGameStateManager().IsAlive() && _loc3_ != 7)
            {
               _loc2_.GetDayAbilityButton().visible = true;
            }
            else if(!m_townOfSalem.GetGameStateManager().IsAlive() && _loc3_ == 7 && m_townOfSalem.GetGameStateManager().m_numOfAbilities > 0)
            {
               _loc2_.GetDayAbilityButton().visible = true;
            }
            _loc2_.PositionUIButtons();
            if(_loc2_.GetDayMenu())
            {
               _loc2_.GetDayMenu().StartDiscussion();
            }
         }
         if(!m_townOfSalem.GetGameStateManager().IsAlive())
         {
            if(m_townOfSalem.GetGameStateManager().m_numOfAbilities > -1)
            {
               if(!(int(m_townOfSalem.GetGameStateManager().m_role) - 7))
               {
                  _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + guiAbility("MediumDay") + "</font>");
               }
            }
         }
         _loc2_.GetVotingMenu().DisableButtons();
         m_townOfSalem.addChild(_loc2_.GetVotingMenu());
         if(TownOfSalem.GetSingleton().GetGameStateManager().m_gameInfo.isRapid)
         {
            _loc2_.UpdateGameTimer(gui("Discussion"),15);
         }
         else
         {
            _loc2_.UpdateGameTimer(gui("Discussion"),45);
         }
         TutorialManager.SendTrigger("OnDiscussion");
      }
      
      private function StartVoting(param1:String) : void
      {
         var _loc5_:int = 0;
         var _loc4_:* = null;
         m_townOfSalem.GetSoundManager().StopCurrentMusic();
         m_townOfSalem.GetSoundManager().PlaySound("sound/VotingMusic.mp3");
         GameStage.gameStage = 6;
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         if(m_townOfSalem.GetGameStateManager().IsAlive())
         {
            _loc2_.GetVotingMenu().EnableButtons();
         }
         var _loc3_:int = param1.charCodeAt(1);
         if(_loc3_ == 30)
         {
            _loc2_.GetHeaderText().htmlText = "<font face=\"Arial\" color=\"#FFFFFF\" size=\"18\"><font color =\"#FFFFFF\"><b>" + gui("TrialWillBegin") + "</b></font>";
            m_townOfSalem.addChildAt(_loc2_.GetHeaderText(),1);
            _loc2_.StartVotesNeededTimer(3000);
         }
         else
         {
            _loc5_ = GameStateManager.DetermineNumberOfVotesNeeded();
            _loc4_ = "<font color =\"#FFFF00\"><b>" + _loc5_ + "</b></font>";
            _loc2_.GetHeaderText().htmlText = "<font face=\"Arial\" color=\"#FFFFFF\" size=\"18\">" + gui("XVotesAreNeeded","%number%",_loc4_) + "</b></font>";
            m_townOfSalem.addChildAt(_loc2_.GetHeaderText(),1);
         }
         _loc2_.UpdateGameTimer(gui("Voting"),_loc3_);
         TutorialManager.SendTrigger("OnVoting");
         var _loc6_:int = m_townOfSalem.GetUserInterfaceManager().GetTrialsToday();
         if(_loc6_ > 1)
         {
            _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("TrialsRemainingPlural","%number%",_loc6_) + "</font>");
         }
         else if(_loc6_ == 1)
         {
            _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("TrialsRemainingSingle") + "</font>");
         }
         else
         {
            _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("NoTrialsRemaining") + "</font>");
            _loc2_.GetVotingMenu().DisableButtons();
         }
      }
      
      private function StartDefenseTransition(param1:String) : void
      {
         m_townOfSalem.GetSoundManager().StopCurrentMusic();
         m_townOfSalem.GetSoundManager().PlaySound("sound/ChurchBell.mp3");
         GameStage.gameStage = 7;
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         _loc2_.RemoveGameTimer();
         if(_loc2_.GetVotingMenu().parent == m_townOfSalem)
         {
            _loc2_.GetVotingMenu().DisableButtons();
         }
         var _loc3_:int = param1.charCodeAt(1) - 1;
         m_townOfSalem.GetGameStateManager().m_personOnTrialID = _loc3_;
         m_townOfSalem.GetTransitionManager().VotingStartTransition();
         var _loc4_:String = "<font color=" + TownOfSalem.DetermineColor(_loc3_) + "><b>" + m_townOfSalem.GetUsers()[_loc3_].GetName() + "</b></font>";
         _loc2_.GetHeaderText().htmlText = "<font face=\"Arial\" color=\"#FFFFFF\" size=\"18\">" + gui("TownPutThemOnTrial","%name%",_loc4_) + "</font>";
         m_townOfSalem.addChildAt(_loc2_.GetHeaderText(),1);
         if(_loc3_ == m_townOfSalem.GetGameStateManager().m_ourPos)
         {
            TutorialManager.SendTrigger(TutorialTriggers.OnMyDefense);
         }
         else
         {
            TutorialManager.SendTrigger(TutorialTriggers.OnDefense);
         }
      }
      
      private function StartJudgement(param1:String) : void
      {
         GameStage.gameStage = 8;
         var _loc3_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         var _loc2_:int = m_townOfSalem.GetGameStateManager().m_personOnTrialID;
         var _loc4_:String = "<font color=" + TownOfSalem.DetermineColor(m_townOfSalem.GetGameStateManager().m_personOnTrialID) + "><b>" + m_townOfSalem.GetUsers()[m_townOfSalem.GetGameStateManager().m_personOnTrialID].GetName() + "</b></font>";
         _loc3_.GetHeaderText().htmlText = "<font face=\"Arial\" color=\"#FFFFFF\" size=\"18\">" + gui("TownMayVoteOnThem","%name%",_loc4_) + "</font>";
         _loc3_.UpdateGameTimer(gui("Judgement"),20);
         if(m_townOfSalem.GetGameStateManager().IsAlive() && _loc2_ != m_townOfSalem.GetGameStateManager().m_ourPos)
         {
            _loc3_.GetJudgementMenu().Initialize(ResolutionManager.DetermineRatio(m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight),m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
            m_townOfSalem.addChild(_loc3_.GetJudgementMenu());
         }
         TutorialManager.SendTrigger("OnJudgement");
      }
      
      private function TrialFoundGuilty(param1:String) : void
      {
         var _loc2_:int = param1.charCodeAt(1) - 1;
         var _loc4_:int = param1.charCodeAt(2) - 1;
         var _loc3_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         if(_loc3_.GetJudgementMenu().parent == m_townOfSalem)
         {
            m_townOfSalem.removeChild(_loc3_.GetJudgementMenu());
         }
         _loc3_.RemoveGameTimer();
         var _loc5_:String = "<font color=" + TownOfSalem.DetermineColor(m_townOfSalem.GetGameStateManager().m_personOnTrialID) + "><b>" + m_townOfSalem.GetUsers()[m_townOfSalem.GetGameStateManager().m_personOnTrialID].GetName() + "</b></font>";
         _loc3_.GetHeaderText().htmlText = "<font face=\"Arial\" color=\"#FFFFFF\" size=\"18\">" + gui("TownDecidedToLynchThem","%name%",_loc5_,"%x%","<font color=\"#FF0000\">" + _loc2_ + "</font>","%y%","<font color=\"#66FF66\">" + _loc4_ + "</font>") + "</font>";
         _loc3_.StartLastWordsTimer(3000);
         TutorialManager.SendTrigger("OnLastWords");
      }
      
      private function TrialFoundNotGuilty(param1:String) : void
      {
         var _loc2_:int = param1.charCodeAt(1) - 1;
         var _loc4_:int = param1.charCodeAt(2) - 1;
         var _loc3_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         if(_loc3_.GetJudgementMenu().parent == m_townOfSalem)
         {
            m_townOfSalem.removeChild(_loc3_.GetJudgementMenu());
         }
         _loc3_.RemoveGameTimer();
         var _loc5_:String = "<font color=" + TownOfSalem.DetermineColor(m_townOfSalem.GetGameStateManager().m_personOnTrialID) + "><b>" + m_townOfSalem.GetUsers()[m_townOfSalem.GetGameStateManager().m_personOnTrialID].GetName() + "</b></font>";
         var _loc6_:String = gui("TownDecidedToPardonThem","%name%",_loc5_,"%x%","<font color=\"#FF0000\">" + _loc2_ + "</font>","%y%","<font color=\"#66FF66\">" + _loc4_ + "</font>");
         _loc3_.GetHeaderText().htmlText = "<font face=\"Arial\" color=\"#FFFFFF\" size=\"18\">" + _loc6_ + "</font>";
         _loc3_.DecrementTrialsAllowedToday();
         m_townOfSalem.GetTransitionManager().VotingEndTransition();
      }
      
      private function LookoutNightAbilityMessage(param1:String) : void
      {
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("TheyVisitedYourTarget","%name%",m_townOfSalem.GetUsers()[param1.charCodeAt(1) - 1].GetName()) + "</font>",5263440);
      }
      
      private function UserVoted(param1:String) : void
      {
         var _loc2_:int = param1.charCodeAt(1) - 1;
         var _loc5_:int = param1.charCodeAt(2) - 1;
         var _loc6_:String = "<font color=" + TownOfSalem.DetermineColor(_loc2_) + "><b>" + m_townOfSalem.GetUsers()[_loc2_].GetName() + "</b></font>";
         var _loc4_:String = "<font color=" + TownOfSalem.DetermineColor(_loc5_) + "><b>" + m_townOfSalem.GetUsers()[_loc5_].GetName() + "</b></font>";
         var _loc3_:String = gui("XUserVotedAgainstY","%name1%",_loc6_,"%name2%",_loc4_);
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + _loc3_ + "</font>");
         m_townOfSalem.GetUserInterfaceManager().GetVotingMenu().IncrementVotes(param1.charCodeAt(2) - 1,param1.charCodeAt(3));
      }
      
      private function UserCanceledVote(param1:String) : void
      {
         var _loc4_:int = param1.charCodeAt(1) - 1;
         var _loc2_:String = "<font color=" + TownOfSalem.DetermineColor(_loc4_) + "><b>" + m_townOfSalem.GetUsers()[_loc4_].GetName() + "</b></font>";
         var _loc3_:String = gui("XUserCanceledVote","%name%",_loc2_);
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + _loc3_ + "</font>");
         m_townOfSalem.GetUserInterfaceManager().GetVotingMenu().DecrementVotes(param1.charCodeAt(2) - 1,param1.charCodeAt(3));
      }
      
      private function UserChangedVote(param1:String) : void
      {
         var _loc2_:int = param1.charCodeAt(1) - 1;
         var _loc3_:int = param1.charCodeAt(2) - 1;
         var _loc6_:String = "<font color=" + TownOfSalem.DetermineColor(_loc2_) + "><b>" + m_townOfSalem.GetUsers()[_loc2_].GetName() + "</b></font>";
         var _loc5_:String = "<font color=" + TownOfSalem.DetermineColor(_loc3_) + "><b>" + m_townOfSalem.GetUsers()[_loc3_].GetName() + "</b></font>";
         var _loc4_:String = gui("XUserChangedVote","%name1%",_loc6_,"%name2%",_loc5_);
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + _loc4_ + "</font>");
         m_townOfSalem.GetUserInterfaceManager().GetVotingMenu().IncrementVotes(param1.charCodeAt(2) - 1,param1.charCodeAt(4));
         m_townOfSalem.GetUserInterfaceManager().GetVotingMenu().DecrementVotes(param1.charCodeAt(3) - 1,param1.charCodeAt(4));
      }
      
      private function UserDied(param1:String) : void
      {
         var _loc3_:Boolean = param1.charCodeAt(1) - 1;
         if(!_loc3_)
         {
            m_townOfSalem.GetUsers()[m_townOfSalem.GetGameStateManager().m_ourPos].SetAlive(false);
         }
         m_townOfSalem.GetGameStateManager().SetIsAlive(false);
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         if(_loc2_.GetRoleCard().parent == m_townOfSalem)
         {
            m_townOfSalem.removeChild(_loc2_.GetRoleCard());
         }
         m_townOfSalem.GetUserInterfaceManager().DisplayAttackedScreen();
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("YouHaveDied") + "</font>",16711680);
         TutorialManager.SendTrigger("OnYourDeath");
      }
      
      private function Resurrection(param1:String) : void
      {
         var _loc4_:int = 0;
         var _loc2_:int = 0;
         var _loc8_:int = param1.charCodeAt(1) - 1;
         var _loc3_:Vector.<User> = m_townOfSalem.GetUsers();
         _loc3_[_loc8_].SetAlive(true);
         var _loc5_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         var _loc7_:String = "<font color=" + TownOfSalem.DetermineColor(_loc8_) + "><b>" + _loc3_[_loc8_].GetName() + "</b></font>";
         _loc5_.GetHeaderText().htmlText = "<font face=\"Arial\" color=\"#00FF00\" size=\"18\">" + gui("WasBroughtBackToLife","%name%",_loc7_) + "</font>";
         m_townOfSalem.addChildAt(_loc5_.GetHeaderText(),1);
         m_townOfSalem.GetCameraManager().CenterOnCharacter(_loc8_);
         _loc5_.GetGraveyardList().RemoveDeath(_loc3_[_loc8_].GetName(),_loc8_,param1.charCodeAt(2) - 1);
         if(m_townOfSalem.GetGameStateManager().m_persistentDeadUserIDs.indexOf(_loc8_) > -1)
         {
            _loc4_ = m_townOfSalem.GetGameStateManager().m_persistentDeadUserIDs.indexOf(_loc8_);
            m_townOfSalem.GetGameStateManager().m_persistentDeadUserIDs.splice(_loc4_,1);
            m_townOfSalem.GetGameStateManager().m_persistentDeadUserRoles.splice(_loc4_,1);
         }
         _loc5_.GetVotingMenu().AddColor(_loc8_);
         _loc5_.GetNightMenu().AddColor(_loc8_);
         if(m_townOfSalem.GetGameStateManager().m_bVigilKilledTown)
         {
            _loc5_.GetNightMenu().ShowAllButtons();
            m_townOfSalem.GetGameStateManager().m_bVigilKilledTown = false;
         }
         var _loc6_:int = m_townOfSalem.GetGameStateManager().m_role;
         if(_loc6_ == 4 || _loc6_ == 7 || _loc6_ == 55)
         {
            _loc5_.GetDayMenu().AddColor(_loc8_);
            if(_loc8_ != m_townOfSalem.GetGameStateManager().m_ourPos)
            {
               _loc5_.GetDayMenu().AddButton(_loc8_,true);
            }
         }
         if(_loc6_ == 59)
         {
            _loc2_ = m_townOfSalem.GetGameStateManager().m_rottedZombies.indexOf(_loc8_);
            if(_loc2_ > -1)
            {
               m_townOfSalem.GetGameStateManager().m_rottedZombies.splice(_loc2_,1);
            }
            _loc5_.GetNightMenu().SetNecromancerLeftButtons();
         }
         TownOfSalem.GetSingleton().GetSoundManager().PlaySound("sound/RankedQueueSound.mp3");
         _loc5_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("HasBeenResurrected","%name%",_loc7_) + "</font>");
      }
      
      private function TellRoleList(param1:String) : void
      {
         var _loc5_:int = 0;
         trace("TellRoleList " + param1);
         var _loc3_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         _loc3_.CreateMenus();
         var _loc2_:int = 1;
         var _loc4_:Array = [];
         while(param1.charCodeAt(_loc2_) != 0)
         {
            _loc5_ = param1.charCodeAt(_loc2_) - 1;
            trace("  || " + _loc2_ + " || " + Roles.GetRoleNameByID(_loc5_));
            _loc4_.push(_loc5_);
            _loc3_.GetRoleList().AddRole(_loc5_);
            _loc2_++;
         }
         _loc3_.SetRoleList(_loc4_);
         m_townOfSalem.removeChild(_loc3_.GetChatBox());
         _loc3_.UpdateGameTimer(gui("RoleSelection"),25);
      }
      
      private function UserChosenName(param1:String) : void
      {
         var _loc3_:Vector.<User> = m_townOfSalem.GetUsers();
         var _loc5_:int = param1.charCodeAt(2) - 1;
         _loc3_[_loc5_].SetName(param1.substring(3,param1.length - 1));
         var _loc4_:String = "" + (param1.charCodeAt(1) - 1);
         var _loc2_:StringTableEntry = LocalizationManager.GetGameEntry(_loc4_);
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + param1.substring(3,param1.length - 1) + " " + _loc2_.text + "</font>",_loc2_.color);
      }
      
      private function OtherMafia(param1:String) : void
      {
         m_townOfSalem.GetUserInterfaceManager().CreateMafiaList();
         m_townOfSalem.GetGameStateManager().m_mafiaIDs = [];
         var _loc2_:int = 1;
         while(param1.charCodeAt(_loc2_) != 0 && param1.charCodeAt(_loc2_ + 1) != 0)
         {
            m_townOfSalem.GetGameStateManager().m_mafiaIDs.push(param1.charCodeAt(_loc2_) - 1);
            m_townOfSalem.GetUserInterfaceManager().GetMafiaList().AddRole(m_townOfSalem.GetUsers()[param1.charCodeAt(_loc2_) - 1].GetName(),param1.charCodeAt(_loc2_) - 1,param1.charCodeAt(_loc2_ + 1) - 1);
            _loc2_ = _loc2_ + 2;
         }
         if(GameStage.gameStage != 1)
         {
            m_townOfSalem.addChild(m_townOfSalem.GetUserInterfaceManager().GetMafiaList());
         }
      }
      
      private function TellTownAmnesiacChangedRole(param1:String) : void
      {
         var _loc2_:String = Roles.GetRoleNameByID(param1.charCodeAt(1) - 1);
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("AmnesiacRememberedRoleX","%role%",_loc2_) + "</font>");
      }
      
      private function AmnesiacChangedRole(param1:String) : void
      {
         m_townOfSalem.GetGameStateManager().m_role = param1.charCodeAt(1) - 1;
         var _loc3_:int = m_townOfSalem.GetGameStateManager().m_role;
         if(_loc3_ == 24)
         {
            return;
         }
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         if(_loc2_.GetRoleCard().parent == m_townOfSalem)
         {
            m_townOfSalem.removeChild(_loc2_.GetRoleCard());
         }
         var _loc4_:Number = ResolutionManager.DetermineRatio(m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         if(_loc3_ == 26)
         {
            m_townOfSalem.GetGameStateManager().m_executionerTargetID = param1.charCodeAt(2) - 1;
         }
         else if(_loc3_ == 54)
         {
            m_townOfSalem.GetGameStateManager().m_guardianAngelTargetID = param1.charCodeAt(2) - 1;
         }
         else if(_loc3_ == 4 || _loc3_ == 7 || _loc3_ == 55)
         {
            if(_loc3_ == 4)
            {
               _loc2_.CreateJailorMenu(_loc4_);
            }
            else if(_loc3_ == 55)
            {
               _loc2_.CreatePirateMenu(_loc4_);
            }
            else if(_loc3_ == 7)
            {
               _loc2_.CreateMediumMenu(_loc4_);
            }
            if(_loc3_ == 4)
            {
               _loc2_.GetDayAbilityButton().SetMouseOverText("<font size=\"11\" color=\"#FFFFFF\">" + gui("JailTooltip") + "</font>");
            }
            else if(_loc3_ == 55)
            {
               _loc2_.GetDayAbilityButton().SetMouseOverText("<font size=\"11\" color=\"#FFFFFF\">" + gui("PirateTooltip") + "</font>");
            }
            else if(_loc3_ == 7)
            {
               _loc2_.GetDayAbilityButton().SetMouseOverText("<font size=\"11\" color=\"#FFFFFF\">" + gui("SeanceTooltip") + "</font>");
               _loc2_.GetDayAbilityButton().visible = !m_townOfSalem.GetGameStateManager().IsAlive();
            }
            m_townOfSalem.addDisplayObject(_loc2_.GetDayAbilityButton());
         }
         else if(GameStateManager.IsMafia())
         {
            m_townOfSalem.addChild(_loc2_.GetMafiaList());
         }
         else if(_loc3_ == 30)
         {
            m_townOfSalem.addChild(m_townOfSalem.GetUserInterfaceManager().GetVampireList());
         }
         else if(GameStateManager.IsWitchFaction())
         {
            m_townOfSalem.addChild(m_townOfSalem.GetUserInterfaceManager().GetWitchList());
         }
         if(Roles.RoleUsesDeathNote(_loc3_))
         {
            _loc2_.CreateDeathNote();
            m_townOfSalem.addDisplayObject(_loc2_.GetDeathNoteButton());
         }
         _loc2_.DetermineRole(_loc3_);
         _loc2_.CreateNightMenu();
         _loc2_.GetNightMenu().Initialize(_loc4_,m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc2_.GetRoleCard().Initialize(_loc4_,m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         m_townOfSalem.addChild(_loc2_.GetRoleCard());
         _loc2_.PositionUIButtons();
         if(m_townOfSalem.GetGameStateManager().m_rivalPos != -1)
         {
            _loc2_.GetNightMenu().RemoveButton(m_townOfSalem.GetGameStateManager().m_rivalPos);
         }
      }
      
      private function BroughtBackToLife(param1:String) : void
      {
         m_townOfSalem.GetGameStateManager().SetIsAlive(true);
         m_townOfSalem.GetUsers()[m_townOfSalem.GetGameStateManager().m_ourPos].SetAlive(true);
         m_townOfSalem.GetUserInterfaceManager().GetNightMenu().ShowAllButtons();
         m_townOfSalem.addChild(m_townOfSalem.GetUserInterfaceManager().GetRoleCard());
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("YouWereResurrected") + "</font>");
         if(m_townOfSalem.GetUserInterfaceManager().GetLastWill())
         {
            if(!TownOfSalem.GetSingleton().hasDisplayObject(m_townOfSalem.GetUserInterfaceManager().GetLastWill()))
            {
               m_townOfSalem.GetUserInterfaceManager().GetLastWill().SaveWill();
            }
         }
      }
      
      private function StartFirstDay(param1:String) : void
      {
         var _loc5_:int = 0;
         var _loc8_:* = 0;
         var _loc4_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         _loc4_.DismissRoleResults();
         _loc4_.GetChatLog().ClearText();
         _loc4_.GetHeaderText().width = 250;
         _loc4_.GetHeaderText().height = 300;
         m_townOfSalem.GetSoundManager().PlaySound("sound/DiscussionMusic.mp3");
         var _loc10_:Vector.<int> = m_townOfSalem.GetGameStateManager().m_leftDuringSelectionUsers;
         _loc5_ = 0;
         while(_loc5_ < _loc10_.length)
         {
            if(_loc4_.GetNightMenu())
            {
               _loc4_.GetNightMenu().DisconnectName(_loc10_[_loc5_]);
            }
            if(_loc4_.GetVotingMenu())
            {
               _loc4_.GetVotingMenu().DisconnectName(_loc10_[_loc5_]);
            }
            _loc5_++;
         }
         var _loc9_:Number = ResolutionManager.DetermineRatio(m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc4_.GetHeaderText().scaleX = _loc9_;
         _loc4_.GetHeaderText().scaleY = _loc9_;
         if(m_townOfSalem.stage.stageWidth >= 800)
         {
            _loc8_ = uint(m_townOfSalem.stage.stageWidth);
         }
         else
         {
            _loc8_ = uint(800);
         }
         var _loc2_:Number = _loc8_ / 2 - 250 * _loc9_ / 2;
         var _loc3_:Number = _loc4_.GetRoleList().x + 130 * _loc9_;
         if(_loc2_ < _loc3_)
         {
            _loc4_.GetHeaderText().x = _loc3_;
         }
         else
         {
            _loc4_.GetHeaderText().x = _loc8_ / 2 - _loc4_.GetHeaderText().width / 2;
         }
         _loc4_.GetHeaderText().y = 65 * _loc9_;
         m_townOfSalem.GetGameStateManager().m_dayNumber++;
         _loc4_.GetChatLog().AddText(gui("DayNumber") + " " + m_townOfSalem.GetGameStateManager().m_dayNumber.toString(),13421772);
         _loc4_.GetHeaderText().htmlText = "<font face=\"Arial\" color=\"#FFFFFF\" size=\"18\">" + gui("DayNumber") + "<font color=\"#CCFF00\"> 1</font></font>";
         m_townOfSalem.addChildAt(_loc4_.GetHeaderText(),1);
         _loc4_.StartHeaderTextTimer(3000);
         if(m_townOfSalem.GetGameStateManager().m_role == 4)
         {
            _loc4_.CreateJailorMenu(_loc9_);
         }
         else if(m_townOfSalem.GetGameStateManager().m_role == 55)
         {
            _loc4_.CreatePirateMenu(_loc9_);
         }
         else if(m_townOfSalem.GetGameStateManager().m_role == 7)
         {
            _loc4_.CreateMediumMenu(_loc9_);
         }
         m_townOfSalem.addChild(_loc4_.GetNameTag());
         m_townOfSalem.addChild(_loc4_.GetGraveyardList());
         m_townOfSalem.addChild(_loc4_.GetRoleList());
         m_townOfSalem.addChild(_loc4_.GetRoleCard());
         if(_loc4_.GetMafiaList())
         {
            m_townOfSalem.addChild(_loc4_.GetMafiaList());
         }
         if(_loc4_.GetSpecialModeList())
         {
            m_townOfSalem.addChild(_loc4_.GetSpecialModeList());
         }
         if(_loc4_.GetVampireList())
         {
            m_townOfSalem.addChild(_loc4_.GetVampireList());
         }
         if(_loc4_.GetWitchList())
         {
            m_townOfSalem.addChild(_loc4_.GetWitchList());
         }
         var _loc6_:Number = ResolutionManager.DetermineReverseRatio(m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         m_townOfSalem.addDisplayObject(_loc4_.GetFullscreenButton());
         m_townOfSalem.addDisplayObject(_loc4_.GetReportButton());
         m_townOfSalem.addDisplayObject(_loc4_.GetMusicButton());
         m_townOfSalem.addDisplayObject(_loc4_.GetSoundButton());
         m_townOfSalem.addDisplayObject(_loc4_.GetChatLogButton());
         m_townOfSalem.addDisplayObject(_loc4_.GetLastWillButton());
         if(!TownOfSalem.GetSingleton().GetGameStateManager().m_gameInfo.isRanked)
         {
            m_townOfSalem.addDisplayObject(_loc4_.GetLeaveGameButton());
         }
         var _loc7_:int = m_townOfSalem.GetGameStateManager().m_role;
         if(_loc7_ == 4 || _loc7_ == 55 || _loc7_ == 6 || _loc7_ == 7)
         {
            if(_loc7_ == 4)
            {
               _loc4_.GetDayAbilityButton().SetMouseOverText("<font size=\"11\" color=\"#FFFFFF\">" + gui("JailTooltip") + "</font>");
            }
            else if(_loc7_ == 6)
            {
               _loc4_.GetDayAbilityButton().SetMouseOverText("<font size=\"11\" color=\"#FFFFFF\">" + gui("RevealTooltip") + "</font>");
            }
            else if(_loc7_ == 55)
            {
               _loc4_.GetDayAbilityButton().SetMouseOverText("<font size=\"11\" color=\"#FFFFFF\">" + gui("PirateTooltip") + "</font>");
            }
            else if(_loc7_ == 7)
            {
               _loc4_.GetDayAbilityButton().SetMouseOverText("<font size=\"11\" color=\"#FFFFFF\">" + gui("SeanceTooltip") + "</font>");
               _loc4_.GetDayAbilityButton().visible = false;
            }
            m_townOfSalem.addDisplayObject(_loc4_.GetDayAbilityButton());
         }
         if(Roles.RoleUsesDeathNote(_loc7_))
         {
            _loc4_.CreateDeathNote();
            m_townOfSalem.addDisplayObject(_loc4_.GetDeathNoteButton());
         }
         _loc4_.PositionUIButtons();
         _loc4_.UpdateGameTimer(gui("Day"),15);
         m_townOfSalem.addChild(_loc4_.GetChatBox());
         TutorialManager.SendTrigger("OnFirstDay");
      }
      
      private function BeingJailed(param1:String) : void
      {
         m_townOfSalem.GetGameStateManager().m_jailed = true;
      }
      
      private function JailedTarget(param1:String) : void
      {
         m_townOfSalem.GetGameStateManager().m_jailing = true;
         m_townOfSalem.GetGameStateManager().m_jailedTargetID = param1.charCodeAt(1) - 1;
         m_townOfSalem.GetGameStateManager().m_bJailorExecutedTown = Boolean(param1.charCodeAt(3) - 1);
         if(param1.charCodeAt(2) - 1 && !m_townOfSalem.GetGameStateManager().m_bJailorExecutedTown)
         {
            if(m_townOfSalem.GetGameStateManager().m_nightNumber > 0)
            {
               m_townOfSalem.GetUserInterfaceManager().GetNightMenu().AddButton(m_townOfSalem.GetGameStateManager().m_jailedTargetID);
            }
         }
      }
      
      private function UserJudgementVoted(param1:String) : void
      {
         var _loc2_:int = param1.charCodeAt(1) - 1;
         var _loc3_:String = "<font color=" + TownOfSalem.DetermineColor(_loc2_) + "><b>" + m_townOfSalem.GetUsers()[_loc2_].GetName() + "</b></font>";
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("XJudgementHasVoted","%name%",_loc3_) + "</font>");
      }
      
      private function UserChangedJudgementVote(param1:String) : void
      {
         var _loc2_:int = param1.charCodeAt(1) - 1;
         var _loc3_:String = "<font color=" + TownOfSalem.DetermineColor(_loc2_) + "><b>" + m_townOfSalem.GetUsers()[_loc2_].GetName() + "</b></font>";
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("XJudgementChangedVote","%name%",_loc3_) + "</font>");
      }
      
      private function UserCanceledJudgementVote(param1:String) : void
      {
         var _loc2_:int = param1.charCodeAt(1) - 1;
         var _loc3_:String = "<font color=" + TownOfSalem.DetermineColor(_loc2_) + "><b>" + m_townOfSalem.GetUsers()[_loc2_].GetName() + "</b></font>";
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("XJudgementCancelled","%name%",_loc3_) + "</font>");
      }
      
      private function TellJudgementVotes(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc7_:* = null;
         var _loc6_:* = null;
         var _loc2_:* = null;
         var _loc5_:* = null;
         var _loc8_:* = null;
         var _loc4_:int = param1.charCodeAt(1) - 1;
         var _loc9_:* = param1.charCodeAt(2) - 1;
         if(0 !== _loc9_)
         {
            if(1 !== _loc9_)
            {
               if(2 === _loc9_)
               {
                  _loc5_ = "<font color=" + TownOfSalem.DetermineColor(_loc4_) + "><b>" + m_townOfSalem.GetUsers()[_loc4_].GetName() + "</b></font>";
                  _loc8_ = "<font color=\"#66CCFF\">" + gui("Abstained") + "</font>";
                  m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("XAbstained","%name%",_loc5_,"%verdict%",_loc8_) + "</font>");
               }
            }
            else
            {
               _loc6_ = "<font color=" + TownOfSalem.DetermineColor(_loc4_) + "><b>" + m_townOfSalem.GetUsers()[_loc4_].GetName() + "</b></font>";
               _loc2_ = "<font color=\"#66FF66\">" + gui("Innocent") + "</font>";
               m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("XJudgementVotedY","%name%",_loc6_,"%verdict%",_loc2_) + "</font>");
            }
         }
         else
         {
            _loc3_ = "<font color=" + TownOfSalem.DetermineColor(_loc4_) + "><b>" + m_townOfSalem.GetUsers()[_loc4_].GetName() + "</b></font>";
            _loc7_ = "<font color=\"#FF0000\">" + gui("Guilty") + "</font>";
            m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("XJudgementVotedY","%name%",_loc3_,"%verdict%",_loc7_) + "</font>");
         }
      }
      
      private function ExecutionerCompletedGoal(param1:String) : void
      {
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("ExecutionerCompletedGoal") + "</font>");
      }
      
      private function JesterCompletedGoal(param1:String) : void
      {
         m_townOfSalem.GetGameStateManager().m_jesterLynched = true;
         var _loc2_:int = 1;
         while(param1.charCodeAt(_loc2_) != 0 && _loc2_ < param1.length)
         {
            m_townOfSalem.GetUserInterfaceManager().GetNightMenu().AddButton(param1.charCodeAt(_loc2_) - 1);
            _loc2_++;
         }
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("JesterCompletedGoal") + "</font>");
      }
      
      private function MayorRevealed(param1:String) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = param1.charCodeAt(1) - 1;
         if(_loc3_ == TownOfSalem.GetSingleton().GetGameStateManager().m_ourPos)
         {
            _loc2_ = TownOfSalem.GetSingleton().GetUserInterfaceManager().GetDayAbilityButton();
            if(TownOfSalem.GetSingleton().hasDisplayObject(_loc2_))
            {
               TownOfSalem.GetSingleton().removeDisplayObject(TownOfSalem.GetSingleton().GetUserInterfaceManager().GetDayAbilityButton());
            }
         }
         else if(m_townOfSalem.GetGameStateManager().m_role == 1)
         {
            m_townOfSalem.GetUserInterfaceManager().GetNightMenu().RemoveButton(_loc3_);
         }
         var _loc4_:String = "<font color=" + TownOfSalem.DetermineColor(_loc3_) + "><b>" + m_townOfSalem.GetUsers()[_loc3_].GetName() + "</b></font>";
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FF7F66\" size=\"11\">" + gui("XMayorRevealed","%name%",_loc4_) + "</font>");
      }
      
      private function MayorRevealedAndAlreadyVoted(param1:String) : void
      {
         m_townOfSalem.GetUserInterfaceManager().GetVotingMenu().IncrementVotes(param1.charCodeAt(1) - 1,2);
      }
      
      private function DisguiserStoleYourIdentity(param1:String) : void
      {
         var _loc2_:int = param1.charCodeAt(1) - 1;
         var _loc5_:int = m_townOfSalem.GetGameStateManager().m_ourPos;
         m_townOfSalem.GetGameStateManager().m_ourPos = _loc2_;
         var _loc3_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         _loc3_.GetNameTag().SetName(m_townOfSalem.GetUsers()[_loc2_].GetName(),_loc2_);
         _loc3_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("DisguiserStoleYourIdentity") + "</font>");
         _loc3_.GetVotingMenu().AddColor(_loc5_);
         _loc3_.GetNightMenu().AddColor(_loc5_);
         var _loc4_:int = m_townOfSalem.GetGameStateManager().m_role;
         if(_loc4_ == 4 || _loc4_ == 55)
         {
            if(_loc3_.GetDayMenu())
            {
               _loc3_.GetDayMenu().AddButton(_loc5_,true);
            }
         }
      }
      
      private function DisguiserChangedIdentity(param1:String) : void
      {
         var _loc4_:int = 0;
         var _loc2_:int = param1.charCodeAt(1) - 1;
         var _loc5_:int = m_townOfSalem.GetGameStateManager().m_ourPos;
         var _loc3_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         _loc3_.GetMafiaList().RemoveRole(m_townOfSalem.GetGameStateManager().m_ourPos);
         m_townOfSalem.GetGameStateManager().m_ourPos = _loc2_;
         var _loc6_:Array = m_townOfSalem.GetGameStateManager().m_mafiaIDs;
         _loc4_ = 0;
         while(_loc4_ < _loc6_.length)
         {
            if(_loc6_[_loc4_] == _loc5_)
            {
               _loc6_[_loc4_] = _loc2_;
               break;
            }
            _loc4_++;
         }
         _loc3_.GetVotingMenu().RemoveButton(m_townOfSalem.GetGameStateManager().m_ourPos);
         _loc3_.GetNightMenu().RemoveButton(m_townOfSalem.GetGameStateManager().m_ourPos);
         _loc3_.GetMafiaList().AddRole(m_townOfSalem.GetUsers()[m_townOfSalem.GetGameStateManager().m_ourPos].GetName(),m_townOfSalem.GetGameStateManager().m_ourPos,m_townOfSalem.GetGameStateManager().m_role);
         _loc3_.GetNameTag().SetName(m_townOfSalem.GetUsers()[_loc2_].GetName(),_loc2_);
         _loc3_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("DisguiserChangedIdentity") + "</font>");
      }
      
      private function DisguiserChangedUpdateMafia(param1:String) : void
      {
         var _loc4_:int = 0;
         var _loc3_:int = param1.charCodeAt(1) - 1;
         var _loc6_:int = param1.charCodeAt(2) - 1;
         var _loc5_:Array = m_townOfSalem.GetGameStateManager().m_mafiaIDs;
         _loc4_ = 0;
         while(_loc4_ < _loc5_.length)
         {
            if(_loc5_[_loc4_] == _loc6_)
            {
               _loc5_[_loc4_] = _loc3_;
               break;
            }
            _loc4_++;
         }
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         _loc2_.GetNightMenu().RemoveButton(_loc3_);
         _loc2_.GetMafiaList().RemoveRole(_loc6_);
         _loc2_.GetMafiaList().AddRole(m_townOfSalem.GetUsers()[_loc3_].GetName(),_loc3_,18);
      }
      
      private function MediumIsTalkingToUs(param1:String) : void
      {
         m_townOfSalem.GetGameStateManager().m_bMediumTalkingToYou = true;
      }
      
      private function MediumCommunicating(param1:String) : void
      {
         m_townOfSalem.GetGameStateManager().m_bTalkingToDead = true;
         m_townOfSalem.GetGameStateManager().m_numOfAbilities = m_townOfSalem.GetGameStateManager().m_numOfAbilities - 1;
      }
      
      private function TellLastWill(param1:String) : void
      {
         var _loc3_:int = param1.charCodeAt(1) - 1;
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         if(param1.charCodeAt(2) == 1)
         {
            m_townOfSalem.GetGameStateManager().m_bDeadUserHasWill = false;
            _loc2_.SetDeadUserWillText("");
         }
         else
         {
            m_townOfSalem.GetGameStateManager().m_bDeadUserHasWill = true;
            _loc2_.SetDeadUserWillText(param1.substr(3));
            _loc2_.GetDeadUsersLastWills()[_loc3_] = param1.substr(3);
         }
         _loc2_.StartHeaderWillTextTimer(7000);
         _loc2_.StartDisplayWillTimer(9000);
      }
      
      private function HowManyAbilitiesLeft(param1:String) : void
      {
         var _loc2_:int = param1.charCodeAt(1) - 1;
         trace("HowManyAbilitiesLeft = " + _loc2_);
         TownOfSalem.GetSingleton().GetGameStateManager().m_numOfAbilities = _loc2_;
      }
      
      private function MafiaTargeting(param1:String) : void
      {
         var _loc32_:* = null;
         var _loc30_:* = null;
         var _loc27_:* = null;
         var _loc26_:* = null;
         var _loc22_:* = null;
         var _loc7_:* = null;
         var _loc24_:* = null;
         var _loc13_:* = null;
         var _loc31_:* = null;
         var _loc8_:* = null;
         var _loc33_:* = null;
         var _loc10_:* = null;
         var _loc9_:Boolean = false;
         var _loc20_:* = null;
         var _loc34_:* = null;
         var _loc11_:* = null;
         var _loc36_:Boolean = false;
         var _loc18_:* = null;
         var _loc25_:* = null;
         var _loc16_:* = null;
         var _loc38_:Boolean = false;
         var _loc19_:* = null;
         var _loc29_:* = null;
         var _loc39_:* = null;
         var _loc15_:* = null;
         var _loc41_:Boolean = false;
         var _loc3_:* = null;
         var _loc40_:* = null;
         var _loc14_:* = null;
         var _loc42_:Boolean = false;
         var _loc2_:* = null;
         var _loc37_:* = null;
         var _loc17_:* = null;
         var _loc43_:Boolean = false;
         var _loc6_:* = null;
         var _loc5_:int = param1.charCodeAt(1) - 1;
         var _loc21_:int = param1.charCodeAt(2) - 1;
         var _loc12_:int = param1.charCodeAt(3) - 1;
         var _loc35_:int = param1.charCodeAt(4);
         var _loc23_:int = param1.length > 4?param1.charCodeAt(5):0;
         var _loc28_:int = param1.length > 5?param1.charCodeAt(6):0;
         var _loc4_:Vector.<User> = m_townOfSalem.GetUsers();
         if(_loc12_ < 0 || _loc12_ >= _loc4_.length)
         {
            _loc12_ = 0;
         }
         switch(int(_loc35_) - 1)
         {
            case 0:
               _loc37_ = "<font color=" + TownOfSalem.DetermineColor(_loc5_) + "><b>" + _loc4_[_loc5_].GetName() + "</b></font>";
               _loc17_ = "<font color=" + TownOfSalem.DetermineColor(_loc12_) + "><b>" + m_townOfSalem.GetUsers()[_loc12_].GetName() + "</b></font>";
               _loc43_ = false;
               _loc6_ = TownOfSalem.DetermineTeammateRolesNightAbilityString(_loc21_,_loc43_,_loc23_);
               m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui(_loc6_,"%name1%",_loc37_,"%name2%",_loc17_) + "</font>");
               break;
            case 1:
               _loc29_ = "<font color=" + TownOfSalem.DetermineColor(_loc5_) + "><b>" + _loc4_[_loc5_].GetName() + "</b></font>";
               m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("XMafiaTargetingChangedMind","%name%",_loc29_) + "</font>");
               break;
            case 2:
               _loc40_ = "<font color=" + TownOfSalem.DetermineColor(_loc5_) + "><b>" + _loc4_[_loc5_].GetName() + "</b></font>";
               _loc14_ = "<font color=" + TownOfSalem.DetermineColor(_loc12_) + "><b>" + m_townOfSalem.GetUsers()[_loc12_].GetName() + "</b></font>";
               _loc42_ = true;
               _loc2_ = TownOfSalem.DetermineTeammateRolesNightAbilityString(_loc21_,_loc42_,_loc23_);
               m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui(_loc2_,"%name1%",_loc40_,"%name2%",_loc14_) + "</font>");
               break;
            case 3:
            case 4:
               _loc39_ = "<font color=" + TownOfSalem.DetermineColor(_loc5_) + "><b>" + _loc4_[_loc5_].GetName() + "</b></font>";
               _loc15_ = "<font color=" + TownOfSalem.DetermineColor(_loc12_) + "><b>" + m_townOfSalem.GetUsers()[_loc12_].GetName() + "</b></font>";
               _loc41_ = false;
               _loc3_ = TownOfSalem.DetermineTeammateRolesNightAbilityStringSecondColumn(_loc21_,_loc41_);
               m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui(_loc3_,"%name1%",_loc39_,"%name2%",_loc15_) + "</font>");
               break;
            case 5:
               _loc25_ = "<font color=" + TownOfSalem.DetermineColor(_loc5_) + "><b>" + _loc4_[_loc5_].GetName() + "</b></font>";
               _loc16_ = "<font color=" + TownOfSalem.DetermineColor(_loc12_) + "><b>" + m_townOfSalem.GetUsers()[_loc12_].GetName() + "</b></font>";
               _loc38_ = true;
               _loc19_ = TownOfSalem.DetermineTeammateRolesNightAbilityStringSecondColumn(_loc21_,_loc38_);
               m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui(_loc19_,"%name1%",_loc25_,"%name2%",_loc16_) + "</font>");
               break;
            case 6:
               _loc34_ = "<font color=" + TownOfSalem.DetermineColor(_loc5_) + "><b>" + _loc4_[_loc5_].GetName() + "</b></font>";
               _loc11_ = gui("XMafiaTargetingVisitors");
               _loc36_ = false;
               _loc18_ = TownOfSalem.DetermineTeammateRolesNightAbilityString(_loc21_,_loc36_,_loc23_);
               m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui(_loc18_,"%name1%",_loc34_,"%name2%",_loc11_) + "</font>");
               break;
            case 7:
               _loc33_ = "<font color=" + TownOfSalem.DetermineColor(_loc5_) + "><b>" + _loc4_[_loc5_].GetName() + "</b></font>";
               _loc10_ = gui("XMafiaTargetingVisitors");
               _loc9_ = true;
               _loc20_ = TownOfSalem.DetermineTeammateRolesNightAbilityString(_loc21_,_loc9_,_loc23_);
               m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui(_loc20_,"%name1%",_loc33_,"%name2%",_loc10_) + "</font>");
               break;
            case 8:
               _loc24_ = "<font color=" + TownOfSalem.DetermineColor(_loc5_) + "><b>" + _loc4_[_loc5_].GetName() + "</b></font>";
               _loc13_ = "<font color=" + TownOfSalem.DetermineColor(_loc12_) + "><b>" + m_townOfSalem.GetUsers()[_loc12_].GetName() + "</b></font>";
               _loc31_ = GetMonsterName(_loc23_);
               _loc8_ = GetActionVerb(_loc23_,_loc28_);
               m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("XNecromancerTargetingAdditional","%name1%",_loc24_,"%name2%",_loc13_,"%monstertype%",_loc31_,"%actiontype%",_loc8_) + "</font>");
               break;
            case 9:
               _loc27_ = "<font color=" + TownOfSalem.DetermineColor(_loc5_) + "><b>" + _loc4_[_loc5_].GetName() + "</b></font>";
               _loc26_ = "<font color=" + TownOfSalem.DetermineColor(_loc12_) + "><b>" + m_townOfSalem.GetUsers()[_loc12_].GetName() + "</b></font>";
               _loc22_ = GetMonsterName(_loc23_);
               _loc7_ = GetActionVerb(_loc23_,_loc28_);
               m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("XNecromancerTargetingAdditionalInstead","%name1%",_loc27_,"%name2%",_loc26_,"%monstertype%",_loc22_,"%actiontype%",_loc7_) + "</font>");
               break;
            case 10:
               _loc30_ = "<font color=" + TownOfSalem.DetermineColor(_loc5_) + "><b>" + _loc4_[_loc5_].GetName() + "</b></font>";
               m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("XNecromancerTargetingGhoul","%name%",_loc30_) + "</font>");
               break;
            case 11:
               _loc32_ = "<font color=" + TownOfSalem.DetermineColor(_loc5_) + "><b>" + _loc4_[_loc5_].GetName() + "</b></font>";
               m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("XNecromancerTargetingGhoulInstead","%name%",_loc32_) + "</font>");
         }
      }
      
      private function TellJanitorTargetsRole(param1:String) : void
      {
         var _loc2_:int = param1.charCodeAt(1) - 1;
         var _loc3_:String = Roles.GetRoleNameByID(_loc2_);
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("JanitorKnowsRoleX","%role%",_loc3_) + "</font>");
      }
      
      private function TellJanitorTargetsWill(param1:String) : void
      {
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("JanitorKnowsWill1") + "</font>");
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("JanitorKnowsWill2") + "</font>");
         var _loc3_:int = param1.charCodeAt(1) - 1;
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         _loc2_.GetDeadUsersLastWills()[_loc3_] = param1.substr(2);
      }
      
      private function SomeoneHasWon(param1:String) : void
      {
         var _loc6_:int = 0;
         var _loc4_:int = 0;
         m_townOfSalem.GetSoundManager().StopCurrentMusic();
         m_townOfSalem.GetGameStateManager().m_blackmailed = false;
         var _loc5_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         var _loc9_:String = "";
         var _loc10_:* = param1.charCodeAt(1);
         if(1 !== _loc10_)
         {
            if(2 !== _loc10_)
            {
               if(3 !== _loc10_)
               {
                  if(4 !== _loc10_)
                  {
                     if(5 !== _loc10_)
                     {
                        if(6 !== _loc10_)
                        {
                           if(7 !== _loc10_)
                           {
                              if(8 !== _loc10_)
                              {
                                 if(9 !== _loc10_)
                                 {
                                    if(10 !== _loc10_)
                                    {
                                       if(11 !== _loc10_)
                                       {
                                          if(12 !== _loc10_)
                                          {
                                             if(13 !== _loc10_)
                                             {
                                                if(14 !== _loc10_)
                                                {
                                                   if(15 !== _loc10_)
                                                   {
                                                      if(16 !== _loc10_)
                                                      {
                                                         if(17 !== _loc10_)
                                                         {
                                                            if(18 !== _loc10_)
                                                            {
                                                               if(19 !== _loc10_)
                                                               {
                                                                  if(20 === _loc10_)
                                                                  {
                                                                     _loc9_ = gui("Plaguebearer Wins");
                                                                     _loc5_.UpdateGameTimer(_loc9_,60);
                                                                     _loc5_.LoadVictoryImage(20);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  _loc9_ = gui("Lovers Win");
                                                                  _loc5_.UpdateGameTimer(_loc9_,60);
                                                                  _loc5_.LoadVictoryImage(19);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               _loc9_ = gui("Pirate Wins");
                                                               _loc5_.UpdateGameTimer(_loc9_,60);
                                                               _loc5_.LoadVictoryImage(18);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            _loc9_ = gui("Guardian Angel Wins");
                                                            _loc5_.UpdateGameTimer(_loc9_,60);
                                                            _loc5_.LoadVictoryImage(17);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc9_ = gui("Juggernaut Wins");
                                                         _loc5_.UpdateGameTimer(_loc9_,60);
                                                         _loc5_.LoadVictoryImage(16);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc9_ = gui("Pestilence Wins");
                                                      _loc5_.UpdateGameTimer(_loc9_,60);
                                                      _loc5_.LoadVictoryImage(15);
                                                   }
                                                }
                                                else
                                                {
                                                   _loc9_ = gui("The Coven Wins");
                                                   _loc5_.UpdateGameTimer(_loc9_,60);
                                                   _loc5_.LoadVictoryImage(14);
                                                }
                                             }
                                             else
                                             {
                                                _loc9_ = gui("Vampire Wins");
                                                _loc5_.UpdateGameTimer(_loc9_,60);
                                                _loc5_.LoadVictoryImage(13);
                                             }
                                          }
                                          else
                                          {
                                             _loc9_ = gui("Werewolf Wins");
                                             _loc5_.UpdateGameTimer(_loc9_,60);
                                             _loc5_.LoadVictoryImage(12);
                                          }
                                       }
                                       else
                                       {
                                          _loc9_ = gui("Draw");
                                          _loc5_.UpdateGameTimer(_loc9_,60);
                                          _loc5_.LoadVictoryImage(11);
                                       }
                                    }
                                    else
                                    {
                                       _loc9_ = gui("Jester Wins");
                                       _loc5_.UpdateGameTimer(_loc9_,60);
                                       _loc5_.LoadVictoryImage(10);
                                    }
                                 }
                                 else
                                 {
                                    _loc9_ = gui("Neutrals Win");
                                    _loc5_.UpdateGameTimer(_loc9_,60);
                                    _loc5_.LoadVictoryImage(9);
                                 }
                              }
                              else
                              {
                                 _loc9_ = gui("Survivor Wins");
                                 _loc5_.UpdateGameTimer(_loc9_,60);
                                 _loc5_.LoadVictoryImage(8);
                              }
                           }
                           else
                           {
                              _loc9_ = gui("Executioner Wins");
                              _loc5_.UpdateGameTimer(_loc9_,60);
                              _loc5_.LoadVictoryImage(7);
                           }
                        }
                        else
                        {
                           _loc9_ = gui("Amnesiac Wins");
                           _loc5_.UpdateGameTimer(_loc9_,60);
                           _loc5_.LoadVictoryImage(6);
                        }
                     }
                     else
                     {
                        _loc9_ = gui("Witch Wins");
                        _loc5_.UpdateGameTimer(_loc9_,60);
                        _loc5_.LoadVictoryImage(5);
                     }
                  }
                  else
                  {
                     _loc9_ = gui("Arsonist Wins");
                     _loc5_.UpdateGameTimer(_loc9_,60);
                     _loc5_.LoadVictoryImage(4);
                  }
               }
               else
               {
                  _loc9_ = gui("Serial Killer Wins");
                  _loc5_.UpdateGameTimer(_loc9_,60);
                  _loc5_.LoadVictoryImage(3);
               }
            }
            else
            {
               _loc9_ = gui("Mafia Wins");
               _loc5_.UpdateGameTimer(_loc9_,60);
               _loc5_.LoadVictoryImage(2);
            }
         }
         else
         {
            _loc9_ = gui("Town Wins");
            _loc5_.UpdateGameTimer(_loc9_,60);
            _loc5_.LoadVictoryImage(1);
         }
         var _loc3_:Array = [];
         _loc6_ = 2;
         while(_loc6_ < param1.length - 1)
         {
            _loc3_.push(param1.charCodeAt(_loc6_) - 1);
            _loc6_++;
         }
         var _loc7_:Boolean = false;
         var _loc8_:String = "";
         _loc4_ = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc8_ = _loc8_ + m_townOfSalem.GetUsers()[_loc3_[_loc4_]].GetName();
            if(_loc4_ + 1 < _loc3_.length)
            {
               _loc8_ = _loc8_ + ", ";
            }
            if(_loc3_[_loc4_] == m_townOfSalem.GetGameStateManager().m_ourPos)
            {
               _loc7_ = true;
               m_townOfSalem.GetSoundManager().PlaySound("sound/VictoryMusic.mp3");
            }
            _loc4_++;
         }
         var _loc2_:* = _loc3_.length == 0;
         if(!_loc7_)
         {
            m_townOfSalem.GetSoundManager().PlaySound("sound/DefeatMusic.mp3");
         }
         if(_loc7_)
         {
            TutorialManager.SendTrigger("OnGameWin");
         }
         else if(_loc2_)
         {
            TutorialManager.SendTrigger("OnGameDraw");
         }
         else
         {
            TutorialManager.SendTrigger("OnGameLose");
         }
         if(_loc2_)
         {
            _loc8_ = _loc8_ + gui("SomeoneHasWonDraw");
         }
         else if(_loc3_.length < 2)
         {
            _loc8_ = gui("XHasWonSingular","%name%",_loc8_);
         }
         else
         {
            _loc8_ = gui("XHasWonPlural","%names%",_loc8_);
         }
         _loc5_.GetChatBox().UpdateWrapText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">","","",_loc8_,"</font>");
      }
      
      private function MafiosoPromotedToGodfather(param1:String) : void
      {
         m_townOfSalem.GetGameStateManager().m_role = 21;
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         var _loc3_:int = m_townOfSalem.GetGameStateManager().m_ourPos;
         if(_loc2_.GetRoleCard().parent == m_townOfSalem)
         {
            m_townOfSalem.removeChild(_loc2_.GetRoleCard());
         }
         if(_loc2_.GetNightMenu().parent == m_townOfSalem)
         {
            m_townOfSalem.removeChild(_loc2_.GetNightMenu());
         }
         _loc2_.DetermineRole(21);
         _loc2_.CreateNightMenu();
         var _loc4_:uint = ResolutionManager.DetermineRatio(m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc2_.GetNightMenu().Initialize(_loc4_,m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc2_.GetRoleCard().Initialize(_loc4_,m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc2_.GetMafiaList().Resize(_loc4_);
         m_townOfSalem.addChild(_loc2_.GetRoleCard());
         _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("PromotedToGodfather") + "</font>");
         if(_loc2_.GetMafiaList())
         {
            _loc2_.GetMafiaList().RemoveRole(_loc3_);
            _loc2_.GetMafiaList().AddRole(m_townOfSalem.GetUsers()[_loc3_].GetName(),_loc3_,23);
         }
      }
      
      private function MafiosoPromotedToGodfatherUpdateMafia(param1:String) : void
      {
         var _loc3_:int = param1.charCodeAt(1) - 1;
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         if(_loc2_.GetMafiaList())
         {
            _loc2_.GetMafiaList().RemoveRole(_loc3_);
            _loc2_.GetMafiaList().AddRole(m_townOfSalem.GetUsers()[_loc3_].GetName(),_loc3_,21);
         }
      }
      
      private function MafiaPromotedToMafioso(param1:String) : void
      {
         m_townOfSalem.GetGameStateManager().m_role = 23;
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         var _loc3_:int = m_townOfSalem.GetGameStateManager().m_ourPos;
         if(_loc2_.GetRoleCard().parent == m_townOfSalem)
         {
            m_townOfSalem.removeChild(_loc2_.GetRoleCard());
         }
         if(_loc2_.GetNightMenu().parent == m_townOfSalem)
         {
            m_townOfSalem.removeChild(_loc2_.GetNightMenu());
         }
         _loc2_.DetermineRole(23);
         m_townOfSalem.addChild(_loc2_.GetRoleCard());
         _loc2_.CreateNightMenu();
         var _loc4_:Number = ResolutionManager.DetermineRatio(m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc2_.GetNightMenu().Initialize(_loc4_,m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc2_.GetRoleCard().Initialize(_loc4_,m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc2_.GetMafiaList().Resize(_loc4_);
         _loc2_.CreateDeathNote();
         _loc2_.PositionUIButtons();
         m_townOfSalem.addDisplayObject(_loc2_.GetDeathNoteButton());
         _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("PromotedToMafioso") + "</font>");
         if(_loc2_.GetMafiaList())
         {
            _loc2_.GetMafiaList().RemoveRole(_loc3_);
            _loc2_.GetMafiaList().AddRole(m_townOfSalem.GetUsers()[_loc3_].GetName(),_loc3_,23);
         }
      }
      
      private function TellMafiaAboutMafiosoPromotion(param1:String) : void
      {
         var _loc4_:int = param1.charCodeAt(1) - 1;
         var _loc3_:int = param1.charCodeAt(2) - 1;
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         if(_loc2_.GetMafiaList())
         {
            _loc2_.GetMafiaList().RemoveRole(_loc4_);
            _loc2_.GetMafiaList().AddRole(m_townOfSalem.GetUsers()[_loc4_].GetName(),_loc4_,23);
         }
      }
      
      private function ExecutionerConvertedToJester(param1:String) : void
      {
         m_townOfSalem.GetGameStateManager().m_role = 27;
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         if(_loc2_.GetRoleCard().parent == m_townOfSalem)
         {
            m_townOfSalem.removeChild(_loc2_.GetRoleCard());
         }
         _loc2_.DetermineRole(27);
         m_townOfSalem.addChild(_loc2_.GetRoleCard());
         _loc2_.CreateNightMenu();
         var _loc3_:Number = ResolutionManager.DetermineRatio(m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc2_.GetNightMenu().Initialize(_loc3_,m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc2_.GetRoleCard().Initialize(_loc3_,m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("ExecutionerConvertedToJester") + "</font>");
      }
      
      private function AmnesiacBecameMafiaOrWitch(param1:String) : void
      {
         var _loc4_:int = param1.charCodeAt(1) - 1;
         var _loc6_:int = param1.charCodeAt(2) - 1;
         var _loc5_:Boolean = Roles.IsMafiaRole(_loc6_);
         var _loc2_:Boolean = Roles.IsWitchRole(_loc6_);
         var _loc3_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         if(_loc5_ && _loc3_.GetMafiaList())
         {
            _loc3_.GetMafiaList().AddRole(m_townOfSalem.GetUsers()[_loc4_].GetName(),_loc4_,_loc6_);
            m_townOfSalem.GetGameStateManager().m_mafiaIDs.push(_loc4_);
            _loc3_.GetNightMenu().RemoveButton(_loc4_);
         }
         if(_loc2_ && _loc3_.GetWitchList())
         {
            _loc3_.GetWitchList().AddRole(m_townOfSalem.GetUsers()[_loc4_].GetName(),_loc4_,_loc6_);
            m_townOfSalem.GetGameStateManager().m_witchIDs.push(_loc4_);
            _loc3_.GetNightMenu().RemoveButton(_loc4_);
         }
      }
      
      private function UserDisconnected(param1:String) : void
      {
         var _loc3_:int = param1.charCodeAt(1) - 1;
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         if(_loc2_.GetDayMenu())
         {
            _loc2_.GetDayMenu().DisconnectName(_loc3_);
         }
         if(_loc2_.GetNightMenu())
         {
            _loc2_.GetNightMenu().DisconnectName(_loc3_);
         }
         if(_loc2_.GetVotingMenu())
         {
            _loc2_.GetVotingMenu().DisconnectName(_loc3_);
         }
         if(_loc3_ <= m_townOfSalem.GetUsers().length)
         {
            m_townOfSalem.GetUsers()[_loc3_].SetDisconnected(true);
         }
      }
      
      private function MafiaWasJailed(param1:String) : void
      {
         m_townOfSalem.GetGameStateManager().m_jailedMafiaTarget = param1.charCodeAt(1) - 1;
      }
      
      private function InvalidNameMessage(param1:String) : void
      {
         var _loc2_:int = param1.charCodeAt(1);
         if(_loc2_ == 1)
         {
            m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("InvalidNameMessage1") + "</font>");
         }
         else
         {
            m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\"><b>" + gui("InvalidNameMessage2") + "</b></font>");
         }
      }
      
      private function StartNightTransition(param1:String) : void
      {
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         if(_loc2_.GetVotingMenu().parent == m_townOfSalem)
         {
            m_townOfSalem.removeChild(_loc2_.GetVotingMenu());
         }
         var _loc3_:int = m_townOfSalem.GetGameStateManager().m_role;
         if(_loc3_ == 6)
         {
            if(m_townOfSalem.GetGameStateManager().IsAlive())
            {
               _loc2_.GetDayAbilityButton().visible = false;
            }
         }
         m_townOfSalem.GetSoundManager().StopCurrentMusic();
         m_townOfSalem.GetSoundManager().PlaySound("sound/Wolves.mp3");
         m_townOfSalem.GetTransitionManager().NightTransition();
         if(_loc2_.GetGameTimer().parent == m_townOfSalem)
         {
            m_townOfSalem.removeChild(_loc2_.GetGameTimer());
         }
         if(m_townOfSalem.GetGameStateManager().m_dayNumber == 1)
         {
            _loc2_.GetHeaderText().htmlText = "<font face=\"Arial\" color=\"#FFFFFF\" size=\"18\">" + gui("StartNightTransition1") + "</font>";
         }
         else
         {
            _loc2_.GetHeaderText().htmlText = "<font face=\"Arial\" color=\"#FFFFFF\" size=\"18\">" + gui("StartNightTransition2") + "</font>";
         }
         m_townOfSalem.addChildAt(_loc2_.GetHeaderText(),1);
      }
      
      private function StartDayTransition(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         _loc2_.GetChatBox().Clear();
         m_townOfSalem.GetSoundManager().StopCurrentMusic();
         m_townOfSalem.GetSoundManager().PlaySound("sound/Rooster.mp3");
         _loc2_.ClosePirateAttackMenu();
         _loc2_.ClosePirateDefenceMenu();
         _loc2_.ClosePotionMasterMenu();
         _loc2_.CloseNecroMenu();
         _loc2_.CloseJailorMenu();
         _loc2_.CloseHypnotistMenu();
         m_townOfSalem.GetGameStateManager().m_dayNumber++;
         _loc2_.GetChatLog().AddText(gui("DayNumber") + " " + m_townOfSalem.GetGameStateManager().m_dayNumber.toString(),13421772);
         _loc2_.GetHeaderText().htmlText = "<font face=\"Arial\" color=\"#FFFFFF\" size=\"18\">" + gui("DayNumber") + " <font color=\"#CCFF00\">" + m_townOfSalem.GetGameStateManager().m_dayNumber + "</font></font>";
         m_townOfSalem.addChildAt(_loc2_.GetHeaderText(),1);
         _loc2_.StartHeaderTextTimer(3000);
         var _loc4_:Vector.<int> = m_townOfSalem.GetGameStateManager().m_recentlyDeadUsers;
         _loc3_ = 1;
         while(_loc3_ < param1.length - 1)
         {
            _loc4_.push(param1.charCodeAt(_loc3_) - 1);
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < _loc4_.length)
         {
            m_townOfSalem.GetUsers()[_loc4_[_loc3_]].SetAlive(false);
            _loc3_++;
         }
         m_townOfSalem.GetTransitionManager().DayTransition();
         m_townOfSalem.GetUserInterfaceManager().ResetTrialsToday();
      }
      
      private function LynchUser(param1:String) : void
      {
         var _loc2_:int = m_townOfSalem.GetGameStateManager().m_personOnTrialID;
         var _loc4_:int = m_townOfSalem.GetCharacterManager().GetCharactersChosen()[_loc2_];
         var _loc3_:String = "<font color =" + TownOfSalem.DetermineColor(_loc2_) + "><b>" + m_townOfSalem.GetUsers()[_loc2_].GetName() + "</b></font>";
         m_townOfSalem.GetUserInterfaceManager().GetHeaderText().htmlText = "<font face=\"Arial\" color=\"#FFFFFF\" size=\"18\">" + gui("LynchUserMayGodHaveMercyX","%name%",_loc3_) + "</font>";
         if(m_townOfSalem.GetCharacterManager().HasSpecialDeathAnimation(_loc4_))
         {
            m_townOfSalem.GetCharacterManager().PlaySpecialDeathSoundById(_loc4_);
         }
         else if(m_townOfSalem.GetUsers()[_loc2_].IsMale())
         {
            var _loc5_:* = m_townOfSalem.GetCharacterManager().GetDeathAnimationsChosen()[_loc2_];
            if(0 !== _loc5_)
            {
               if(1 !== _loc5_)
               {
                  if(2 !== _loc5_)
                  {
                     if(3 !== _loc5_)
                     {
                        if(4 !== _loc5_)
                        {
                           if(5 !== _loc5_)
                           {
                              if(6 !== _loc5_)
                              {
                                 if(7 !== _loc5_)
                                 {
                                    m_townOfSalem.GetSoundManager().PlaySound("sound/HangingSoundMale.mp3");
                                 }
                                 else
                                 {
                                    m_townOfSalem.GetSoundManager().PlaySound("sound/BlastOffDeathSound.mp3");
                                 }
                              }
                              else
                              {
                                 m_townOfSalem.GetSoundManager().PlaySound("sound/PixelDeathSound.mp3");
                              }
                           }
                           else
                           {
                              m_townOfSalem.GetSoundManager().PlaySound("sound/GuillotineDeathSound.mp3");
                           }
                        }
                        else
                        {
                           m_townOfSalem.GetSoundManager().PlaySound("sound/DrowningDeathSound.mp3");
                        }
                     }
                     else
                     {
                        m_townOfSalem.GetSoundManager().PlaySound("sound/LightningDeathSound.mp3");
                     }
                  }
                  else
                  {
                     m_townOfSalem.GetSoundManager().PlaySound("sound/RockDeathSound.mp3");
                  }
               }
               else
               {
                  m_townOfSalem.GetSoundManager().PlaySound("sound/BurningSoundMale.mp3");
               }
            }
            else
            {
               m_townOfSalem.GetSoundManager().PlaySound("sound/HangingSoundMale.mp3");
            }
         }
         else
         {
            _loc5_ = m_townOfSalem.GetCharacterManager().GetDeathAnimationsChosen()[_loc2_];
            if(0 !== _loc5_)
            {
               if(1 !== _loc5_)
               {
                  if(2 !== _loc5_)
                  {
                     if(3 !== _loc5_)
                     {
                        if(4 !== _loc5_)
                        {
                           if(5 !== _loc5_)
                           {
                              if(6 !== _loc5_)
                              {
                                 if(7 !== _loc5_)
                                 {
                                    m_townOfSalem.GetSoundManager().PlaySound("sound/HangingSoundFemale.mp3");
                                 }
                                 else
                                 {
                                    m_townOfSalem.GetSoundManager().PlaySound("sound/BlastOffDeathSound.mp3");
                                 }
                              }
                              else
                              {
                                 m_townOfSalem.GetSoundManager().PlaySound("sound/PixelDeathSound.mp3");
                              }
                           }
                           else
                           {
                              m_townOfSalem.GetSoundManager().PlaySound("sound/GuillotineDeathSound.mp3");
                           }
                        }
                        else
                        {
                           m_townOfSalem.GetSoundManager().PlaySound("sound/DrowningDeathSound.mp3");
                        }
                     }
                     else
                     {
                        m_townOfSalem.GetSoundManager().PlaySound("sound/LightningDeathSound.mp3");
                     }
                  }
                  else
                  {
                     m_townOfSalem.GetSoundManager().PlaySound("sound/RockDeathSound.mp3");
                  }
               }
               else
               {
                  m_townOfSalem.GetSoundManager().PlaySound("sound/BurningSoundFemale.mp3");
               }
            }
            else
            {
               m_townOfSalem.GetSoundManager().PlaySound("sound/HangingSoundFemale.mp3");
            }
         }
         m_townOfSalem.GetUsers()[_loc2_].DoFinishLynch();
         m_townOfSalem.GetGameStateManager().m_bWasLynched = true;
      }
      
      private function DeathNote(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc4_:int = param1.charCodeAt(1) - 1;
         var _loc3_:Boolean = param1.charCodeAt(2) - 1;
         m_townOfSalem.GetGameStateManager().m_bHasDeathNote = true;
         m_townOfSalem.GetUserInterfaceManager().SetDeadUserDeathNoteText(param1.substr(3));
         m_townOfSalem.GetUserInterfaceManager().GetDeadUsersDeathNotes()[_loc4_] = param1.substr(3);
         if(_loc3_)
         {
            _loc2_ = 17000;
         }
         else
         {
            _loc2_ = 11000;
         }
         m_townOfSalem.GetUserInterfaceManager().StartDeathNoteTextTimer(_loc2_ - 2000);
         m_townOfSalem.GetUserInterfaceManager().StartDisplayDeathNoteTimer(_loc2_);
      }
      
      private function HousesChosen(param1:String) : void
      {
         m_townOfSalem.GetHouseManager().LoadHouse(param1);
      }
      
      private function FirstDayTransition(param1:String) : void
      {
         var _loc2_:TextField = m_townOfSalem.GetUserInterfaceManager().GetHeaderText();
         m_townOfSalem.GetCameraManager().Center();
         m_townOfSalem.removeChild(m_townOfSalem.GetUserInterfaceManager().GetNameSelection());
         m_townOfSalem.GetUserInterfaceManager().HideRoleResults();
         m_townOfSalem.GetSoundManager().StopCurrentMusic();
         m_townOfSalem.GetSoundManager().PlaySound("sound/Rooster.mp3");
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().Clear();
         if(_loc2_.parent)
         {
            _loc2_.parent.removeChild(_loc2_);
         }
         m_townOfSalem.GetUserInterfaceManager().RemoveGameTimer();
         GameStage.gameStage = 4;
         m_townOfSalem.GetTransitionManager().DayTransition();
         var _loc3_:int = m_townOfSalem.GetGameStateManager().m_ourPos;
         var _loc4_:Vector.<uint> = m_townOfSalem.GetCharacterManager().GetCharactersChosen();
         m_townOfSalem.GetAccountOptions().m_characterPlayedLastGame = _loc4_[_loc3_];
      }
      
      private function CharactersChosen(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         _loc3_ = 1;
         while(_loc3_ < param1.length - 1)
         {
            _loc2_ = param1.charCodeAt(_loc3_) - 1;
            _loc4_ = param1.charCodeAt(_loc3_ + 1) - 1;
            trace("CharactersChosen userCharacterPosition :: " + _loc2_ + " characterSelection " + _loc4_);
            if(m_townOfSalem.GetAccountOptions().m_bDisplayClassicSkinsOnly)
            {
               switch(int(_loc4_))
               {
                  case 0:
                  case 1:
                  case 2:
                  case 3:
                  case 4:
                  case 5:
                     break;
                  default:
                     _loc4_ = 0;
                     break;
                  case 7:
                  case 8:
                     _loc4_ = 3;
               }
            }
            m_townOfSalem.GetCharacterManager().CreateCharacter(_loc2_,_loc4_);
            _loc3_ = _loc3_ + 2;
         }
      }
      
      private function ResurrectionSetAlive(param1:String) : void
      {
         var _loc2_:int = param1.charCodeAt(1) - 1;
         m_townOfSalem.GetUsers()[_loc2_].SetAlive(true);
      }
      
      private function StartDefense(param1:String) : void
      {
         m_townOfSalem.GetSoundManager().PlaySound("sound/Judgement.mp3");
         var _loc2_:String = "<font color=" + TownOfSalem.DetermineColor(m_townOfSalem.GetGameStateManager().m_personOnTrialID) + "><b>" + m_townOfSalem.GetUsers()[m_townOfSalem.GetGameStateManager().m_personOnTrialID].GetName() + "</b></font>";
         m_townOfSalem.GetUserInterfaceManager().GetHeaderText().htmlText = "<font face=\"Arial\" color=\"#FFFFFF\" size=\"18\">" + gui("XStartDefenseP1","%name%",_loc2_) + " <font color=\"#CCFF00\">" + gui("StartDefenseP2") + "</font></font>";
         m_townOfSalem.GetUserInterfaceManager().UpdateGameTimer(gui("Defense"),20);
      }
      
      private function UserLeftDuringSelection(param1:String) : void
      {
         var _loc2_:int = param1.charCodeAt(1) - 1;
         m_townOfSalem.GetGameStateManager().m_leftDuringSelectionUsers.push(_loc2_);
      }
      
      private function VigilanteKilledTown(param1:String) : void
      {
         m_townOfSalem.GetGameStateManager().m_bVigilKilledTown = true;
      }
      
      private function NotifyUsersOfPrivateMessage(param1:String) : void
      {
         var _loc3_:int = param1.charCodeAt(1) - 1;
         var _loc2_:int = param1.charCodeAt(2) - 1;
         var _loc5_:String = "<b><font color=" + TownOfSalem.DetermineColor(_loc3_) + ">" + m_townOfSalem.GetUsers()[_loc3_].GetName() + "</font></b>";
         var _loc4_:String = "<b><font color=" + TownOfSalem.DetermineColor(_loc2_) + ">" + m_townOfSalem.GetUsers()[_loc2_].GetName() + "</font></b>";
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#ABABFF\" size=\"11\"> " + gui("XIsWhisperingToY","%name1%",_loc5_,"%name2%",_loc4_) + "</font>");
      }
      
      private function PrivateMessage(param1:String) : void
      {
         var _loc4_:* = null;
         var _loc3_:* = null;
         var _loc5_:* = null;
         var _loc2_:* = null;
         var _loc6_:int = param1.charCodeAt(2) - 1;
         if(param1.charCodeAt(1) == 1)
         {
            _loc4_ = "<b><font color=" + TownOfSalem.DetermineColor(_loc6_) + ">" + m_townOfSalem.GetUsers()[_loc6_].GetName() + "</font></b>";
            m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateWrapText("<font face=\"Arial\" color=\"#FF00FF\" size=\"11\">",gui("PrivateMessageToX","%name%",_loc4_) + " ","",param1.substr(3),"</font>");
         }
         else if(param1.charCodeAt(1) == 2)
         {
            if(!m_townOfSalem.GetUsers()[_loc6_].IsIgnored())
            {
               _loc3_ = "<b><font color=" + TownOfSalem.DetermineColor(_loc6_) + ">" + m_townOfSalem.GetUsers()[_loc6_].GetName() + "</font></b>";
               m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateWrapText("<font face=\"Arial\" color=\"#FF00FF\" size=\"11\">",gui("PrivateMessageFromX","%name%",_loc3_) + " ","",param1.substr(3),"</font>");
            }
         }
         else
         {
            _loc5_ = "<b><font color=" + TownOfSalem.DetermineColor(_loc6_) + ">" + m_townOfSalem.GetUsers()[_loc6_].GetName() + "</font></b>";
            _loc2_ = "<b><font color=" + TownOfSalem.DetermineColor(param1.charCodeAt(3) - 1) + ">" + m_townOfSalem.GetUsers()[param1.charCodeAt(3) - 1].GetName() + "</font></b>";
            m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateWrapText("<font face=\"Arial\" color=\"#FF00FF\" size=\"11\">",gui("PrivateMessageFromXToY","%name1%",_loc5_,"%name2%",_loc2_) + " ","",param1.substr(4),"</font>");
         }
         m_townOfSalem.GetSoundManager().PlaySound("sound/WhisperSound.mp3");
      }
      
      private function EarnedAchievements(param1:String) : void
      {
         var _loc6_:int = 0;
         var _loc5_:* = 0;
         var _loc4_:String = param1.substr(1);
         var _loc2_:Array = _loc4_.split(",");
         var _loc3_:AchievementManager = AchievementManager.Initialize();
         _loc6_ = 0;
         while(_loc6_ < _loc2_.length)
         {
            _loc5_ = uint(_loc2_[_loc6_]);
            m_townOfSalem.GetAchievementManager().LoadAchievement(_loc5_);
            m_townOfSalem.GetAccountOptions().m_achievementsEarned.push(_loc5_);
            _loc3_.GrantSteamAchievement(_loc5_);
            _loc6_++;
         }
      }
      
      private function SpyNightAbilityMessage(param1:String) : void
      {
         var _loc3_:int = param1.charCodeAt(1);
         var _loc2_:String = m_townOfSalem.GetUsers()[param1.charCodeAt(2) - 1].GetName();
         var _loc4_:String = gui(_loc3_ == 1?"SpyNightAbilityMessageMafia":"SpyNightAbilityMessageCoven","%name%",_loc2_);
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + _loc4_ + "</font>",5263440);
      }
      
      private function OneDayBeforeStalemate(param1:String) : void
      {
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("OneDayBeforeStalemate") + "</font>",5263440);
      }
      
      private function PetsChosen(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         if(!m_townOfSalem.GetAccountOptions().m_bDisplayPets)
         {
            return;
         }
         _loc3_ = 1;
         while(_loc3_ < param1.length - 1)
         {
            _loc2_ = param1.charCodeAt(_loc3_) - 1;
            _loc4_ = param1.charCodeAt(_loc3_ + 1) - 1;
            trace("PetsChosen userCharacterPosition :: " + _loc2_ + " characterSelection " + _loc4_);
            m_townOfSalem.GetPetManager().CreatePet(_loc2_,_loc4_);
            _loc3_ = _loc3_ + 2;
         }
      }
      
      private function FacebookShareAchievement(param1:String) : void
      {
         var _loc2_:int = param1.charCodeAt(1);
         _loc2_--;
         TownOfSalem.GetSingleton().GetUserInterfaceManager().StartShareAchievementTimer(_loc2_);
      }
      
      private function FacebookShareWin(param1:String) : void
      {
         var _loc2_:int = param1.charCodeAt(1);
         TownOfSalem.GetSingleton().GetUserInterfaceManager().StartShareWinTimer(_loc2_);
      }
      
      private function DeathAnimationsChosen(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         _loc3_ = 1;
         while(_loc3_ < param1.length - 1)
         {
            _loc2_ = param1.charCodeAt(_loc3_) - 1;
            _loc4_ = param1.charCodeAt(_loc3_ + 1) - 1;
            m_townOfSalem.GetCharacterManager().SetCharacterDeathAnimation(_loc2_,_loc4_);
            _loc3_ = _loc3_ + 2;
         }
      }
      
      private function FullMoonNight(param1:String) : void
      {
         var _loc3_:StringTableEntry = LocalizationManager.GetGameEntry("100");
         var _loc2_:StringTableEntry = LocalizationManager.GetGameEntry("104");
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + _loc3_.text + "</font>",_loc3_.color);
         if(m_townOfSalem.GetGameStateManager().m_role == 31 || m_townOfSalem.GetGameStateManager().m_role == 53)
         {
            if(!m_townOfSalem.GetGameStateManager().m_jailed && !m_townOfSalem.GetGameStateManager().m_pirateDueled && m_townOfSalem.GetGameStateManager().IsAlive())
            {
               m_townOfSalem.GetUserInterfaceManager().GetNightMenu().ShowAllButtons();
            }
            if(m_townOfSalem.GetGameStateManager().m_role == 31)
            {
               if(m_townOfSalem.GetGameStateManager().IsAlive())
               {
                  m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + _loc2_.text + "</font>",_loc2_.color);
               }
            }
         }
      }
      
      private function Identify(param1:String) : void
      {
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateWrapText("<font face=\"Arial\" color=\"#FFFF00\" size=\"11\">","","","SystemID: " + param1.substr(1),"</font>");
      }
      
      private function UpdateFriendName(param1:String) : void
      {
         SalemEventDispatcher.GetInstance().dispatchEvent(new ServerMessageEvent("SERVER_MESSAGE",param1));
      }
      
      private function ModeratorMessage(param1:String) : void
      {
         if(!m_townOfSalem)
         {
            return;
         }
         var _loc2_:Number = param1.charCodeAt(1);
         var _loc3_:String = ModMessageParser.GetMessageByID(uint(_loc2_),param1);
         if(_loc3_ == "ERROR")
         {
            return;
         }
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateWrapText("<font face=\"Arial\" color=\"#FFFF00\" size=\"11\">","","",_loc3_,"</font>");
      }
      
      private function FriendUpdate(param1:String) : void
      {
         SalemEventDispatcher.GetInstance().dispatchEvent(new ServerMessageEvent("SERVER_MESSAGE",param1));
      }
      
      private function ReferAFriendUpdate(param1:String) : void
      {
         SalemEventDispatcher.GetInstance().dispatchEvent(new ServerMessageEvent("SERVER_MESSAGE",param1));
      }
      
      private function ScrollConsumed(param1:String) : void
      {
         var _loc2_:int = param1.substr(1);
         SalemEventDispatcher.GetInstance().dispatchEvent(new ServerMessageEvent("SERVER_MESSAGE",param1));
         m_townOfSalem.GetUserInterfaceManager().ConsumeScroll(_loc2_);
      }
      
      private function PromotionPopup(param1:String) : void
      {
         SalemEventDispatcher.GetInstance().dispatchEvent(new ServerMessageEvent("SERVER_MESSAGE",param1));
      }
      
      private function EndGameInfo(param1:String) : void
      {
         SalemEventDispatcher.GetInstance().dispatchEvent(new ServerMessageEvent("SERVER_MESSAGE",param1));
      }
      
      private function EndGameChatMessage(param1:String) : void
      {
         SalemEventDispatcher.GetInstance().dispatchEvent(new ServerMessageEvent("SERVER_MESSAGE",param1));
      }
      
      private function EndGameUserUpdate(param1:String) : void
      {
         SalemEventDispatcher.GetInstance().dispatchEvent(new ServerMessageEvent("SERVER_MESSAGE",param1));
      }
      
      private function RoleLotsInfoMesssage(param1:String) : void
      {
         trace("RoleLotsInfoMesssage " + param1);
         m_townOfSalem.GetUserInterfaceManager().ShowRoleResults(param1.substr(1));
      }
      
      private function ShopPurchaseSuccess(param1:String) : void
      {
         SalemEventDispatcher.GetInstance().dispatchEvent(new ServerMessageEvent("SERVER_MESSAGE",param1));
      }
      
      private function PayPalShowApprovalPage(param1:String) : void
      {
         SalemEventDispatcher.GetInstance().dispatchEvent(new ServerMessageEvent("SERVER_MESSAGE",param1));
      }
      
      private function VampirePromotion(param1:String) : void
      {
         m_townOfSalem.GetGameStateManager().m_bVigilKilledTown = false;
         m_townOfSalem.GetGameStateManager().m_role = 30;
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         if(_loc2_.GetRoleCard().parent == m_townOfSalem)
         {
            m_townOfSalem.removeChild(_loc2_.GetRoleCard());
         }
         if(_loc2_.GetNightMenu().parent == m_townOfSalem)
         {
            m_townOfSalem.removeChild(_loc2_.GetNightMenu());
         }
         _loc2_.DetermineRole(30);
         _loc2_.CreateNightMenu();
         var _loc3_:uint = ResolutionManager.DetermineRatio(m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc2_.GetNightMenu().Initialize(_loc3_,m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc2_.GetRoleCard().Initialize(_loc3_,m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc2_.GetVampireList().Resize(_loc3_);
         m_townOfSalem.addChild(_loc2_.GetRoleCard());
      }
      
      private function OtherVampires(param1:String) : void
      {
         m_townOfSalem.GetUserInterfaceManager().CreateVampireList();
         m_townOfSalem.GetGameStateManager().m_vampireIDs = [];
         var _loc2_:int = 1;
         while(param1.charCodeAt(_loc2_) != 0 && param1.charCodeAt(_loc2_ + 1) != 0)
         {
            m_townOfSalem.GetGameStateManager().m_vampireIDs.push(param1.charCodeAt(_loc2_) - 1);
            m_townOfSalem.GetUserInterfaceManager().GetVampireList().AddRole(m_townOfSalem.GetUsers()[param1.charCodeAt(_loc2_) - 1].GetName(),param1.charCodeAt(_loc2_) - 1,param1.charCodeAt(_loc2_ + 1) - 1);
            _loc2_ = _loc2_ + 2;
         }
         trace("OtherVampires got " + m_townOfSalem.GetGameStateManager().m_vampireIDs.length + " entries.");
         if(GameStage.gameStage != 1 && m_townOfSalem.GetUserInterfaceManager().GetVampireList().parent != m_townOfSalem)
         {
            m_townOfSalem.addChild(m_townOfSalem.GetUserInterfaceManager().GetVampireList());
         }
      }
      
      private function AddVampire(param1:String) : void
      {
         var _loc3_:int = param1.charCodeAt(1) - 1;
         var _loc4_:Boolean = param1.charCodeAt(2) - 1;
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         if(_loc2_.GetVampireList())
         {
            _loc2_.GetVampireList().AddRole(m_townOfSalem.GetUsers()[_loc3_].GetName(),_loc3_,_loc4_);
            m_townOfSalem.GetGameStateManager().m_vampireIDs.push(_loc3_);
         }
         _loc2_.GetNightMenu().RemoveButton(_loc3_);
      }
      
      private function CanVampiresConvert(param1:String) : void
      {
         if(param1.charCodeAt(1) == 1)
         {
            m_townOfSalem.GetGameStateManager().m_bCanConvertTonight = false;
            if(m_townOfSalem.GetUserInterfaceManager().GetNightMenu())
            {
               m_townOfSalem.GetUserInterfaceManager().GetNightMenu().HideAllButtons();
            }
         }
         else
         {
            m_townOfSalem.GetGameStateManager().m_bCanConvertTonight = true;
            if(m_townOfSalem.GetUserInterfaceManager().GetNightMenu())
            {
               m_townOfSalem.GetUserInterfaceManager().GetNightMenu().ShowAllButtons();
            }
         }
      }
      
      private function VampireDied(param1:String) : void
      {
         var _loc4_:int = param1.charCodeAt(1) - 1;
         var _loc2_:int = 30;
         if(param1.length == 4)
         {
            _loc2_ = param1.charCodeAt(2) - 1;
         }
         var _loc3_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         if(_loc3_.GetVampireList())
         {
            _loc3_.GetVampireList().RemoveRole(_loc4_);
            if(_loc2_ != 30)
            {
               _loc3_.GetVampireList().RemoveRole(_loc2_);
               _loc3_.GetVampireList().AddRole(m_townOfSalem.GetUsers()[_loc2_].GetName(),_loc2_,true);
            }
         }
      }
      
      private function VampireHunterPromoted(param1:String) : void
      {
         m_townOfSalem.GetGameStateManager().m_role = 14;
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         if(_loc2_.GetRoleCard().parent == m_townOfSalem)
         {
            m_townOfSalem.removeChild(_loc2_.GetRoleCard());
         }
         if(_loc2_.GetNightMenu().parent == m_townOfSalem)
         {
            m_townOfSalem.removeChild(_loc2_.GetNightMenu());
         }
         _loc2_.DetermineRole(14);
         _loc2_.CreateNightMenu();
         var _loc3_:uint = ResolutionManager.DetermineRatio(m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc2_.GetNightMenu().Initialize(_loc3_,m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc2_.GetRoleCard().Initialize(_loc3_,m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         m_townOfSalem.addChild(_loc2_.GetRoleCard());
         _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("VampireHunterPromoted1") + "</font>");
         _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("VampireHunterPromoted2") + "</font>");
      }
      
      private function VampireVisitedMessage(param1:String) : void
      {
         var _loc2_:String = m_townOfSalem.GetUsers()[param1.charCodeAt(1) - 1].GetName();
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\"> " + gui("VampireVisitedMessage2","%name%",_loc2_) + "</font>",5263440);
      }
      
      private function TransporterNotification(param1:String) : void
      {
         var _loc3_:int = param1.charCodeAt(1) - 1;
         var _loc2_:int = param1.charCodeAt(2) - 1;
         var _loc5_:String = m_townOfSalem.GetUsers()[_loc3_].GetName();
         var _loc4_:String = m_townOfSalem.GetUsers()[_loc2_].GetName();
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("TransporterNotification","%name1%",_loc5_,"%name2%",_loc4_) + "</font>",5263440);
      }
      
      private function UpdateFreeCurrency(param1:String) : void
      {
         SalemEventDispatcher.GetInstance().dispatchEvent(new ServerMessageEvent("SERVER_MESSAGE",param1));
      }
      
      private function ActiveEvents(param1:String) : void
      {
         SalemEventDispatcher.GetInstance().dispatchEvent(new ServerMessageEvent("SERVER_MESSAGE",param1));
      }
      
      private function TauntResult(param1:String) : void
      {
         var _loc4_:int = param1.charCodeAt(1) - 1;
         var _loc5_:int = param1.charCodeAt(2) - 1;
         var _loc2_:int = param1.charCodeAt(3) - 1;
         var _loc3_:int = param1.charCodeAt(4) - 1;
         trace("TauntResult message");
         trace("  nPosition:: " + _loc4_);
         trace("  nTargetType:: " + _loc5_);
         trace("  nTauntId:: " + _loc2_);
         trace("  nResultCode:: " + _loc3_);
         var _loc6_:TauntManager = TownOfSalem.GetSingleton().GetUserInterfaceManager().GetSelectionManager().GetTauntManager();
         _loc6_.OnTauntResult(_loc4_,_loc5_,_loc2_,_loc3_);
      }
      
      private function TauntActivated(param1:String) : void
      {
         var _loc3_:int = param1.charCodeAt(1) - 1;
         var _loc4_:int = param1.charCodeAt(2) - 1;
         var _loc2_:int = param1.charCodeAt(3) - 1;
         trace("TauntActivated message");
         trace("  nPosition:: " + _loc3_);
         trace("  nTargetType:: " + _loc4_);
         trace("  nTauntId:: " + _loc2_);
         var _loc5_:TauntManager = TownOfSalem.GetSingleton().GetUserInterfaceManager().GetSelectionManager().GetTauntManager();
         _loc5_.TauntTarget(_loc3_,_loc4_,_loc2_);
      }
      
      private function TauntConsumed(param1:String) : void
      {
         trace("TauntConsumed from Home");
         var _loc2_:int = param1.charCodeAt(1) - 1;
         trace("  nTauntId" + _loc2_);
         m_townOfSalem.GetAccountOptions().m_consumableItemManager.ConsumeTaunt(_loc2_);
      }
      
      private function TrackerNightAbility(param1:String) : void
      {
         var _loc2_:String = m_townOfSalem.GetUsers()[param1.charCodeAt(1) - 1].GetName();
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("TrackerFeedback1","%name%",_loc2_) + "</font>",5263440);
      }
      
      private function AmbusherNightAbility(param1:String) : void
      {
         var _loc3_:int = param1.charCodeAt(1) - 1;
         var _loc2_:String = m_townOfSalem.GetUsers()[_loc3_].GetName();
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("AmbusherNotification","%name%",_loc2_) + "</font>",5263440);
      }
      
      private function GuardianAngelProtection(param1:String) : void
      {
         var _loc4_:int = param1.charCodeAt(1) - 1;
         var _loc3_:String = m_townOfSalem.GetUsers()[_loc4_].GetName();
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("GuardianAngelProtection","%name%",_loc3_) + "</font>",5263440);
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         _loc2_.GetVotingMenu().AddGuardianAngelProtection(_loc4_);
      }
      
      private function PirateDuel(param1:String) : void
      {
         m_townOfSalem.GetGameStateManager().m_pirateDueled = true;
         TownOfSalem.GetSingleton().GetUserInterfaceManager().OpenPirateDefenceMenu();
      }
      
      private function DuelTarget(param1:String) : void
      {
         trace("DuelTarget");
         trace(param1);
         TownOfSalem.GetSingleton().GetUserInterfaceManager().OpenPirateAttackMenu();
         TownOfSalem.GetSingleton().GetUserInterfaceManager().GetDayMenu().PirateDuel();
      }
      
      private function PotionMasterPotions(param1:String) : void
      {
         trace("PotionMasterPotions");
         var _loc3_:int = param1.charCodeAt(1) - 1;
         var _loc4_:int = param1.charCodeAt(2) - 1;
         var _loc2_:int = param1.charCodeAt(3) - 1;
         trace(" healDaysRemaining: " + _loc3_);
         trace(" attackDaysRemaining: " + _loc4_);
         trace(" investigateDaysRemaining: " + _loc2_);
         m_townOfSalem.GetUserInterfaceManager().GetPotionMasterMenu().UpdatePotionsAvailable(_loc3_,_loc2_,_loc4_);
      }
      
      private function HasNecronomicon(param1:String) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = null;
         var _loc2_:int = param1.charCodeAt(1);
         if(_loc2_ == 1)
         {
            m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("CovenHasNecronomicon") + "</font>",5263440);
         }
         else
         {
            _loc4_ = param1.charCodeAt(2);
            _loc3_ = _loc4_ > 1?"XNightsUntilNecronomicon":"XNightUntilNecronomicon";
            m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui(_loc3_,"%number%",_loc4_.toString()) + "</font>",5263440);
         }
      }
      
      private function OtherWitches(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         trace("OtherWitches");
         trace(param1);
         m_townOfSalem.GetUserInterfaceManager().CreateWitchList();
         m_townOfSalem.GetGameStateManager().m_witchIDs = [];
         var _loc5_:int = 1;
         while(param1.charCodeAt(_loc5_) != 0 && param1.charCodeAt(_loc5_ + 1) != 0)
         {
            _loc2_ = param1.charCodeAt(_loc5_) - 1;
            _loc3_ = m_townOfSalem.GetUsers()[_loc2_].GetName();
            _loc4_ = param1.charCodeAt(_loc5_ + 1) - 1;
            trace("  Other Witch: [" + _loc2_ + "] " + " [ " + Roles.GetRoleNameByID(_loc4_) + " ] ");
            m_townOfSalem.GetGameStateManager().m_witchIDs.push(_loc2_);
            m_townOfSalem.GetUserInterfaceManager().GetWitchList().AddRole(_loc3_,_loc2_,_loc4_);
            _loc5_ = _loc5_ + 2;
         }
         if(GameStage.gameStage != 1)
         {
            m_townOfSalem.addChild(m_townOfSalem.GetUserInterfaceManager().GetWitchList());
         }
      }
      
      private function PsychicNightAbility(param1:String) : void
      {
         var _loc7_:* = null;
         var _loc6_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:* = null;
         var _loc3_:int = param1.charCodeAt(1);
         if(_loc3_ == 1)
         {
            _loc7_ = m_townOfSalem.GetUsers()[param1.charCodeAt(2) - 1].GetName();
            _loc6_ = m_townOfSalem.GetUsers()[param1.charCodeAt(3) - 1].GetName();
            m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("PsychicFeedback2","%name1%",_loc7_,"%name2%",_loc6_) + "</font>",5263440);
         }
         else if(_loc3_ == 2)
         {
            _loc4_ = m_townOfSalem.GetUsers()[param1.charCodeAt(2) - 1].GetName();
            _loc5_ = m_townOfSalem.GetUsers()[param1.charCodeAt(3) - 1].GetName();
            _loc2_ = m_townOfSalem.GetUsers()[param1.charCodeAt(4) - 1].GetName();
            m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("PsychicFeedback1","%name1%",_loc4_,"%name2%",_loc5_,"%name3%",_loc2_) + "</font>",5263440);
         }
      }
      
      private function TrapperNightAbility(param1:String) : void
      {
         var _loc2_:String = Roles.GetRoleNameByID(param1.charCodeAt(1) - 1);
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("TrapperFeedback1","%role%",_loc2_) + "</font>",5263440);
         m_townOfSalem.GetGameStateManager().m_bIsTrapSet = false;
         m_townOfSalem.GetGameStateManager().m_bIsTrapReady = false;
      }
      
      private function TrapperTrapStatus(param1:String) : void
      {
         var _loc2_:int = param1.charCodeAt(1) - 1;
         m_townOfSalem.GetGameStateManager().m_bIsTrapReady = _loc2_ == 1;
         m_townOfSalem.GetGameStateManager().m_bIsTrapSet = _loc2_ == 2;
         if(!m_townOfSalem.GetGameStateManager().m_bIsTrapReady && !m_townOfSalem.GetGameStateManager().m_bIsTrapSet)
         {
            m_townOfSalem.GetUserInterfaceManager().GetNightMenu().HideAllButtons();
         }
         else if(m_townOfSalem.GetGameStateManager().m_bIsTrapSet)
         {
            m_townOfSalem.GetUserInterfaceManager().GetNightMenu().HideAllButtons();
            m_townOfSalem.GetUserInterfaceManager().GetNightMenu().ShowButtonByID(m_townOfSalem.GetGameStateManager().m_ourPos);
         }
         else
         {
            m_townOfSalem.GetUserInterfaceManager().GetNightMenu().ShowAllButtons();
            m_townOfSalem.GetUserInterfaceManager().GetNightMenu().HideButtonByID(m_townOfSalem.GetGameStateManager().m_ourPos);
         }
      }
      
      private function PestilenceConversion(param1:String) : void
      {
         m_townOfSalem.GetGameStateManager().m_role = 100;
         var _loc3_:int = m_townOfSalem.GetGameStateManager().m_role;
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         if(_loc2_.GetRoleCard().parent == m_townOfSalem)
         {
            m_townOfSalem.removeChild(_loc2_.GetRoleCard());
         }
         var _loc4_:Number = ResolutionManager.DetermineRatio(m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc2_.DetermineRole(_loc3_);
         _loc2_.CreateNightMenu();
         _loc2_.GetNightMenu().Initialize(_loc4_,m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc2_.GetRoleCard().Initialize(_loc4_,m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         m_townOfSalem.addChild(_loc2_.GetRoleCard());
         _loc2_.PositionUIButtons();
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("PlaguebearerFeedback1") + "</font>",5263440);
      }
      
      private function JuggernautKillCount(param1:String) : void
      {
         var _loc2_:int = param1.charCodeAt(1) - 1;
         m_townOfSalem.GetGameStateManager().m_nNumJuggernautKills = _loc2_;
         var _loc3_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         if(_loc3_.GetRoleCard().parent == m_townOfSalem)
         {
            m_townOfSalem.removeChild(_loc3_.GetRoleCard());
         }
         _loc3_.DetermineRole(53);
         var _loc4_:Number = ResolutionManager.DetermineRatio(m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc3_.GetRoleCard().Initialize(_loc4_,m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         m_townOfSalem.addChild(_loc3_.GetRoleCard());
         if(_loc2_ < 5)
         {
            _loc3_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("JuggernautFeedback" + _loc2_) + "</font>",5263440);
         }
      }
      
      private function CovenGotNecronomicon(param1:String) : void
      {
         var _loc12_:int = 0;
         var _loc8_:* = null;
         var _loc10_:Number = NaN;
         var _loc11_:int = 0;
         var _loc4_:int = 0;
         var _loc9_:* = null;
         var _loc6_:* = null;
         var _loc3_:Number = NaN;
         trace("CovenGotNecronomicon");
         var _loc2_:int = param1.charCodeAt(1);
         var _loc5_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         var _loc7_:GameStateManager = m_townOfSalem.GetGameStateManager();
         if(_loc2_ == 1)
         {
            _loc12_ = param1.charCodeAt(2) - 1;
            _loc8_ = m_townOfSalem.GetUsers()[_loc12_].GetName();
            _loc5_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("HasNecronomicon","%name%",_loc8_) + "</font>",5263440);
            if(_loc12_ == _loc7_.m_ourPos)
            {
               _loc7_.m_bHasNecronomicon = true;
               if(_loc7_.m_role == 61)
               {
                  _loc5_.CreateNightMenu();
                  _loc10_ = ResolutionManager.DetermineRatio(m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
                  _loc5_.GetNightMenu().Initialize(_loc10_,m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
                  _loc5_.GetNightMenu().Resize(_loc10_,m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
                  m_townOfSalem.addChild(_loc5_.GetNightMenu());
               }
               if(_loc7_.m_role == 56 || _loc7_.m_role == 59)
               {
                  _loc5_.CreateDeathNote();
               }
               if(_loc7_.m_role == 59)
               {
                  _loc5_.GetNightMenu().SetNecromancerLeftButtons();
               }
               if(m_townOfSalem.GetGameStateManager().m_rivalPos != -1)
               {
                  _loc5_.GetNightMenu().RemoveButton(m_townOfSalem.GetGameStateManager().m_rivalPos);
               }
            }
         }
         else if(_loc2_ == 2)
         {
            _loc11_ = param1.charCodeAt(2) - 1;
            _loc4_ = param1.charCodeAt(3) - 1;
            _loc9_ = m_townOfSalem.GetUsers()[_loc11_].GetName();
            _loc6_ = m_townOfSalem.GetUsers()[_loc4_].GetName();
            _loc5_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("HasNecronomicon2","%name%",_loc9_) + "</font>",5263440);
            _loc5_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + gui("HasNecronomicon3","%name%",_loc6_) + "</font>",5263440);
            if(_loc4_ == _loc7_.m_ourPos)
            {
               _loc7_.m_bHasNecronomicon = true;
               if(_loc7_.m_role == 61)
               {
                  _loc5_.CreateNightMenu();
                  _loc3_ = ResolutionManager.DetermineRatio(m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
                  _loc5_.GetNightMenu().Initialize(_loc3_,m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
                  _loc5_.GetNightMenu().Resize(_loc10_,m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
                  m_townOfSalem.addChild(_loc5_.GetNightMenu());
               }
               if(_loc7_.m_role == 56 || _loc7_.m_role == 59)
               {
                  _loc5_.CreateDeathNote();
               }
               if(_loc7_.m_role == 59)
               {
                  _loc5_.GetNightMenu().SetNecromancerLeftButtons();
               }
               if(m_townOfSalem.GetGameStateManager().m_rivalPos != -1)
               {
                  _loc5_.GetNightMenu().RemoveButton(m_townOfSalem.GetGameStateManager().m_rivalPos);
               }
            }
         }
      }
      
      private function GuardianAngelPromoted(param1:String) : void
      {
         m_townOfSalem.GetGameStateManager().m_role = 29;
         var _loc2_:UserInterfaceManager = m_townOfSalem.GetUserInterfaceManager();
         if(_loc2_.GetRoleCard().parent == m_townOfSalem)
         {
            m_townOfSalem.removeChild(_loc2_.GetRoleCard());
         }
         _loc2_.DetermineRole(29);
         m_townOfSalem.addChild(_loc2_.GetRoleCard());
         _loc2_.CreateNightMenu();
         var _loc3_:Number = ResolutionManager.DetermineRatio(m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc2_.GetNightMenu().Initialize(_loc3_,m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc2_.GetRoleCard().Initialize(_loc3_,m_townOfSalem.stage.stageWidth,m_townOfSalem.stage.stageHeight);
         _loc2_.GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("GuardianAngelConvertedToSurvivor") + "</font>");
      }
      
      private function VIPTarget(param1:String) : void
      {
         var _loc3_:int = param1.charCodeAt(1) - 1;
         var _loc2_:String = m_townOfSalem.GetUsers()[_loc3_].GetName();
         if(_loc3_ == m_townOfSalem.GetGameStateManager().m_ourPos)
         {
            m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("WeAreVIP") + "</font>");
         }
         else
         {
            m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("VIPTarget","%name%",_loc2_) + "</font>");
         }
         m_townOfSalem.GetGameStateManager().m_vipPos = _loc3_;
         m_townOfSalem.GetUserInterfaceManager().CreateSpecialModeList(1);
      }
      
      private function PirateDuelOutcome(param1:String) : void
      {
         trace("TOS ServerMessageManager - PirateDuelOutcome: " + param1 + " | Message Length: " + param1.length);
         var _loc6_:int = param1.charCodeAt(1);
         var _loc2_:int = param1.charCodeAt(2);
         trace("Attack Code: " + _loc6_.toString() + " | Defense Code: " + _loc2_.toString());
         var _loc4_:int = m_townOfSalem.GetGameStateManager().m_role;
         var _loc5_:String = _loc4_ == 55?"A":"D";
         var _loc7_:String = "PirateDuelResults" + _loc5_ + _loc6_.toString() + _loc2_.toString();
         var _loc3_:String = gui(_loc7_);
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#00FF00\" size=\"11\">" + _loc3_ + "</font>");
      }
      
      private function AccountFlags(param1:String) : void
      {
         SalemEventDispatcher.GetInstance().dispatchEvent(new ServerMessageEvent("SERVER_MESSAGE",param1));
      }
      
      private function ZombieRotted(param1:String) : void
      {
         var _loc2_:int = 0;
         if(m_townOfSalem.GetGameStateManager().m_role == 59)
         {
            _loc2_ = param1.charCodeAt(1) - 1;
            if(m_townOfSalem.GetGameStateManager().m_rottedZombies.indexOf(_loc2_) == -1)
            {
               m_townOfSalem.GetGameStateManager().m_rottedZombies.push(_loc2_);
            }
            m_townOfSalem.GetUserInterfaceManager().GetNightMenu().HideButtonByID(_loc2_);
         }
      }
      
      private function LoverTarget(param1:String) : void
      {
         var _loc3_:int = param1.charCodeAt(1) - 1;
         var _loc2_:String = m_townOfSalem.GetUsers()[_loc3_].GetName();
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("LoverTarget","%name%",_loc2_) + "</font>");
         m_townOfSalem.GetGameStateManager().m_loverPos = _loc3_;
         m_townOfSalem.GetUserInterfaceManager().CreateSpecialModeList(2);
      }
      
      private function PlagueSpread(param1:String) : void
      {
         var _loc4_:int = param1.charCodeAt(1) - 1;
         var _loc3_:String = m_townOfSalem.GetUsers()[_loc4_].GetName();
         var _loc2_:Vector.<int> = m_townOfSalem.GetGameStateManager().m_plaguedTargetIDs;
         if(_loc2_.indexOf(_loc4_) < 0)
         {
            _loc2_.push(_loc4_);
         }
         m_townOfSalem.GetUserInterfaceManager().GetNightMenu().RemoveButton(_loc4_);
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("PlaguedTarget","%name%",_loc3_) + "</font>");
      }
      
      private function RivalTarget(param1:String) : void
      {
         var _loc3_:int = param1.charCodeAt(1) - 1;
         var _loc2_:String = m_townOfSalem.GetUsers()[_loc3_].GetName();
         m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#FFFFFF\" size=\"11\">" + gui("RivalTarget","%name%",_loc2_) + "</font>");
         m_townOfSalem.GetGameStateManager().m_rivalPos = _loc3_;
         m_townOfSalem.GetUserInterfaceManager().GetNightMenu().RemoveButton(_loc3_);
         if(m_townOfSalem.GetUserInterfaceManager().GetDayMenu() != null)
         {
            m_townOfSalem.GetUserInterfaceManager().GetDayMenu().RemoveButton(_loc3_);
         }
         m_townOfSalem.GetUserInterfaceManager().CreateSpecialModeList(3);
      }
      
      private function UserStatistics(param1:String) : void
      {
         SalemEventDispatcher.GetInstance().dispatchEvent(new ServerMessageEvent("SERVER_MESSAGE",param1));
      }
      
      private function PlayerStatistics(param1:String) : void
      {
         SalemEventDispatcher.GetInstance().dispatchEvent(new ServerMessageEvent("SERVER_MESSAGE",param1));
      }
      
      private function RankedInfo(param1:String) : void
      {
         SalemEventDispatcher.GetInstance().dispatchEvent(new ServerMessageEvent("SERVER_MESSAGE",param1));
      }
      
      private function JailorDeathNote(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc5_:int = param1.charCodeAt(1) - 1;
         var _loc4_:Boolean = param1.charCodeAt(2) - 1;
         var _loc2_:int = param1.charCodeAt(3) - 1;
         m_townOfSalem.GetGameStateManager().m_bHasDeathNote = true;
         m_townOfSalem.GetUserInterfaceManager().SetDeadUserDeathNoteText("%JailorChoice:%" + _loc2_);
         m_townOfSalem.GetUserInterfaceManager().GetDeadUsersDeathNotes()[_loc5_] = "%JailorChoice:%" + _loc2_;
         if(_loc4_)
         {
            _loc3_ = 17000;
         }
         else
         {
            _loc3_ = 11000;
         }
         m_townOfSalem.GetUserInterfaceManager().StartDeathNoteTextTimer(_loc3_ - 2000);
         m_townOfSalem.GetUserInterfaceManager().StartDisplayDeathNoteTimer(_loc3_);
      }
      
      private function SpyNightInfo(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         trace("SpyNightInfo Message: " + param1);
         _loc3_ = 1;
         while(_loc3_ < param1.length && param1.charCodeAt(_loc3_) != 0)
         {
            _loc2_ = param1.charCodeAt(_loc3_) - 1;
            trace(" > Msg ID: " + _loc2_);
            m_townOfSalem.GetUserInterfaceManager().GetChatBox().UpdateText("<font face=\"Arial\" color=\"#DD1111\" size=\"11\">" + LocalizationManager.GetGameEntry(_loc2_.toString(),1).text + "</font>");
            _loc3_++;
         }
      }
      
      private function DefaultFunction(param1:String) : void
      {
      }
   }
}
