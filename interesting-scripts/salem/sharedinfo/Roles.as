package salem.sharedinfo
{
   import flash.utils.Dictionary;
   import salem.localization.LocalizationManager;
   
   public final class Roles
   {
      
      public static const NO_ROLE:int = -2;
      
      public static const BODYGUARD:int = 0;
      
      public static const DOCTOR:int = 1;
      
      public static const ESCORT:int = 2;
      
      public static const INVESTIGATOR:int = 3;
      
      public static const JAILOR:int = 4;
      
      public static const LOOKOUT:int = 5;
      
      public static const MAYOR:int = 6;
      
      public static const MEDIUM:int = 7;
      
      public static const RETRIBUTIONIST:int = 8;
      
      public static const SHERIFF:int = 9;
      
      public static const SPY:int = 10;
      
      public static const TRANSPORTER:int = 11;
      
      public static const VAMPIRE_HUNTER:int = 12;
      
      public static const VETERAN:int = 13;
      
      public static const VIGILANTE:int = 14;
      
      public static const BLACKMAILER:int = 15;
      
      public static const CONSIGLIERE:int = 16;
      
      public static const CONSORT:int = 17;
      
      public static const DISGUISER:int = 18;
      
      public static const FORGER:int = 19;
      
      public static const FRAMER:int = 20;
      
      public static const GODFATHER:int = 21;
      
      public static const JANITOR:int = 22;
      
      public static const MAFIOSO:int = 23;
      
      public static const AMNESIAC:int = 24;
      
      public static const ARSONIST:int = 25;
      
      public static const EXECUTIONER:int = 26;
      
      public static const JESTER:int = 27;
      
      public static const SERIALKILLER:int = 28;
      
      public static const SURVIVOR:int = 29;
      
      public static const VAMPIRE:int = 30;
      
      public static const WEREWOLF:int = 31;
      
      public static const WITCH:int = 32;
      
      public static const RANDOM_TOWN:int = 33;
      
      public static const TOWN_INVESTIGATIVE:int = 34;
      
      public static const TOWN_PROTECTIVE:int = 35;
      
      public static const TOWN_KILLING:int = 36;
      
      public static const TOWN_SUPPORT:int = 37;
      
      public static const RANDOM_MAFIA:int = 38;
      
      public static const MAFIA_SUPPORT:int = 39;
      
      public static const MAFIA_DECEPTION:int = 40;
      
      public static const RANDOM_NEUTRAL:int = 41;
      
      public static const NEUTRAL_BENIGN:int = 42;
      
      public static const NEUTRAL_EVIL:int = 43;
      
      public static const NEUTRAL_KILLING:int = 44;
      
      public static const ANY:int = 45;
      
      public static const CRUSADER:int = 46;
      
      public static const TRACKER:int = 47;
      
      public static const TRAPPER:int = 48;
      
      public static const PSYCHIC:int = 49;
      
      public static const HYPNOTIST:int = 50;
      
      public static const AMBUSHER:int = 51;
      
      public static const PLAGUEBEARER:int = 52;
      
      public static const JUGGERNAUT:int = 53;
      
      public static const GUARDIAN_ANGEL:int = 54;
      
      public static const PIRATE:int = 55;
      
      public static const COVEN_LEADER:int = 56;
      
      public static const POTION_MASTER:int = 57;
      
      public static const HEX_MASTER:int = 58;
      
      public static const NECROMANCER:int = 59;
      
      public static const POISONER:int = 60;
      
      public static const MEDUSA:int = 61;
      
      public static const COVEN_RANDOM_COVEN:int = 62;
      
      public static const COVEN_RANDOM_TOWN:int = 63;
      
      public static const COVEN_TOWN_INVESTIGATIVE:int = 64;
      
      public static const COVEN_TOWN_PROTECTIVE:int = 65;
      
      public static const COVEN_TOWN_KILLING:int = 66;
      
      public static const COVEN_TOWN_SUPPORT:int = 67;
      
      public static const COVEN_RANDOM_MAFIA:int = 68;
      
      public static const COVEN_MAFIA_SUPPORT:int = 69;
      
      public static const COVEN_MAFIA_DECEPTION:int = 70;
      
      public static const COVEN_RANDOM_NEUTRAL:int = 71;
      
      public static const COVEN_NEUTRAL_BENIGN:int = 72;
      
      public static const COVEN_NEUTRAL_EVIL:int = 73;
      
      public static const COVEN_NEUTRAL_KILLING:int = 74;
      
      public static const COVEN_ANY:int = 75;
      
      public static const COVEN_NEUTRAL_CHAOS:int = 76;
      
      public static const COUNT:int = 77;
      
      public static const PESTILENCE:int = 100;
      
      public static const NECRO_GHOUL:int = 101;
      
      public static const CLEANED:int = 200;
      
      public static const STONED:int = 201;
      
      public static const RANDOM_TOWN_LIST:Vector.<int> = new <int>[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14];
      
      public static const COVEN_RANDOM_TOWN_LIST:Vector.<int> = RANDOM_TOWN_LIST.concat(new <int>[46,48,47,49]);
      
      public static const TOWN_INVESTIGATIVE_LIST:Vector.<int> = new <int>[3,9,5,10];
      
      public static const COVEN_TOWN_INVESTIGATIVE_LIST:Vector.<int> = new <int>[3,9,5,10,47,49];
      
      public static const TOWN_PROTECTIVE_LIST:Vector.<int> = new <int>[0,1];
      
      public static const COVEN_TOWN_PROTECTIVE_LIST:Vector.<int> = new <int>[0,1,46,48];
      
      public static const TOWN_KILLING_LIST:Vector.<int> = new <int>[4,12,13,14];
      
      public static const COVEN_TOWN_KILLING_LIST:Vector.<int> = new <int>[4,12,13,14];
      
      public static const TOWN_SUPPORT_LIST:Vector.<int> = new <int>[2,6,7,8,11];
      
      public static const COVEN_TOWN_SUPPORT_LIST:Vector.<int> = new <int>[2,6,7,8,11];
      
      public static const RANDOM_MAFIA_LIST:Vector.<int> = new <int>[15,16,17,18,19,20,21,22,23];
      
      public static const COVEN_RANDOM_MAFIA_LIST:Vector.<int> = new <int>[15,16,17,18,19,20,21,22,23,50,51];
      
      public static const MAFIA_SUPPORT_LIST:Vector.<int> = new <int>[16,17,15];
      
      public static const COVEN_MAFIA_SUPPORT_LIST:Vector.<int> = new <int>[16,17,15];
      
      public static const MAFIA_DECEPTION_LIST:Vector.<int> = new <int>[18,19,20,22];
      
      public static const COVEN_MAFIA_DECEPTION_LIST:Vector.<int> = new <int>[18,19,20,22,50];
      
      public static const RANDOM_NEUTRAL_LIST:Vector.<int> = new <int>[24,25,26,27,28,29,30,31,32];
      
      public static const COVEN_RANDOM_NEUTRAL_LIST:Vector.<int> = new <int>[24,25,26,27,28,29,30,31,54];
      
      public static const NEUTRAL_BENIGN_LIST:Vector.<int> = new <int>[24,29];
      
      public static const COVEN_NEUTRAL_BENIGN_LIST:Vector.<int> = new <int>[24,29,54];
      
      public static const NEUTRAL_EVIL_LIST:Vector.<int> = new <int>[26,27,32];
      
      public static const COVEN_NEUTRAL_EVIL_LIST:Vector.<int> = new <int>[26,27];
      
      public static const NEUTRAL_KILLING_LIST:Vector.<int> = new <int>[25,28,31];
      
      public static const COVEN_NEUTRAL_KILLING_LIST:Vector.<int> = new <int>[25,28,31];
      
      public static const NEUTRAL_CHAOS_LIST:Vector.<int> = new <int>[30];
      
      public static const COVEN_NEUTRAL_CHAOS_LIST:Vector.<int> = new <int>[30,55,52];
      
      public static const COVEN_RANDOM_COVEN_LIST:Vector.<int> = new <int>[56,57,58,59,60,61];
      
      public static const HIDDEN_ROLE_WHEEL_LIST:Vector.<int> = new <int>[53];
      
      private static const CLASSIC_ROLES:Vector.<int> = new <int>[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32];
      
      private static const COVEN_ROLES:Vector.<int> = new <int>[46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61];
      
      public static const UNIQUE_TOWN_ROLES:Vector.<int> = new <int>[4,6,8,13];
      
      public static const ROLES_SAFE_FOR_COVEN_TEAMMATES_LIST:Vector.<int> = new <int>[0,1,46,51,20,22,54];
      
      public static const ROLES_EXCLUDED_FROM_ZOMBIEING_LIST:Vector.<int> = new <int>[24,200,56,26,4,27,6,7,61,59,55,57,49,8,10,201,29,11,48,13,32];
      
      private static var m_RoleIdToHiddenWheelRoleName:Dictionary = new Dictionary();
      
      private static var m_bucketToListMap:Dictionary = new Dictionary();
      
      private static var m_roleIdToNameMap:Dictionary = new Dictionary();
      
      public static var COLOR_Town:String = "\'#7FFF00\'";
      
      public static var COLOR_Mafia:String = "\'#DD0000\'";
      
      public static var COLOR_Coven:String = "\'#BF5FFF\'";
      
      public static var COLOR_Neutral:String = "\'#CCCCCC\'";
      
      public static var COLOR_Random:String = "\'#1D7CF2\'";
      
      public static var COLOR_Any:String = "\'#FFFFFF\'";
      
      private static var m_roleIdToColorMap:Dictionary = new Dictionary();
      
      private static var m_randomRoleIdToHtmlNameMap:Dictionary = new Dictionary();
      
      {
         m_RoleIdToHiddenWheelRoleName[53] = "???";
         m_bucketToListMap[33] = RANDOM_TOWN_LIST;
         m_bucketToListMap[63] = COVEN_RANDOM_TOWN_LIST;
         m_bucketToListMap[34] = TOWN_INVESTIGATIVE_LIST;
         m_bucketToListMap[64] = COVEN_TOWN_INVESTIGATIVE_LIST;
         m_bucketToListMap[35] = TOWN_PROTECTIVE_LIST;
         m_bucketToListMap[65] = COVEN_TOWN_PROTECTIVE_LIST;
         m_bucketToListMap[36] = TOWN_KILLING_LIST;
         m_bucketToListMap[66] = COVEN_TOWN_KILLING_LIST;
         m_bucketToListMap[37] = TOWN_SUPPORT_LIST;
         m_bucketToListMap[67] = COVEN_TOWN_SUPPORT_LIST;
         m_bucketToListMap[38] = RANDOM_MAFIA_LIST;
         m_bucketToListMap[68] = COVEN_RANDOM_MAFIA_LIST;
         m_bucketToListMap[39] = MAFIA_SUPPORT_LIST;
         m_bucketToListMap[69] = COVEN_MAFIA_SUPPORT_LIST;
         m_bucketToListMap[40] = MAFIA_DECEPTION_LIST;
         m_bucketToListMap[70] = COVEN_MAFIA_DECEPTION_LIST;
         m_bucketToListMap[41] = RANDOM_NEUTRAL_LIST;
         m_bucketToListMap[71] = COVEN_RANDOM_NEUTRAL_LIST;
         m_bucketToListMap[42] = NEUTRAL_BENIGN_LIST;
         m_bucketToListMap[72] = COVEN_NEUTRAL_BENIGN_LIST;
         m_bucketToListMap[43] = NEUTRAL_EVIL_LIST;
         m_bucketToListMap[73] = COVEN_NEUTRAL_EVIL_LIST;
         m_bucketToListMap[44] = NEUTRAL_KILLING_LIST;
         m_bucketToListMap[74] = COVEN_NEUTRAL_KILLING_LIST;
         m_bucketToListMap[62] = COVEN_RANDOM_COVEN_LIST;
         m_bucketToListMap[45] = CLASSIC_ROLES;
         m_bucketToListMap[75] = COVEN_ROLES;
         m_roleIdToNameMap[0] = "Bodyguard";
         m_roleIdToNameMap[1] = "Doctor";
         m_roleIdToNameMap[2] = "Escort";
         m_roleIdToNameMap[3] = "Investigator";
         m_roleIdToNameMap[4] = "Jailor";
         m_roleIdToNameMap[5] = "Lookout";
         m_roleIdToNameMap[6] = "Mayor";
         m_roleIdToNameMap[7] = "Medium";
         m_roleIdToNameMap[8] = "Retributionist";
         m_roleIdToNameMap[9] = "Sheriff";
         m_roleIdToNameMap[10] = "Spy";
         m_roleIdToNameMap[11] = "Transporter";
         m_roleIdToNameMap[12] = "Vampire Hunter";
         m_roleIdToNameMap[13] = "Veteran";
         m_roleIdToNameMap[14] = "Vigilante";
         m_roleIdToNameMap[15] = "Blackmailer";
         m_roleIdToNameMap[16] = "Consigliere";
         m_roleIdToNameMap[17] = "Consort";
         m_roleIdToNameMap[18] = "Disguiser";
         m_roleIdToNameMap[19] = "Forger";
         m_roleIdToNameMap[20] = "Framer";
         m_roleIdToNameMap[21] = "Godfather";
         m_roleIdToNameMap[22] = "Janitor";
         m_roleIdToNameMap[23] = "Mafioso";
         m_roleIdToNameMap[24] = "Amnesiac";
         m_roleIdToNameMap[25] = "Arsonist";
         m_roleIdToNameMap[26] = "Executioner";
         m_roleIdToNameMap[27] = "Jester";
         m_roleIdToNameMap[28] = "Serial Killer";
         m_roleIdToNameMap[29] = "Survivor";
         m_roleIdToNameMap[30] = "Vampire";
         m_roleIdToNameMap[31] = "Werewolf";
         m_roleIdToNameMap[32] = "Witch";
         m_roleIdToNameMap[33] = "Random Town";
         m_roleIdToNameMap[34] = "Town Investigative";
         m_roleIdToNameMap[35] = "Town Protective";
         m_roleIdToNameMap[36] = "Town Killing";
         m_roleIdToNameMap[37] = "Town Support";
         m_roleIdToNameMap[38] = "Random Mafia";
         m_roleIdToNameMap[39] = "Mafia Support";
         m_roleIdToNameMap[40] = "Mafia Deception";
         m_roleIdToNameMap[41] = "Random Neutral";
         m_roleIdToNameMap[42] = "Neutral Benign";
         m_roleIdToNameMap[43] = "Neutral Evil";
         m_roleIdToNameMap[44] = "Neutral Killing";
         m_roleIdToNameMap[45] = "Any";
         m_roleIdToNameMap[46] = "Crusader";
         m_roleIdToNameMap[47] = "Tracker";
         m_roleIdToNameMap[48] = "Trapper";
         m_roleIdToNameMap[49] = "Psychic";
         m_roleIdToNameMap[50] = "Hypnotist";
         m_roleIdToNameMap[51] = "Ambusher";
         m_roleIdToNameMap[52] = "Plaguebearer";
         m_roleIdToNameMap[53] = "Juggernaut";
         m_roleIdToNameMap[54] = "Guardian Angel";
         m_roleIdToNameMap[55] = "Pirate";
         m_roleIdToNameMap[56] = "Coven Leader";
         m_roleIdToNameMap[57] = "Potion Master";
         m_roleIdToNameMap[58] = "Hex Master";
         m_roleIdToNameMap[59] = "Necromancer";
         m_roleIdToNameMap[60] = "Poisoner";
         m_roleIdToNameMap[61] = "Medusa";
         m_roleIdToNameMap[100] = "Pestilence";
         m_roleIdToNameMap[101] = "Ghoul";
         m_roleIdToNameMap[63] = "Random Town";
         m_roleIdToNameMap[64] = "Town Investigative";
         m_roleIdToNameMap[65] = "Town Protective";
         m_roleIdToNameMap[66] = "Town Killing";
         m_roleIdToNameMap[67] = "Town Support";
         m_roleIdToNameMap[68] = "Random Mafia";
         m_roleIdToNameMap[69] = "Mafia Support";
         m_roleIdToNameMap[70] = "Mafia Deception";
         m_roleIdToNameMap[71] = "Random Neutral";
         m_roleIdToNameMap[72] = "Neutral Benign";
         m_roleIdToNameMap[73] = "Neutral Evil";
         m_roleIdToNameMap[74] = "Neutral Killing";
         m_roleIdToNameMap[62] = "Random Witch";
         m_roleIdToNameMap[76] = "Neutral Chaos";
         m_roleIdToNameMap[75] = "Any";
         m_roleIdToNameMap[200] = "Cleaned";
         m_roleIdToNameMap[201] = "Stoned";
         m_roleIdToColorMap[0] = COLOR_Town;
         m_roleIdToColorMap[1] = COLOR_Town;
         m_roleIdToColorMap[2] = COLOR_Town;
         m_roleIdToColorMap[3] = COLOR_Town;
         m_roleIdToColorMap[4] = COLOR_Town;
         m_roleIdToColorMap[5] = COLOR_Town;
         m_roleIdToColorMap[6] = COLOR_Town;
         m_roleIdToColorMap[7] = COLOR_Town;
         m_roleIdToColorMap[8] = COLOR_Town;
         m_roleIdToColorMap[9] = COLOR_Town;
         m_roleIdToColorMap[10] = COLOR_Town;
         m_roleIdToColorMap[11] = COLOR_Town;
         m_roleIdToColorMap[12] = COLOR_Town;
         m_roleIdToColorMap[13] = COLOR_Town;
         m_roleIdToColorMap[14] = COLOR_Town;
         m_roleIdToColorMap[15] = COLOR_Mafia;
         m_roleIdToColorMap[16] = COLOR_Mafia;
         m_roleIdToColorMap[17] = COLOR_Mafia;
         m_roleIdToColorMap[18] = COLOR_Mafia;
         m_roleIdToColorMap[19] = COLOR_Mafia;
         m_roleIdToColorMap[20] = COLOR_Mafia;
         m_roleIdToColorMap[21] = COLOR_Mafia;
         m_roleIdToColorMap[22] = COLOR_Mafia;
         m_roleIdToColorMap[23] = COLOR_Mafia;
         m_roleIdToColorMap[24] = "\'#22FFFF\'";
         m_roleIdToColorMap[25] = "\'#EE7600\'";
         m_roleIdToColorMap[26] = "\'#CCCCCC\'";
         m_roleIdToColorMap[27] = "\'#F7B3DA\'";
         m_roleIdToColorMap[28] = "\'#000080\'";
         m_roleIdToColorMap[29] = "\'#DDDD00\'";
         m_roleIdToColorMap[30] = "\'#7B8968\'";
         m_roleIdToColorMap[31] = "\'#9F703A\'";
         m_roleIdToColorMap[32] = COLOR_Coven;
         m_roleIdToColorMap[46] = COLOR_Town;
         m_roleIdToColorMap[47] = COLOR_Town;
         m_roleIdToColorMap[48] = COLOR_Town;
         m_roleIdToColorMap[49] = COLOR_Town;
         m_roleIdToColorMap[50] = COLOR_Mafia;
         m_roleIdToColorMap[51] = COLOR_Mafia;
         m_roleIdToColorMap[52] = "\'#Cfff63\'";
         m_roleIdToColorMap[100] = "\'#424242\'";
         m_roleIdToColorMap[53] = "\'#631A35\'";
         m_roleIdToColorMap[54] = "\'#FFFFFF\'";
         m_roleIdToColorMap[55] = "\'#EDC240\'";
         m_roleIdToColorMap[56] = COLOR_Coven;
         m_roleIdToColorMap[57] = COLOR_Coven;
         m_roleIdToColorMap[58] = COLOR_Coven;
         m_roleIdToColorMap[59] = COLOR_Coven;
         m_roleIdToColorMap[60] = COLOR_Coven;
         m_roleIdToColorMap[61] = COLOR_Coven;
         m_roleIdToColorMap[200] = "\'#FFFFFF\'";
         m_roleIdToColorMap[201] = "\'#CCCCCC\'";
         m_randomRoleIdToHtmlNameMap[33] = "<font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Random <font color=\"" + GetFixedUpColor(COLOR_Town) + "\">Town</b></font></font>";
         m_randomRoleIdToHtmlNameMap[34] = "<font color=\"" + GetFixedUpColor(COLOR_Town) + "\">Town <font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Investigative</b></font></font>";
         m_randomRoleIdToHtmlNameMap[35] = "<font color=\"" + GetFixedUpColor(COLOR_Town) + "\">Town <font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Protective</b></font></font>";
         m_randomRoleIdToHtmlNameMap[36] = "<font color=\"" + GetFixedUpColor(COLOR_Town) + "\">Town <font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Killing</b></font></font>";
         m_randomRoleIdToHtmlNameMap[37] = "<font color=\"" + GetFixedUpColor(COLOR_Town) + "\">Town <font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Support</b></font></font>";
         m_randomRoleIdToHtmlNameMap[38] = "<font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Random <font color=\"" + GetFixedUpColor(COLOR_Mafia) + "\">Mafia</b></font></font>";
         m_randomRoleIdToHtmlNameMap[39] = "<font color=\"" + GetFixedUpColor(COLOR_Mafia) + "\">Mafia <font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Support</b></font></font>";
         m_randomRoleIdToHtmlNameMap[40] = "<font color=\"" + GetFixedUpColor(COLOR_Mafia) + "\">Mafia <font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Deception</b></font></font>";
         m_randomRoleIdToHtmlNameMap[41] = "<font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Random <font color=\"" + GetFixedUpColor(COLOR_Neutral) + "\">Neutral</b></font></font>";
         m_randomRoleIdToHtmlNameMap[42] = "<font color=\"" + GetFixedUpColor(COLOR_Neutral) + "\">Neutral <font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Benign</font>";
         m_randomRoleIdToHtmlNameMap[43] = "<font color=\"" + GetFixedUpColor(COLOR_Neutral) + "\">Neutral <font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Evil</b></font></font>";
         m_randomRoleIdToHtmlNameMap[44] = "<font color=\"" + GetFixedUpColor(COLOR_Neutral) + "\">Neutral <font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Killing</b></font></font>";
         m_randomRoleIdToHtmlNameMap[45] = "<font color=\"" + GetFixedUpColor(COLOR_Any) + "\"><b>Any</b></font>";
         m_randomRoleIdToHtmlNameMap[63] = "<font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Random <font color=\"#32CD32\">Town</b></font></font>";
         m_randomRoleIdToHtmlNameMap[64] = "<font color=\"" + GetFixedUpColor(COLOR_Town) + "\">Town <font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Investigative</b></font></font>";
         m_randomRoleIdToHtmlNameMap[65] = "<font color=\"" + GetFixedUpColor(COLOR_Town) + "\">Town <font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Protective</b></font></font>";
         m_randomRoleIdToHtmlNameMap[66] = "<font color=\"" + GetFixedUpColor(COLOR_Town) + "\">Town <font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Killing</b></font></font>";
         m_randomRoleIdToHtmlNameMap[67] = "<font color=\"" + GetFixedUpColor(COLOR_Town) + "\">Town <font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Support</b></font></font>";
         m_randomRoleIdToHtmlNameMap[68] = "<font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Random <font color=\"" + GetFixedUpColor(COLOR_Mafia) + "\">Mafia</b></font></font>";
         m_randomRoleIdToHtmlNameMap[69] = "<font color=\"" + GetFixedUpColor(COLOR_Mafia) + "\">Mafia <font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Support</b></font></font>";
         m_randomRoleIdToHtmlNameMap[70] = "<font color=\"" + GetFixedUpColor(COLOR_Mafia) + "\">Mafia <font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Deception</b></font></font>";
         m_randomRoleIdToHtmlNameMap[71] = "<font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Random <font color=\"" + GetFixedUpColor(COLOR_Neutral) + "\">Neutral</b></font></font>";
         m_randomRoleIdToHtmlNameMap[72] = "<font color=\"" + GetFixedUpColor(COLOR_Neutral) + "\">Neutral <font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Benign</font>";
         m_randomRoleIdToHtmlNameMap[73] = "<font color=\"" + GetFixedUpColor(COLOR_Neutral) + "\">Neutral <font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Evil</b></font></font>";
         m_randomRoleIdToHtmlNameMap[62] = "<font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Random <font color=\"" + COLOR_Coven.replace("\'","") + "\">Coven</b></font></font>";
         m_randomRoleIdToHtmlNameMap[74] = "<font color=\"" + GetFixedUpColor(COLOR_Neutral) + "\">Neutral <font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Killing</b></font></font>";
         m_randomRoleIdToHtmlNameMap[76] = "<font color=\"" + GetFixedUpColor(COLOR_Neutral) + "\">Neutral <font color=\"" + GetFixedUpColor(COLOR_Random) + "\">Chaos</b></font></font>";
         m_randomRoleIdToHtmlNameMap[75] = "<font color=\"" + GetFixedUpColor(COLOR_Any) + "\"><b>Any</b></font>";
      }
      
      public function Roles()
      {
         super();
      }
      
      private static function GetFixedUpColor(param1:String) : String
      {
         return param1.replace("\'","");
      }
      
      public static function GetRoleNameStrippedOfSpaces(param1:uint) : String
      {
         return GetRoleNameByID(param1).split(" ").join("");
      }
      
      public static function GetRoleNameByID(param1:uint) : String
      {
         if(param1 == 200)
         {
            return LocalizationManager.GetGuiEntry("Cleaned").text;
         }
         if(param1 == 201)
         {
            return LocalizationManager.GetGuiEntry("Stoned").text;
         }
         return m_roleIdToNameMap[param1] || "ERROR!";
      }
      
      public static function GetRoleNameMap() : Dictionary
      {
         return m_roleIdToNameMap;
      }
      
      public static function IsRoleHiddenFromRoleWheel(param1:uint) : Boolean
      {
         if(m_RoleIdToHiddenWheelRoleName[param1])
         {
            return true;
         }
         return false;
      }
      
      public static function GetHiddenRoleWheelNameByID(param1:uint) : String
      {
         if(m_RoleIdToHiddenWheelRoleName[param1])
         {
            return m_RoleIdToHiddenWheelRoleName[param1];
         }
         return "";
      }
      
      public static function GetRoleColorByID(param1:uint) : String
      {
         return m_roleIdToColorMap[param1] || "\'#FFFFFF\'";
      }
      
      public static function GetRoleFunctionColorByID(param1:uint) : String
      {
         if(IsMafiaRole(param1))
         {
            return COLOR_Mafia;
         }
         if(IsTownRole(param1))
         {
            return COLOR_Town;
         }
         if(IsWitchRole(param1))
         {
            return COLOR_Coven;
         }
         return COLOR_Neutral;
      }
      
      public static function GetRoleNameAndColorByID(param1:uint) : String
      {
         if(m_randomRoleIdToHtmlNameMap[param1])
         {
            return m_randomRoleIdToHtmlNameMap[param1];
         }
         return "<font color=" + GetRoleColorByID(param1) + ">" + GetRoleNameByID(param1) + "</font>";
      }
      
      public static function DetermineRoleCount(param1:Array, param2:int) : Vector.<Number>
      {
         var _loc7_:int = 0;
         var _loc11_:int = 0;
         var _loc9_:int = 0;
         var _loc6_:* = NaN;
         var _loc10_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = undefined;
         var _loc8_:Vector.<Number> = new Vector.<Number>(77,true);
         _loc7_ = 0;
         while(_loc7_ < 77)
         {
            _loc8_[_loc7_] = 0;
            _loc7_++;
         }
         _loc11_ = 0;
         while(_loc11_ < param1.length)
         {
            _loc9_ = 0;
            _loc6_ = 0;
            _loc10_ = 0;
            _loc3_ = 0;
            _loc4_ = param1[_loc11_];
            if(m_bucketToListMap.hasOwnProperty(_loc4_))
            {
               _loc5_ = m_bucketToListMap[_loc4_];
               _loc6_ = Number(1 / _loc5_.length);
               _loc9_ = 0;
               while(_loc9_ < _loc5_.length)
               {
                  _loc10_ = _loc5_[_loc9_];
                  var _loc12_:* = _loc10_;
                  var _loc13_:* = _loc8_[_loc12_] + _loc6_;
                  _loc8_[_loc12_] = _loc13_;
                  _loc9_++;
               }
            }
            else
            {
               _loc13_ = param1[_loc11_];
               _loc12_ = _loc8_[_loc13_] + 1;
               _loc8_[_loc13_] = _loc12_;
            }
            _loc11_++;
         }
         return _loc8_;
      }
      
      public static function IsTownRole(param1:int) : Boolean
      {
         return COVEN_RANDOM_TOWN_LIST.indexOf(param1) >= 0;
      }
      
      public static function IsMafiaRole(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:Boolean = false;
         _loc2_ = 0;
         while(_loc2_ < Roles.COVEN_RANDOM_MAFIA_LIST.length)
         {
            if(Roles.COVEN_RANDOM_MAFIA_LIST[_loc2_] == param1)
            {
               _loc3_ = true;
               break;
            }
            _loc2_++;
         }
         if(_loc3_ || param1 >= 38 && param1 <= 40)
         {
            trace("IsMafiaRole role id (" + param1 + ") is mafia");
            return true;
         }
         return false;
      }
      
      public static function IsWitchRole(param1:int) : Boolean
      {
         return COVEN_RANDOM_COVEN_LIST.indexOf(param1) >= 0;
      }
      
      public static function RoleUsesDeathNote(param1:int) : Boolean
      {
         if(param1 == 21 || param1 == 23 || param1 == 51 || param1 == 28 || param1 == 25 || param1 == 31 || param1 == 100 || param1 == 53 || param1 == 55 || param1 == 60 || param1 == 61 || param1 == 57 || param1 == 4)
         {
            return true;
         }
         return false;
      }
      
      public static function IsKillingRole(param1:int) : Boolean
      {
         if(param1 == 23 || param1 == 21 || Roles.COVEN_TOWN_KILLING_LIST.indexOf(param1) > 0 || Roles.COVEN_NEUTRAL_KILLING_LIST.indexOf(param1) > 0 || param1 == 57 || param1 == 60 || param1 == 59 || param1 == 56 || param1 == 55)
         {
            return true;
         }
         return false;
      }
      
      public static function IsNeutralRole(param1:int) : Boolean
      {
         return COVEN_RANDOM_NEUTRAL_LIST.indexOf(param1) >= 0 || param1 == 53;
      }
   }
}
