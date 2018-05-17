package joshua.brittain.TownOfSalem.GameStage
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class GameStage extends EventDispatcher
   {
      
      public static const PICK_NAMES:uint = 1;
      
      public static const DAY:uint = 4;
      
      public static const DISCUSSION:uint = 5;
      
      public static const VOTING:uint = 6;
      
      public static const DEFENSE:uint = 7;
      
      public static const JUDGEMENT:uint = 8;
      
      public static const NIGHT:uint = 9;
      
      protected static var _instance:GameStage;
       
      
      protected var _gameStage:uint;
      
      public function GameStage()
      {
         super();
      }
      
      public static function get gameStage() : uint
      {
         return instance()._gameStage;
      }
      
      public static function set gameStage(param1:uint) : void
      {
         var _loc2_:GameStage = instance();
         _loc2_._gameStage = param1;
         _loc2_.dispatchEvent(new Event("change"));
      }
      
      public static function instance() : GameStage
      {
         if(!_instance)
         {
            _instance = new GameStage();
         }
         return _instance;
      }
   }
}
