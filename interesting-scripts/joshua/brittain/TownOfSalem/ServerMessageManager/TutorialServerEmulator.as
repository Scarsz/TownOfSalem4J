package joshua.brittain.TownOfSalem.ServerMessageManager
{
   import flash.events.Event;
   import salem.sharedinfo.SharedInfo;
   import salem.utils.tweening.Tweener;
   import salem.utils.xml.XMLAssetCollection;
   
   public class TutorialServerEmulator
   {
       
      
      private var m_roleList:Vector.<int>;
      
      private var m_nameList:Vector.<String>;
      
      private var m_serverMessageManage:ServerMessageManager;
      
      private const kNumPlayers:int = 9;
      
      private const kPlayerPosition:int = 0;
      
      private const kRoleWheelTime:Number = 25;
      
      private const kFirstDayTransitionTime:Number = 6;
      
      private const kNightTransitionTime:Number = 6;
      
      private var m_nightNumber:int = 0;
      
      private var m_dayNumber:int = 0;
      
      private var m_deathNote:String = "";
      
      private var m_canVote:Boolean = false;
      
      private var m_canLieToJailor:Boolean = false;
      
      private var m_canDeathNote:Boolean = false;
      
      private var m_canLieToSheriff:Boolean = false;
      
      private var m_canLynchMafioso:Boolean = false;
      
      private var m_outgoingMessages:Object;
      
      public function TutorialServerEmulator(param1:ServerMessageManager, param2:Boolean)
      {
         m_roleList = new Vector.<int>();
         m_nameList = new Vector.<String>();
         m_outgoingMessages = {};
         super();
         m_serverMessageManage = param1;
         InitMessagesMap();
         InitTownieInfo();
         if(param2)
         {
            Tweener.delayedCall(this,1,StartTutorial);
         }
         else
         {
            StartTutorial();
         }
      }
      
      public function EmulateServerMessage(param1:*) : void
      {
         var _loc2_:int = param1.charCodeAt(0);
         if(m_outgoingMessages.hasOwnProperty(_loc2_))
         {
            trace("-----------------------------------");
            m_outgoingMessages[_loc2_](param1.substr(1));
         }
         else
         {
            trace("EmulateServerMessage Unhandled: | " + param1.charCodeAt(0) + " | " + param1);
         }
      }
      
      private function InitTownieInfo() : void
      {
         m_roleList.push(28,7,6,4,9,1,0,21,23);
         m_nameList.push("","Player Two","Player Three","Player Four","Player Five","Player Six","Player Seven","Player Eight","Player Nine");
      }
      
      private function InitMessagesMap() : void
      {
         m_outgoingMessages[21] = EnterName_Outgoing;
         m_outgoingMessages[11] = RequestNightTarget_Outgoing;
         m_outgoingMessages[18] = DeathNote_Outgoing;
         m_outgoingMessages[10] = Vote_Outgoing;
         m_outgoingMessages[3] = Chat_Outgoing;
         m_outgoingMessages[14] = VoteGuiltly_Outgoing;
         m_outgoingMessages[39] = SendReturnHome_Outgoing;
      }
      
      private function CloseLastWillAndDeathNote() : void
      {
         TownOfSalem.GetSingleton().GetUserInterfaceManager().GetLastWillButton().CloseLastWill();
         TownOfSalem.GetSingleton().GetUserInterfaceManager().GetDeathNoteButton().CloseDeathNote();
         TownOfSalem.GetSingleton().GetUserInterfaceManager().GetChatLogButton().CloseChatLog();
      }
      
      private function AdvanceTutorial() : void
      {
      }
      
      private function HideTutorial() : void
      {
      }
      
      private function StartTutorial() : void
      {
         trace("Tutorial running on swf version " + SharedInfo.m_gameVersion);
         var onComplete:Function = function(param1:Event = null):void
         {
            param1.target.removeEventListener(XMLAssetCollection.LOADED,onComplete);
            PickNames();
            OtherPlayersEnterNames();
            DeathAnimationsChosen();
            HousesChosen();
            CharactersChosen();
            PetsChosen();
         };
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
         TellRoleList();
         HideTutorial();
         Tweener.delayedCall(this,25,DoFirstDayTransition);
      }
      
      private function DoFirstDayTransition() : void
      {
         m_dayNumber = 1;
         send(fromInt(151));
         HideTutorial();
         Tweener.delayedCall(this,6,DoStartFirstDay);
      }
      
      private function DoStartFirstDay() : void
      {
         send(fromInt(114));
         m_canDeathNote = true;
         AdvanceTutorial();
      }
      
      private function DoFirstNight() : void
      {
         m_nightNumber = 1;
         send(fromInt(145));
         Tweener.delayedCall(this,6,function():void
         {
            send(fromInt(93));
            AdvanceTutorial();
         });
      }
      
      private function DoSecondDay() : void
      {
         HideTutorial();
         m_dayNumber = 2;
         send(fromInt(94));
         var delay:Number = 2;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(146) + fromInt(m_roleList.indexOf(7) + 1) + fromInt(m_roleList.indexOf(6) + 1) + fromInt(0));
         });
         delay = delay + 5;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(95) + fromInt(m_roleList.indexOf(7) + 1) + fromInt(7 + 1) + fromInt(1) + fromInt(5) + fromInt(0));
         });
         delay = delay + 5;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(148) + fromInt(m_roleList.indexOf(7) + 1) + fromInt(2) + m_deathNote);
            send(fromInt(130) + fromInt(m_roleList.indexOf(7) + 1) + fromInt(2) + "I was the medium, able to communicate with the dead.");
         });
         delay = delay + 25;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(95) + fromInt(m_roleList.indexOf(6) + 1) + fromInt(6 + 1) + fromInt(1) + fromInt(3) + fromInt(0));
         });
         delay = delay + 5;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(130) + fromInt(m_roleList.indexOf(6) + 1) + fromInt(2) + "I was the mayor, able to reveal myself and wield unsurpassed voting power.");
         });
         delay = delay + 20;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(96));
            Tweener.delayedCall(this,1,function():void
            {
               send(fromInt(6) + fromInt(m_roleList.indexOf(9) + 1) + "I am the Sheriff.  I found our Mafioso last night.  It\'s " + m_nameList[m_roleList.indexOf(23)] + "!!");
            });
            Tweener.delayedCall(this,2,function():void
            {
               send(fromInt(6) + fromInt(m_roleList.indexOf(1) + 1) + "I trust you, let\'s lynch " + m_nameList[m_roleList.indexOf(23)] + ".");
            });
            Tweener.delayedCall(this,3,function():void
            {
               m_canLynchMafioso = true;
               CloseLastWillAndDeathNote();
               AdvanceTutorial();
            });
         });
      }
      
      private function DoSecondNight() : void
      {
         m_nightNumber = 2;
         send(fromInt(145));
         send(fromInt(115));
         var delay:Number = 6;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(93));
            AdvanceTutorial();
         });
         delay = delay + 1;
         Tweener.delayedCall(this,delay,function():void
         {
            CloseLastWillAndDeathNote();
            m_canLieToJailor = true;
            send(fromInt(6) + fromInt(30) + "Hi, I\'ve captured you.  What is your Role?");
         });
      }
      
      private function DoThirdDay() : void
      {
         m_dayNumber = 3;
         send(fromInt(94));
         var delay:Number = 2;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(146) + fromInt(m_roleList.indexOf(4) + 1) + fromInt(m_roleList.indexOf(21) + 1) + fromInt(m_roleList.indexOf(0) + 1) + fromInt(0));
         });
         delay = delay + 5;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(95) + fromInt(m_roleList.indexOf(4) + 1) + fromInt(4 + 1) + fromInt(1) + fromInt(5) + fromInt(0));
         });
         delay = delay + 5;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(148) + fromInt(m_roleList.indexOf(4) + 1) + fromInt(2) + m_deathNote);
            send(fromInt(130) + fromInt(m_roleList.indexOf(4) + 1) + fromInt(2) + "The person I jailed claims he\'s the Doctor.  I believe him.");
         });
         delay = delay + 25;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(95) + fromInt(m_roleList.indexOf(21) + 1) + fromInt(21 + 1) + fromInt(1) + fromInt(9) + fromInt(0));
         });
         delay = delay + 5;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(130) + fromInt(m_roleList.indexOf(21) + 1) + fromInt(2) + "I am the GodFather, the grand leader of the Mafia.");
         });
         delay = delay + 20;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(95) + fromInt(m_roleList.indexOf(0) + 1) + fromInt(0 + 1) + fromInt(1) + fromInt(3) + fromInt(0));
         });
         delay = delay + 5;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(148) + fromInt(m_roleList.indexOf(0) + 1) + fromInt(2) + "I am coming for you, player six.");
            send(fromInt(130) + fromInt(m_roleList.indexOf(0) + 1) + fromInt(2) + "I am the bodyguard, protector of the town.");
         });
         delay = delay + 25;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(96));
            Tweener.delayedCall(this,1,function():void
            {
               send(fromInt(6) + fromInt(m_roleList.indexOf(9) + 1) + "Hrm....  Need to find the SK....");
            });
            Tweener.delayedCall(this,2,function():void
            {
               send(fromInt(6) + fromInt(m_roleList.indexOf(1) + 1) + "I\'m the Doctor!");
            });
            Tweener.delayedCall(this,3,function():void
            {
               m_canLieToSheriff = true;
               CloseLastWillAndDeathNote();
               AdvanceTutorial();
            });
         });
      }
      
      private function DoThirdDayVoting() : void
      {
         send(fromInt(97) + fromInt(30));
         Tweener.delayedCall(this,1,function():void
         {
            send(fromInt(103) + fromInt(m_roleList.indexOf(1) + 1) + fromInt(m_roleList.indexOf(28) + 1) + fromInt(1));
         });
         Tweener.delayedCall(this,2,function():void
         {
            send(fromInt(103) + fromInt(m_roleList.indexOf(9) + 1) + fromInt(m_roleList.indexOf(1) + 1) + fromInt(1));
            AdvanceTutorial();
            m_canVote = true;
         });
      }
      
      private function DoThirdNight() : void
      {
         AdvanceTutorial();
         m_nightNumber = 3;
         send(fromInt(145));
         Tweener.delayedCall(this,6,function():void
         {
            send(fromInt(93));
         });
      }
      
      private function DoFourthDay() : void
      {
         HideTutorial();
         m_dayNumber = 4;
         send(fromInt(94));
         var delay:Number = 2;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(146) + fromInt(m_roleList.indexOf(9) + 1) + fromInt(0));
         });
         delay = delay + 5;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(95) + fromInt(m_roleList.indexOf(9) + 1) + fromInt(9 + 1) + fromInt(1) + fromInt(5) + fromInt(0));
         });
         delay = delay + 5;
         Tweener.delayedCall(this,delay,function():void
         {
            send(fromInt(148) + fromInt(m_roleList.indexOf(9) + 1) + fromInt(2) + m_deathNote);
            send(fromInt(130) + fromInt(m_roleList.indexOf(9) + 1) + fromInt(2) + "I got duped by the serial killer.  ~Sheriff");
         });
         trace("strange");
         delay = delay + 34;
         Tweener.delayedCall(this,delay,function():void
         {
            trace("win");
            AdvanceTutorial();
            CloseLastWillAndDeathNote();
            send(fromInt(135) + fromInt(3) + fromInt(m_roleList.indexOf(28) + 1) + fromInt(0));
         });
      }
      
      private function EnterName_Outgoing(param1:String) : void
      {
         a_sMessage = param1;
         m_nameList[0] = a_sMessage;
         UserChosenName(0,a_sMessage);
         Tweener.delayedCall(this,1,DoRoleWheel);
         HideTutorial();
         Tweener.delayedCall(this,2,function():void
         {
            AdvanceTutorial();
         });
         Tweener.delayedCall(this,15,function():void
         {
            AdvanceTutorial();
         });
      }
      
      private function RequestNightTarget_Outgoing(param1:String) : void
      {
         var _loc2_:int = param1.charCodeAt(0) - 1;
         var _loc3_:* = _loc2_ == 29;
         if(_loc3_)
         {
            return;
         }
         var _loc4_:int = 0;
         if(m_nightNumber == 1)
         {
            _loc4_ = m_roleList.indexOf(7);
         }
         else if(m_nightNumber == 3)
         {
            _loc4_ = m_roleList.indexOf(9);
         }
         trace("target position " + _loc4_ + " position " + _loc2_);
         if(_loc4_ == _loc2_)
         {
            if(m_nightNumber == 1)
            {
               DoSecondDay();
            }
            else if(m_nightNumber == 3)
            {
               DoFourthDay();
            }
         }
      }
      
      private function DeathNote_Outgoing(param1:String) : void
      {
         m_deathNote = param1;
         if(m_canDeathNote)
         {
            m_canDeathNote = false;
            Tweener.delayedCall(this,1,DoFirstNight);
            HideTutorial();
         }
      }
      
      private function Vote_Outgoing(param1:String) : void
      {
         a_sMessage = param1;
         var position:int = a_sMessage.charCodeAt(0) - 1;
         trace("voted " + position);
         if(m_canVote && m_dayNumber == 2 && position == m_roleList.indexOf(23))
         {
            m_canVote = false;
            send(fromInt(103) + fromInt(0 + 1) + fromInt(position + 1) + fromInt(1));
            send(fromInt(98) + fromInt(position + 1));
            var delay:Number = 5;
            Tweener.delayedCall(this,delay,function():void
            {
               CloseLastWillAndDeathNote();
               send(fromInt(99));
               Tweener.delayedCall(this,1,function():void
               {
                  send(fromInt(117) + fromInt(m_roleList.indexOf(1) + 1));
               });
               Tweener.delayedCall(this,2,function():void
               {
                  send(fromInt(117) + fromInt(m_roleList.indexOf(9) + 1));
               });
               Tweener.delayedCall(this,3,function():void
               {
                  send(fromInt(117) + fromInt(m_roleList.indexOf(4) + 1));
               });
            });
            AdvanceTutorial();
         }
         else if(m_canVote && m_dayNumber == 3 && position == m_roleList.indexOf(1))
         {
            m_canVote = false;
            send(fromInt(103) + fromInt(0 + 1) + fromInt(position + 1) + fromInt(1));
            send(fromInt(98) + fromInt(position + 1));
            var delay2:Number = 5;
            Tweener.delayedCall(this,delay2,function():void
            {
               CloseLastWillAndDeathNote();
               send(fromInt(99));
               Tweener.delayedCall(this,1,function():void
               {
                  send(fromInt(117) + fromInt(m_roleList.indexOf(9) + 1));
               });
            });
            AdvanceTutorial();
         }
      }
      
      private function VoteGuiltly_Outgoing(param1:String) : void
      {
         a_sMessage = param1;
         trace("guilty!");
         if(m_dayNumber == 2)
         {
            HideTutorial();
            send(fromInt(117) + fromInt(0 + 1));
            send(fromInt(100) + fromInt(5) + fromInt(1));
            var delay:Number = 7;
            Tweener.delayedCall(this,delay,function():void
            {
               send(fromInt(147));
            });
            delay = delay + 5;
            Tweener.delayedCall(this,delay,function():void
            {
               send(fromInt(95) + fromInt(m_roleList.indexOf(23) + 1) + fromInt(23 + 1) + fromInt(2) + fromInt(0));
               send(fromInt(130) + fromInt(m_roleList.indexOf(23) + 1) + fromInt(2) + "The mafia will avenge me!");
            });
            delay = delay + 25;
            Tweener.delayedCall(this,delay,DoSecondNight);
         }
         else if(m_dayNumber == 3)
         {
            HideTutorial();
            send(fromInt(117) + fromInt(0 + 1));
            send(fromInt(100) + fromInt(3) + fromInt(1));
            var delay2:Number = 7;
            Tweener.delayedCall(this,delay2,function():void
            {
               send(fromInt(147));
            });
            delay2 = delay2 + 5;
            Tweener.delayedCall(this,delay2,function():void
            {
               send(fromInt(95) + fromInt(m_roleList.indexOf(1) + 1) + fromInt(1 + 1) + fromInt(2) + fromInt(0));
               send(fromInt(130) + fromInt(m_roleList.indexOf(1) + 1) + fromInt(2) + "I just wanted to heal people!");
            });
            delay2 = delay2 + 25;
            Tweener.delayedCall(this,delay2,DoThirdNight);
         }
      }
      
      private function Chat_Outgoing(param1:String) : void
      {
         a_sMessage = param1;
         trace("chatted " + a_sMessage);
         send(fromInt(6) + fromInt(0 + 1) + a_sMessage);
         if(m_canLynchMafioso)
         {
            m_canLynchMafioso = false;
            AdvanceTutorial();
            m_canVote = true;
            send(fromInt(97) + fromInt(30));
            Tweener.delayedCall(this,1,function():void
            {
               send(fromInt(103) + fromInt(m_roleList.indexOf(9) + 1) + fromInt(m_roleList.indexOf(23) + 1) + fromInt(1));
            });
            Tweener.delayedCall(this,2,function():void
            {
               send(fromInt(103) + fromInt(m_roleList.indexOf(1) + 1) + fromInt(m_roleList.indexOf(23) + 1) + fromInt(1));
            });
            Tweener.delayedCall(this,3,function():void
            {
               send(fromInt(103) + fromInt(m_roleList.indexOf(4) + 1) + fromInt(m_roleList.indexOf(23) + 1) + fromInt(1));
            });
         }
         if(m_canLieToJailor)
         {
            if(a_sMessage.toLowerCase().indexOf("doc") > -1)
            {
               HideTutorial();
               m_canLieToJailor = false;
               var delay:Number = 1;
               Tweener.delayedCall(this,delay,function():void
               {
                  send(fromInt(6) + fromInt(30) + "I believe you.");
                  Tweener.delayedCall(this,4,function():void
                  {
                     DoThirdDay();
                  });
               });
               return;
            }
         }
         if(m_canLieToSheriff)
         {
            if(a_sMessage.toLowerCase().indexOf("doc") > -1)
            {
               HideTutorial();
               m_canLieToSheriff = false;
               var delay2:Number = 1;
               Tweener.delayedCall(this,delay2,function():void
               {
                  send(fromInt(6) + fromInt(m_roleList.indexOf(9) + 1) + "I don\'t know who to believe!");
               });
               delay2 = delay2 + 3;
               DoThirdDayVoting();
            }
         }
      }
      
      private function SendReturnHome_Outgoing(param1:String) : void
      {
         trace("Need to send us home!!!!");
         AdvanceTutorial();
         if(TownOfSalem.GetSingleton().stage)
         {
            TownOfSalem.GetSingleton().stage.dispatchEvent(new Event("GoToHome"));
         }
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
      
      private function RoleAndPosition() : void
      {
         var _loc1_:String = fromInt(92) + fromInt(m_roleList[0] + 1) + fromInt(0 + 1);
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
         send(fromInt(90) + fromInt(9 + 1));
      }
      
      private function DeathAnimationsChosen() : void
      {
         var _loc2_:int = 0;
         var _loc1_:String = fromInt(168);
         _loc2_ = 0;
         while(_loc2_ < 9)
         {
            _loc1_ = _loc1_ + fromInt(_loc2_ + 1);
            _loc1_ = _loc1_ + fromInt(1);
            _loc2_++;
         }
         send(_loc1_);
      }
      
      private function HousesChosen() : void
      {
         var _loc2_:int = 0;
         var _loc1_:String = fromInt(150);
         _loc2_ = 0;
         while(_loc2_ < 9)
         {
            _loc1_ = _loc1_ + fromInt(_loc2_ + 1);
            _loc1_ = _loc1_ + fromInt(1);
            _loc2_++;
         }
         send(_loc1_);
      }
      
      private function CharactersChosen() : void
      {
         var _loc2_:int = 0;
         var _loc1_:String = fromInt(153);
         _loc2_ = 0;
         while(_loc2_ < 9)
         {
            _loc1_ = _loc1_ + fromInt(_loc2_ + 1);
            _loc1_ = _loc1_ + fromInt(_loc2_ + 1);
            _loc2_++;
         }
         send(_loc1_);
      }
      
      private function PetsChosen() : void
      {
         var _loc1_:String = fromInt(165);
         _loc1_ = _loc1_ + fromInt(9);
         _loc1_ = _loc1_ + fromInt(23);
         send(_loc1_);
      }
      
      private function fromInt(param1:int) : String
      {
         return String.fromCharCode(param1);
      }
      
      private function send(param1:String) : void
      {
         m_serverMessageManage.HandleServerMessage(param1);
      }
   }
}
