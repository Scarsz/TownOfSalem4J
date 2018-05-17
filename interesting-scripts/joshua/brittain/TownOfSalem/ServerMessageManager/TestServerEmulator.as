package joshua.brittain.TownOfSalem.ServerMessageManager
{
   import joshua.brittain.TownOfSalem.JailorMenu.JailorMenu;
   import joshua.brittain.TownOfSalem.Taunts.TauntManager;
   import salem.fonts.FontManager;
   import salem.sharedinfo.Roles;
   import salem.utils.tweening.Tweener;
   
   public class TestServerEmulator
   {
       
      
      private var PLAYER_ROLE:int = 100;
      
      private var m_roleList:Vector.<int>;
      
      private var m_nameList:Vector.<String>;
      
      private var m_serverMessageManager:ServerMessageManager;
      
      private const kNumPlayers:int = 15;
      
      private const kPlayerPosition:int = 0;
      
      private const kRoleWheelTime:Number = 2;
      
      private const kFirstDayTransitionTime:Number = 3;
      
      private const kNightTransitionTime:Number = 5;
      
      private var m_nightNumber:int = 0;
      
      private var m_dayNumber:int = 0;
      
      private var jKills:int = 1;
      
      public function TestServerEmulator(param1:ServerMessageManager)
      {
         a_serverMessageManager = param1;
         m_roleList = new Vector.<int>();
         m_nameList = new Vector.<String>();
         super();
         m_serverMessageManager = a_serverMessageManager;
         InitTownieInfo();
         Tweener.delayedCall(this,1,StartTest);
         Tweener.delayedCall(this,10,function():void
         {
         });
         if(!FontManager.IsLoaded())
         {
            FontManager.Initialize();
         }
      }
      
      private function InitTownieInfo() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Array = [null,"Yaxamie","Norin","Nicolae","WhatIsItGoodFor","Reprisal","Damaron","Notin","Demolira","Gar","Achilles","PyroMonkeyGG","Shapesifter13","Warbeast","Arcane","Cowboys","Jude"];
         var _loc2_:Array = [null,9,46,49,4,48,56,57,26,2,61,47,52,66,55,63];
         _loc3_ = 1;
         while(_loc3_ <= 15)
         {
            m_roleList.push(_loc2_[_loc3_]);
            m_nameList.push(_loc1_[_loc3_]);
            _loc3_++;
         }
      }
      
      private function StartTest() : void
      {
         PickNames();
         OtherPlayersEnterNames();
         DeathAnimationsChosen();
         HousesChosen();
         CharactersChosen();
         PetsChosen();
         Tweener.delayedCall(this,2,DoRoleWheel);
      }
      
      private function OtherPlayersEnterNames() : void
      {
         var _loc1_:int = 0;
         _loc1_ = 1;
         while(_loc1_ < m_nameList.length)
         {
            Tweener.delayedCall(this,0.1 * _loc1_,UserChosenName,[_loc1_,m_nameList[_loc1_] + " "]);
            _loc1_++;
         }
      }
      
      private function DoRoleWheel() : void
      {
         RoleLotsInfoMessage();
         NamesAndPositionsOfUsers();
         RoleAndPosition();
         OtherMafia();
         OtherCoven();
         TellRoleList();
         Tweener.delayedCall(this,2,DoFirstDayTransition);
      }
      
      private function DoFirstDayTransition() : void
      {
         m_dayNumber = 1;
         send(fromInt(151));
         Tweener.delayedCall(this,3,DoStartFirstDay);
      }
      
      private function DoStartFirstDay() : void
      {
         send(fromInt(114));
         send(fromInt(161) + "337");
         send(fromInt(161) + "336");
         send(fromInt(161) + "335");
         send(fromInt(103) + fromInt(1) + fromInt(2));
         send(fromInt(159) + fromInt(1) + fromInt(2) + "Blah blah blah.");
         send(fromInt(160) + fromInt(1) + fromInt(3) + "Blah blah blah.");
         send(fromInt(160) + fromInt(2) + fromInt(3) + "Blah blah blah.");
         send(fromInt(160) + fromInt(3) + fromInt(3) + fromInt(4) + "Blah blah blah.");
         Tweener.delayedCall(this,5,DoFirstNight);
      }
      
      private function SendJuggernautKillCount() : void
      {
         jKills = jKills + 1;
         send(fromInt(212) + fromInt(jKills + 1));
         Tweener.delayedCall(this,5,SendJuggernautKillCount);
      }
      
      private function SomeoneWon() : void
      {
         send(fromInt(135) + fromInt(17) + fromInt(2) + fromInt(0));
      }
      
      private function TestAchievements() : void
      {
         var delay:int = 0;
         delay = delay + 1;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(161) + "108");
         });
         delay = delay + 1;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(161) + "139");
         });
      }
      
      private function TestWin(param1:int) : void
      {
         winner = param1;
         var delay:int = 0;
         delay = delay + 2;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(135) + fromInt(winner));
         });
      }
      
      private function ForceOpenPirateMenu() : void
      {
         var delay:int = 0;
         delay = delay + 1;
         Tweener.delayedCall(this,delay,function():void
         {
            TownOfSalem.GetSingleton().GetUserInterfaceManager().OpenPirateAttackMenu();
         });
      }
      
      private function ForceOpenShareWinPopup() : void
      {
         var delay:int = 0;
         delay = delay + 1;
         Tweener.delayedCall(this,delay,function():void
         {
            TownOfSalem.GetSingleton().GetUserInterfaceManager().TestShareWinPopup();
         });
      }
      
      private function ForceOpenShareAchievementPopup() : void
      {
         var delay:int = 0;
         delay = delay + 1;
         Tweener.delayedCall(this,delay,function():void
         {
            TownOfSalem.GetSingleton().GetUserInterfaceManager().TestShareAchievementPopup();
         });
      }
      
      private function ForceOpenHypnotistMenu() : void
      {
         TownOfSalem.GetSingleton().GetUserInterfaceManager().OpenHypnotistMenu(1);
      }
      
      private function ForceOpenJailorMenu() : void
      {
         TownOfSalem.GetSingleton().GetUserInterfaceManager().OpenJailorMenu();
      }
      
      private function ForceOpenJailorMenuAsDeathNote() : void
      {
         JailorMenu.OpenAsDeathNote(2);
      }
      
      private function OpenNecroMenu() : void
      {
         TownOfSalem.GetSingleton().GetGameStateManager().m_persistentDeadUserIDs.push(0);
         TownOfSalem.GetSingleton().GetGameStateManager().m_persistentDeadUserRoles.push(14);
         TownOfSalem.GetSingleton().GetUserInterfaceManager().OpenNecroMenu(0,function(param1:int):void
         {
         });
      }
      
      private function DoWhoDied() : void
      {
         var delay:int = 0;
         delay = delay + 5;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(95) + fromInt(m_roleList.indexOf(4) + 1) + fromInt(4 + 1) + fromInt(1) + fromInt(23) + fromInt(23) + fromInt(0));
         });
         delay = delay + 5;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(130) + fromInt(m_roleList.indexOf(4) + 1) + fromInt(1) + fromInt(0));
         });
      }
      
      private function DoTrial() : void
      {
         var delay:Number = 2;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(96));
         });
         delay = delay + 5;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(97) + fromInt(30));
         });
         delay = delay + 4;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(98) + fromInt(1));
         });
         delay = delay + 8;
         var foundGuilty:Boolean = true;
         if(foundGuilty)
         {
            Tweener.delayedCall(this,delay,function():void
            {
               TownOfSalem.GetSingleton().GetUserInterfaceManager().DetermineRole(21);
               send(fromInt(100) + fromInt(5) + fromInt(1));
            });
            delay = delay + 8;
            Tweener.delayedCall(this,delay,function():void
            {
               send(fromInt(147));
            });
            delay = delay + 16;
         }
         else
         {
            Tweener.delayedCall(this,delay,function():void
            {
               TownOfSalem.GetSingleton().GetUserInterfaceManager().DetermineRole(21);
               send(fromInt(101) + fromInt(1) + fromInt(6));
            });
            delay = delay + 16;
         }
         Tweener.delayedCall(this,delay,function():void
         {
            DoFirstNight();
         });
         delay = delay + 12;
         Tweener.delayedCall(this,delay,function():void
         {
            var _loc2_:int = 0;
            var _loc1_:TauntManager = TownOfSalem.GetSingleton().GetUserInterfaceManager().GetSelectionManager().GetTauntManager();
            _loc2_ = 0;
            while(_loc2_ < 15)
            {
               _loc1_.TauntTarget(_loc2_,1,3);
               _loc2_++;
            }
         });
      }
      
      private function DoFirstNight() : void
      {
         m_nightNumber = 1;
         send(fromInt(145));
         Tweener.delayedCall(this,5,function():void
         {
            send(fromInt(93));
         });
      }
      
      private function GiveNecronomicon() : void
      {
         send(fromInt(213) + fromInt(2) + fromInt(0 + 2) + fromInt(0 + 1));
      }
      
      private function TellRoleList() : void
      {
         var _loc3_:int = 0;
         var _loc2_:Vector.<int> = m_roleList.concat();
         _loc2_.sort(2);
         var _loc1_:String = fromInt(108);
         _loc3_ = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc1_ = _loc1_ + fromInt(_loc2_[_loc3_] + 1);
            _loc3_++;
         }
         _loc1_ = _loc1_ + fromInt(0);
         send(_loc1_);
      }
      
      private function OtherMafia() : void
      {
         var _loc1_:* = null;
         if(Roles.IsMafiaRole(TownOfSalem.GetSingleton().GetGameStateManager().m_role))
         {
            _loc1_ = fromInt(110) + fromInt(9) + fromInt(15 + 1) + fromInt(0);
            send(_loc1_);
         }
      }
      
      private function OtherCoven() : void
      {
         var _loc1_:* = null;
         if(Roles.IsWitchRole(TownOfSalem.GetSingleton().GetGameStateManager().m_role))
         {
            _loc1_ = fromInt(207) + fromInt(0);
            send(_loc1_);
         }
      }
      
      private function RoleAndPosition() : void
      {
         var _loc1_:String = fromInt(92) + fromInt(PLAYER_ROLE + 1) + fromInt(0 + 1);
         send(_loc1_);
      }
      
      private function NamesAndPositionsOfUsers() : void
      {
         var _loc3_:int = 0;
         var _loc1_:* = null;
         var _loc2_:int = m_nameList.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = fromInt(91);
            _loc1_ = _loc1_ + fromInt(_loc3_ + 1);
            _loc1_ = _loc1_ + m_nameList[_loc3_];
            send(_loc1_);
            _loc3_++;
         }
      }
      
      private function RoleLotsInfoMessage() : void
      {
         var _loc3_:int = 0;
         var _loc1_:String = fromInt(175);
         var _loc2_:int = m_roleList.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            if(_loc3_ > 0)
            {
               _loc1_ = _loc1_ + "*";
            }
            _loc1_ = _loc1_ + (m_roleList[_loc3_] + "," + _loc2_ * 10 + "," + 10);
            _loc3_++;
         }
         send(_loc1_);
      }
      
      private function UserChosenName(param1:int, param2:String) : void
      {
         trace("UserChosenName a_pos " + param1 + " :: " + param2);
         send(fromInt(109) + fromInt(82) + fromInt(param1 + 1) + param2);
      }
      
      private function PickNames() : void
      {
         send(fromInt(90) + fromInt(15 + 1));
         send(fromInt(5) + fromInt(1) + fromInt(1));
      }
      
      private function DeathAnimationsChosen() : void
      {
         var _loc2_:int = 0;
         var _loc1_:String = fromInt(168);
         _loc2_ = 0;
         while(_loc2_ < 15)
         {
            _loc1_ = _loc1_ + fromInt(_loc2_ + 1);
            _loc1_ = _loc1_ + fromInt(8);
            _loc2_++;
         }
         send(_loc1_);
      }
      
      private function HousesChosen() : void
      {
         var _loc2_:int = 0;
         var _loc1_:String = fromInt(150);
         _loc2_ = 0;
         while(_loc2_ < 15)
         {
            _loc1_ = _loc1_ + fromInt(_loc2_ + 1);
            _loc1_ = _loc1_ + fromInt(40);
            _loc2_++;
         }
         send(_loc1_);
      }
      
      private function CharactersChosen() : void
      {
         var _loc2_:int = 0;
         var _loc1_:String = fromInt(153);
         _loc2_ = 0;
         while(_loc2_ < 15)
         {
            if(_loc2_ >= 0)
            {
               _loc1_ = _loc1_ + fromInt(_loc2_ + 1);
               _loc1_ = _loc1_ + fromInt(67);
            }
            else
            {
               _loc1_ = _loc1_ + fromInt(_loc2_ + 1);
               _loc1_ = _loc1_ + fromInt(_loc2_ + 1);
            }
            _loc2_++;
         }
         send(_loc1_);
      }
      
      private function PetsChosen() : void
      {
         var _loc2_:int = 0;
         var _loc1_:String = fromInt(165);
         _loc2_ = 0;
         while(_loc2_ < 15 - 2)
         {
            _loc1_ = _loc1_ + fromInt(_loc2_ + 1);
            _loc1_ = _loc1_ + fromInt(_loc2_ + 1);
            _loc2_++;
         }
         send(_loc1_);
      }
      
      private function fromInt(param1:int) : String
      {
         return String.fromCharCode(param1);
      }
      
      private function send(param1:String) : void
      {
         m_serverMessageManager.HandleServerMessage(param1);
      }
   }
}
