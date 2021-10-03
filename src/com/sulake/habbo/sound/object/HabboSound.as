package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1036:SoundChannel = null;
      
      private var var_869:Boolean;
      
      private var var_1035:Sound = null;
      
      private var var_650:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1035 = param1;
         var_1035.addEventListener(Event.COMPLETE,onComplete);
         var_650 = 1;
         var_869 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_869;
      }
      
      public function stop() : Boolean
      {
         var_1036.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_869 = false;
         var_1036 = var_1035.play(0);
         this.volume = var_650;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_650;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1036.position;
      }
      
      public function get length() : Number
      {
         return var_1035.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_650 = param1;
         if(var_1036 != null)
         {
            var_1036.soundTransform = new SoundTransform(var_650);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_869 = true;
      }
   }
}
