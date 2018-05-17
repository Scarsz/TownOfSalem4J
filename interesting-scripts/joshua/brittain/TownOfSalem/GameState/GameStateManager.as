package joshua.brittain.TownOfSalem.GameState
{
   import joshua.brittain.TownOfSalem.User.User;
   import salem.game.GameInfo;
   import salem.sharedinfo.Roles;
   import salem.utils.events.SalemEvent;
   import salem.utils.events.SalemEventDispatcher;
   
   public class GameStateManager
   {
      
      public static var EVENT_AliveOrDead:String = "GameStateManager::EVENT_AliveOrDead";
       
      
      public var m_personOnTrialID:int = -1;
      
      public var m_executionerTargetID:int = -1;
      
      public var m_guardianAngelTargetID:int = -1;
      
      public var m_ourPos:int;
      
      public var m_role:int;
      
      private var m_isAlive:Boolean = true;
      
      public var m_bMediumTalkingToYou:Boolean = false;
      
      public var m_bTalkingToDead:Boolean = false;
      
      public var m_bVigilKilledTown:Boolean = false;
      
      public var m_jesterLynched:Boolean = false;
      
      public var m_jailedTargetID:int = -1;
      
      public var m_bWasLynched:Boolean = false;
      
      public var m_jailed:Boolean = false;
      
      public var m_jailing:Boolean = false;
      
      public var m_jailedMafiaTarget:int = -1;
      
      public var m_blackmailed:Boolean = false;
      
      public var m_bJailorExecutedTown:Boolean = false;
      
      public var m_numOfAbilities:int = -1;
      
      public var m_dayNumber:int = 0;
      
      public var m_nightNumber:int = 0;
      
      public var m_bHasDeathNote:Boolean = false;
      
      public var m_leftDuringSelectionUsers:Vector.<int>;
      
      public var m_recentlyDeadUsers:Vector.<int>;
      
      public var m_rottedZombies:Vector.<int>;
      
      public var m_mafiaIDs:Array;
      
      public var m_vampireIDs:Array;
      
      public var m_witchIDs:Array;
      
      public var m_deadUserIDs:Vector.<int>;
      
      public var m_deadUserRoles:Vector.<int>;
      
      public var m_persistentDeadUserIDs:Vector.<int>;
      
      public var m_persistentDeadUserRoles:Vector.<int>;
      
      public var m_plaguedTargetIDs:Vector.<int>;
      
      public var m_bDeadUserHasWill:Boolean = false;
      
      public var m_bCanConvertTonight:Boolean = true;
      
      public var m_bIsTrapReady:Boolean = false;
      
      public var m_bIsTrapSet:Boolean = false;
      
      public var m_gameInfo:GameInfo = null;
      
      public var m_nNumJuggernautKills:int = 0;
      
      public var m_bHasNecronomicon:Boolean = false;
      
      public var m_pirateLastTargetID:int = -1;
      
      public var m_pirateTargetIDs:Vector.<int>;
      
      public var m_rivalPos:int = -1;
      
      public var m_vipPos:int = -1;
      
      public var m_loverPos:int = -1;
      
      public var m_pirateDueled:Boolean = false;
      
      public function GameStateManager()
      {
         m_leftDuringSelectionUsers = new Vector.<int>(0,false);
         m_recentlyDeadUsers = new Vector.<int>(0,false);
         m_rottedZombies = new Vector.<int>(0,false);
         m_deadUserIDs = new Vector.<int>(0,false);
         m_deadUserRoles = new Vector.<int>(0,false);
         m_persistentDeadUserIDs = new Vector.<int>(0,false);
         m_persistentDeadUserRoles = new Vector.<int>(0,false);
         m_plaguedTargetIDs = new Vector.<int>(0,false);
         m_pirateTargetIDs = new Vector.<int>();
         super();
      }
      
      public static function IsMafia() : Boolean
      {
         if(Roles.IsMafiaRole(TownOfSalem.GetSingleton().GetGameStateManager().m_role))
         {
            return true;
         }
         return false;
      }
      
      public static function IsWitchFaction() : Boolean
      {
         if(Roles.IsWitchRole(TownOfSalem.GetSingleton().GetGameStateManager().m_role))
         {
            return true;
         }
         return false;
      }
      
      public static function CanBeRoleBlocked() : Boolean
      {
         var _loc1_:int = TownOfSalem.GetSingleton().GetGameStateManager().m_role;
         if(_loc1_ != 17 && _loc1_ != 56 && _loc1_ != 59 && _loc1_ != 55 && _loc1_ != 100 && _loc1_ != 2 && _loc1_ != 11 && _loc1_ != 13 && _loc1_ != 32)
         {
            return true;
         }
         return false;
      }
      
      public static function DetermineNumberOfVotesNeeded() : int
      {
         var _loc3_:int = 0;
         var _loc2_:int = 0;
         var _loc1_:Vector.<User> = TownOfSalem.GetSingleton().GetUsers();
         _loc3_ = 0;
         while(_loc3_ < _loc1_.length)
         {
            if(_loc1_[_loc3_].IsAlive())
            {
               _loc2_++;
            }
            _loc3_++;
         }
         return Math.floor(_loc2_ / 2) + 1;
      }
      
      public static function IsCovenGame() : Boolean
      {
         return (TownOfSalem.GetSingleton().GetGameStateManager().m_gameInfo.permissionLevel & 1) > 0;
      }
      
      public function IsAlive() : Boolean
      {
         return m_isAlive;
      }
      
      public function GetRoleIdForDeadPlayer(param1:int) : int
      {
         var _loc2_:int = 0;
         if(m_persistentDeadUserIDs.indexOf(param1) > -1)
         {
            _loc2_ = m_persistentDeadUserIDs.indexOf(param1);
            if(m_persistentDeadUserRoles[_loc2_] > -1)
            {
               return m_persistentDeadUserRoles[_loc2_];
            }
         }
         return -2;
      }
      
      public function SetIsAlive(param1:Boolean) : void
      {
         m_isAlive = param1;
         SalemEventDispatcher.GetInstance().dispatchEvent(new SalemEvent(GameStateManager.EVENT_AliveOrDead,{"alive":m_isAlive}));
      }
   }
}
