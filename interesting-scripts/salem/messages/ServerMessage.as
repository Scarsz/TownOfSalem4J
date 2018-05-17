package salem.messages
{
   public class ServerMessage
   {
      
      public static const GLOBAL_SEND_CHAT_BOX_MSG:uint = 3;
      
      public static const GLOBAL_SEND_SYSTEM_COMMAND:uint = 24;
      
      public static const GLOBAL_SEND_FRIEND_ADD:uint = 25;
      
      public static const GLOBAL_SEND_FRIEND_CONFIRM:uint = 26;
      
      public static const GLOBAL_SEND_FRIEND_REMOVE:uint = 27;
      
      public static const GLOBAL_SEND_FRIEND_DECLINE:uint = 28;
      
      public static const GLOBAL_SEND_FRIEND_MSG:uint = 29;
      
      public static const GLOBAL_SEND_AFK:uint = 38;
      
      public static const GLOBAL_SEND_RETURN_HOME:uint = 39;
      
      public static const GLOBAL_REQUEST_AD_VIEW_REWARD:uint = 66;
      
      public static const GLOBAL_REQUEST_PROMOTION_PURCHASE:uint = 67;
      
      public static const GLOBAL_SEND_TUTORIAL_PROGRESS:uint = 69;
      
      public static const LOGIN_FB_CONNECT:uint = 1;
      
      public static const LOGIN_REQUEST_LOAD_HOMEPAGE:uint = 2;
      
      public static const LOGIN_REGISTER_FB:uint = 58;
      
      public static const GAME_SEND_PRIVATE_MSG:uint = 8;
      
      public static const GAME_REQUEST_VOTE_TARGET:uint = 10;
      
      public static const GAME_REQUEST_NIGHT_TARGET:uint = 11;
      
      public static const GAME_REQUEST_NIGHT_TARGET_SECOND:uint = 12;
      
      public static const GAME_REQUEST_VOTE_GUILTY:uint = 14;
      
      public static const GAME_REQUEST_VOTE_INNOCENT:uint = 15;
      
      public static const GAME_REQUEST_DAY_TARGET:uint = 16;
      
      public static const GAME_SEND_LAST_WILL:uint = 17;
      
      public static const GAME_SEND_DEATH_NOTE:uint = 18;
      
      public static const GAME_REQUEST_MAFIA_TARGET:uint = 19;
      
      public static const GAME_REQUEST_PASS_TARGET_MSG_TO_TEAM:uint = 19;
      
      public static const GAME_REQUEST_NAME:uint = 21;
      
      public static const GAME_SEND_REPORT:uint = 22;
      
      public static const GAME_SEND_PARTY_MSG:uint = 36;
      
      public static const GAME_SEND_RETURN_HOME:uint = 63;
      
      public static const GAME_SEND_FORGER_FORGED_WILL:uint = 64;
      
      public static const GAME_REQUEST_TAUNT_TARGET:uint = 77;
      
      public static const GAME_REQUEST_PIRATE_DUEL_SELECTION:uint = 78;
      
      public static const GAME_REQUEST_POTION_CHOSEN:uint = 79;
      
      public static const GAME_REQUEST_HYPNOTIST_CHOICE:uint = 82;
      
      public static const GAME_SEND_JAILOR_DEATHNOTE:uint = 83;
      
      public static const HOME_SEND_CUSTOMIZATION_SETTINGS:uint = 20;
      
      public static const HOME_REQUEST_GAME:uint = 30;
      
      public static const HOME_REQUEST_PARTY_CREATE:uint = 31;
      
      public static const HOME_SEND_PARTY_RESPONSE:uint = 33;
      
      public static const HOME_SEND_GAME_SETTINGS:uint = 37;
      
      public static const HOME_REQUEST_PURCHASE_CHARACTER:uint = 40;
      
      public static const HOME_REQUEST_PURCHASE_HOUSE:uint = 41;
      
      public static const HOME_REQUEST_PURCHASE_BACKGROUND:uint = 42;
      
      public static const HOME_REQUEST_PURCHASE_PACK:uint = 43;
      
      public static const HOME_REQUEST_PURCHASE_PET:uint = 44;
      
      public static const HOME_REQUEST_REDEEM_CODE:uint = 45;
      
      public static const HOME_SEND_FB_ACHIEVEMENT_SHARE:uint = 46;
      
      public static const HOME_SEND_FB_WIN_SHARE:uint = 47;
      
      public static const HOME_REQUEST_PURCHASE_LOBBY_ICON:uint = 48;
      
      public static const HOME_REQUEST_PURCHASE_DEATH_ANIM:uint = 49;
      
      public static const HOME_SEND_FB_INVITE_FRIEND:uint = 50;
      
      public static const HOME_REQUEST_PURCHASE_SCROLL:uint = 51;
      
      public static const HOME_REQUEST_STEAM_ORDER:uint = 55;
      
      public static const HOME_SEND_STEAM_APPROVE:uint = 56;
      
      public static const HOME_REQUEST_STEAM_CREATE_ACCOUNT:uint = 57;
      
      public static const HOME_REQUEST_FB_CREATE_ACCOUNT:uint = 58;
      
      public static const HOME_REQUEST_STEAM_LINK_ACCOUNT:uint = 59;
      
      public static const HOME_REQUEST_RANKED_GAME:uint = 60;
      
      public static const HOME_SEND_RANKED_QUEUE_LEAVE:uint = 61;
      
      public static const HOME_SEND_RANKED_QUEUE_ACCEPT:uint = 62;
      
      public static const HOME_SEND_PLAYER_STATISTICS:uint = 65;
      
      public static const HOME_REQUEST_PAYPAL_SALE:uint = 68;
      
      public static const HOME_KICKSTARTER_SHARED:uint = 70;
      
      public static const HOME_REQUEST_PURCHASE_ACCOUNT_ITEM:uint = 71;
      
      public static const HOME_REQUEST_CHECK_USERNAME:uint = 72;
      
      public static const HOME_REQUEST_NAME_CHANGE:uint = 73;
      
      public static const HOME_REQUEST_PURCHASE_PRODUCT:uint = 74;
      
      public static const HOME_REQUEST_CAULDRON_STATUS:uint = 75;
      
      public static const HOME_REQUEST_CAULDRON_COMPLETE:uint = 76;
      
      public static const HOME_REQUEST_VERIFY_ACCOUNT_FLAG:uint = 81;
      
      public static const LOBBY_CLICKED_CATALOG_LIST:uint = 4;
      
      public static const LOBBY_CLICKED_POSSIBLE_ROLES:uint = 5;
      
      public static const LOBBY_REQUEST_ADD_ROLE:uint = 6;
      
      public static const LOBBY_REQUEST_REMOVE_ROLE:uint = 7;
      
      public static const LOBBY_REQUEST_START:uint = 9;
      
      public static const LOBBY_REQUEST_REPICK:uint = 23;
      
      public static const LOBBY_SEND_PARTY_INVITE:uint = 32;
      
      public static const LOBBY_SEND_PARTY_LEAVE:uint = 34;
      
      public static const LOBBY_REQUEST_PARTY_START:uint = 35;
      
      public static const LOBBY_SEND_PARTY_CHANGE_HOST:uint = 52;
      
      public static const LOBBY_SEND_PARTY_KICK:uint = 53;
      
      public static const LOBBY_SEND_PARTY_GIVE_INVITE_PRIVILEGES:uint = 54;
      
      public static const LOBBY_HOST_SET_PARTY_CONFIG:uint = 80;
       
      
      public function ServerMessage()
      {
         super();
      }
   }
}
