package salem.utils.system
{
   import flash.utils.Dictionary;
   import joshua.brittain.Home.Event.ServerMessageEvent;
   import salem.utils.events.SalemEventDispatcher;
   
   public class SystemCommandController
   {
      
      public static var systemMessages:Dictionary = new Dictionary();
      
      public static var clientMessages:Dictionary = new Dictionary();
      
      public static var systemMessagesAreIntialized:Boolean = false;
      
      public static const kSystemPrefix:String = "/system ";
      
      public static const kClientPrefix:String = "/client ";
       
      
      public function SystemCommandController()
      {
         super();
         if(!systemMessagesAreIntialized)
         {
            InitializeSystemMessages();
            InitializeClientMessages();
         }
      }
      
      private function InitializeSystemMessages() : void
      {
         systemMessages["message"] = {"id":1};
         systemMessages["gamemessage"] = {"id":2};
         systemMessages["ban"] = {"id":3};
         systemMessages["identify"] = {"id":4};
         systemMessages["restart"] = {"id":5};
         systemMessages["cancelrestart"] = {"id":6};
         systemMessages["grantpoints"] = {"id":7};
         systemMessages["suspend"] = {"id":8};
         systemMessages["reloadxml"] = {
            "id":9,
            "code":1
         };
         systemMessages["whisper"] = {"id":10};
         systemMessages["unban"] = {"id":11};
         systemMessages["accountinfo"] = {"id":12};
         systemMessages["grantachievement"] = {"id":13};
         systemMessages["devlogin"] = {"id":14};
         systemMessages["requestpromotion"] = {"id":15};
         systemMessages["resetaccount"] = {
            "id":16,
            "code":1
         };
         systemMessages["grantcharacter"] = {"id":17};
         systemMessages["grantbackground"] = {"id":18};
         systemMessages["grantdeathanimation"] = {"id":19};
         systemMessages["granthouse"] = {"id":20};
         systemMessages["grantlobbyicon"] = {"id":21};
         systemMessages["grantpack"] = {"id":22};
         systemMessages["grantpet"] = {"id":23};
         systemMessages["grantscroll"] = {"id":24};
         systemMessages["resettutorialprogress"] = {
            "id":25,
            "code":1
         };
         systemMessages["reloadpromotionxml"] = {
            "id":26,
            "code":1
         };
         systemMessages["grantpromotion"] = {"id":27};
         systemMessages["setrole"] = {"id":28};
         systemMessages["grantaccountitem"] = {"id":29};
         systemMessages["forcenamechange"] = {"id":30};
         systemMessages["grantmerit"] = {"id":31};
         systemMessages["doubleglobalfreecurrencymultiplier"] = {
            "id":32,
            "append":"2"
         };
         systemMessages["resetglobalfreecurrencymultiplier"] = {
            "id":32,
            "append":"1"
         };
         systemMessages["grantReferAFriend"] = {"id":33};
         systemMessages["reloadcaches"] = {"id":34};
         systemMessages["resetcauldroncooldown"] = {
            "id":35,
            "code":1
         };
         systemMessages["toggletestpurchases"] = {"id":36};
         systemMessages["togglefreecoven"] = {
            "id":37,
            "code":1
         };
         systemMessages["toggleusercoven"] = {
            "id":38,
            "append":"2"
         };
         systemMessages["toggleuserwebpremium"] = {
            "id":38,
            "append":"4"
         };
         systemMessages["unlinksteam"] = {"id":39};
         systemMessages["unlinkcoven"] = {"id":40};
         systemMessages["grantcoven"] = {"id":41};
         systemMessages["grantwebpremium"] = {"id":42};
         systemMessages["kickuser"] = {"id":43};
      }
      
      private function InitializeClientMessages() : void
      {
         clientMessages["activeEvents"] = {"fn":ActiveEvents};
         clientMessages["serverMessage"] = {"fn":ServerMessage};
      }
      
      public function ProcessMessage(param1:String) : SystemCommandInfo
      {
         var _loc2_:SystemCommandInfo = new SystemCommandInfo();
         if(param1.search("/system ") == 0)
         {
            ProcessSystemMessage(_loc2_,param1.substr("/system ".length));
         }
         else if(param1.search("/client ") == 0)
         {
            ProcessClientMessage(_loc2_,param1.substr("/client ".length));
         }
         return _loc2_;
      }
      
      protected function ProcessSystemMessage(param1:SystemCommandInfo, param2:String) : void
      {
         param1.isSystemCommand = true;
         var _loc6_:Vector.<String> = parse(param2);
         var _loc5_:String = _loc6_[0];
         var _loc4_:String = _loc6_[1];
         var _loc3_:Object = systemMessages[_loc5_];
         if(_loc3_ == null)
         {
            param1.isValid = false;
            return;
         }
         param1.isValid = true;
         if(_loc3_.code != null)
         {
            _loc4_ = code(_loc3_.code);
         }
         else if(_loc3_.append != null)
         {
            _loc4_ = _loc3_.append;
         }
         param1.serverMessage = code(24) + code(_loc3_.id) + _loc4_ + code(0);
      }
      
      public function ProcessClientMessage(param1:SystemCommandInfo, param2:String) : void
      {
         a_info = param1;
         a_substring = param2;
         a_info.isClientCommand = true;
         var parts:Vector.<String> = parse(a_substring);
         var command:String = parts[0];
         var substring:String = parts[1];
         var message:Object = clientMessages[command];
         if(message == null)
         {
            a_info.isValid = false;
            return;
         }
         a_info.isValid = true;
         a_info.process = function():void
         {
            message.fn(substring);
         };
      }
      
      protected function code(param1:int) : String
      {
         return String.fromCharCode(param1);
      }
      
      protected function parse(param1:String) : Vector.<String>
      {
         var _loc4_:Vector.<String> = new Vector.<String>();
         var _loc5_:int = param1.search(" ");
         var _loc3_:String = _loc5_ == -1?param1:param1.substr(0,_loc5_);
         var _loc2_:String = _loc5_ == -1?"":param1.substr(_loc5_ + 1);
         _loc4_.push(_loc3_,_loc2_);
         return _loc4_;
      }
      
      protected function ActiveEvents(param1:String) : void
      {
         var _loc5_:int = 0;
         var _loc4_:* = null;
         var _loc3_:Array = param1.split(" ");
         var _loc2_:String = String.fromCharCode(195);
         _loc5_ = 0;
         while(_loc5_ < _loc3_.length)
         {
            if(_loc5_ > 0)
            {
               _loc2_ = _loc2_ + "*";
            }
            _loc4_ = _loc3_[_loc5_];
            if(_loc4_.length)
            {
               _loc2_ = _loc2_ + ("0," + _loc4_ + ",0,9999");
            }
            _loc5_++;
         }
         SalemEventDispatcher.GetInstance().dispatchEvent(new ServerMessageEvent("SERVER_MESSAGE",_loc2_));
      }
      
      protected function ServerMessage(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc4_:* = int(param1.indexOf("/"));
         var _loc3_:int = param1.indexOf("/",_loc4_ + 1);
         while(_loc3_ > _loc4_)
         {
            _loc2_ = param1.substring(_loc4_ + 1,_loc3_);
            if(_loc2_ > 0 && _loc2_ < 256)
            {
               param1 = param1.substring(0,_loc4_) + String.fromCharCode(_loc2_) + param1.substring(_loc3_ + 1);
               _loc4_ = int(param1.indexOf("/",_loc4_));
               _loc3_ = param1.indexOf("/",_loc4_ + 1);
            }
            else
            {
               _loc4_ = _loc3_;
               _loc3_ = param1.indexOf("/",_loc4_ + 1);
            }
         }
         SalemEventDispatcher.GetInstance().dispatchEvent(new ServerMessageEvent("SERVER_MESSAGE",param1));
      }
   }
}
