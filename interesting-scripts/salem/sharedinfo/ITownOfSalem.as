package salem.sharedinfo
{
   import flash.display.DisplayObject;
   import flash.net.Socket;
   import salem.AccountOptions.AccountOptions;
   import salem.game.GameInfo;
   
   public interface ITownOfSalem
   {
       
      
      function LoadedByHome() : void;
      
      function InitializeSocket(param1:Socket, param2:String, param3:AccountOptions, param4:Boolean, param5:GameInfo) : void;
      
      function InitializeSoundSettings(param1:Boolean, param2:Number, param3:Boolean, param4:Number) : void;
      
      function AsDisplayObject() : DisplayObject;
      
      function Reset() : void;
   }
}
