package com.sulake.habbo.sound.trax
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.sound.IHabboSound;
   import com.sulake.habbo.sound.events.SoundCompleteEvent;
   import flash.events.IEventDispatcher;
   import flash.events.SampleDataEvent;
   import flash.events.TimerEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class TraxSequencer implements IHabboSound, IDisposable
   {
      
      private static const const_119:Number = 44100;
      
      private static const const_203:uint = 8192;
      
      private static const const_1675:uint = 88000;
      
      private static const const_1674:uint = 88000;
      
      private static const const_318:Vector.<int> = new Vector.<int>(const_203,true);
       
      
      private var _disposed:Boolean = false;
      
      private var _events:IEventDispatcher;
      
      private var var_961:Number;
      
      private var var_1088:Sound;
      
      private var var_475:SoundChannel;
      
      private var var_1350:TraxData;
      
      private var var_2057:Map;
      
      private var var_1152:Boolean;
      
      private var var_1766:int;
      
      private var var_1617:int = 0;
      
      private var var_230:uint;
      
      private var var_478:Array;
      
      private var var_2056:Boolean;
      
      private var var_703:Boolean = true;
      
      private var var_407:uint;
      
      private var var_1618:uint;
      
      private var var_1090:Boolean;
      
      private var var_880:Boolean;
      
      private var var_879:int;
      
      private var var_476:int;
      
      private var var_1089:int;
      
      private var var_569:int;
      
      private var var_702:Timer;
      
      private var var_477:Timer;
      
      private var var_1351:int = 0;
      
      private var var_2055:int = 0;
      
      public function TraxSequencer(param1:int, param2:TraxData, param3:Map, param4:IEventDispatcher)
      {
         this.var_1618 = uint(30);
         super();
         this._events = param4;
         this.var_1766 = param1;
         this.var_961 = 1;
         this.var_1088 = new Sound();
         this.var_475 = null;
         this.var_2057 = param3;
         this.var_1350 = param2;
         this.var_1152 = true;
         this.var_230 = 0;
         this.var_478 = [];
         this.var_2056 = false;
         this.var_407 = 0;
         this.var_703 = false;
         this.var_1090 = false;
         this.var_880 = false;
         this.var_879 = 0;
         this.var_476 = 0;
         this.var_1089 = 0;
         this.var_569 = 0;
      }
      
      public function set position(param1:Number) : void
      {
         this.var_230 = uint(param1 * const_119);
      }
      
      public function get volume() : Number
      {
         return this.var_961;
      }
      
      public function get position() : Number
      {
         return this.var_230 / const_119;
      }
      
      public function get ready() : Boolean
      {
         return this.var_1152;
      }
      
      public function set ready(param1:Boolean) : void
      {
         this.var_1152 = param1;
      }
      
      public function get finished() : Boolean
      {
         return this.var_703;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_476 / const_119;
      }
      
      public function set fadeOutSeconds(param1:Number) : void
      {
         this.var_476 = int(param1 * const_119);
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_879 / const_119;
      }
      
      public function set fadeInSeconds(param1:Number) : void
      {
         this.var_879 = int(param1 * const_119);
      }
      
      public function get traxData() : TraxData
      {
         return this.var_1350;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_961 = param1;
         if(this.var_475 != null)
         {
            this.var_475.soundTransform = new SoundTransform(this.var_961);
         }
      }
      
      public function get length() : Number
      {
         return this.var_407 / const_119;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.stopImmediately();
            this.var_1350 = null;
            this.var_2057 = null;
            this.var_478 = null;
            this._events = null;
            this.var_1088 = null;
            this._disposed = true;
         }
      }
      
      public function prepare() : Boolean
      {
         if(!this.var_1152)
         {
            Logger.log("Cannot start trax playback until samples ready!");
            return false;
         }
         if(!this.var_2056)
         {
            if(!this.prepareSequence())
            {
               Logger.log("Cannot start playback, prepare sequence failed!");
               return false;
            }
         }
         return true;
      }
      
      private function prepareSequence() : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:* = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         if(this.var_478 == null)
         {
            return false;
         }
         var _loc1_:uint = getTimer();
         var _loc2_:int = 0;
         while(_loc2_ < this.var_1350.channels.length)
         {
            _loc3_ = new Map();
            _loc4_ = this.var_1350.channels[_loc2_] as TraxChannel;
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            while(_loc7_ < _loc4_.itemCount)
            {
               _loc8_ = _loc4_.getItem(_loc7_).id;
               _loc9_ = this.var_2057.getValue(_loc8_) as TraxSample;
               _loc9_.setUsageFromSong(this.var_1766,_loc1_);
               if(_loc9_ == null)
               {
                  Logger.log("Error in prepareSequence(), sample was null!");
               }
               continue;
               _loc10_ = this.getSampleBars(_loc9_.length);
               _loc11_ = _loc4_.getItem(_loc7_).length / _loc10_;
               _loc12_ = 0;
               while(_loc12_ < _loc11_)
               {
                  if(_loc8_ != 0)
                  {
                     _loc3_.add(_loc5_,_loc9_);
                  }
                  _loc6_ += _loc10_;
                  _loc5_ = uint(_loc6_ * const_1674);
                  _loc12_++;
               }
               if(this.var_407 < _loc5_)
               {
                  this.var_407 = _loc5_;
               }
               _loc7_++;
               return false;
            }
            this.var_478.push(_loc3_);
            _loc2_++;
         }
         this.var_2056 = true;
         return true;
      }
      
      public function play(param1:Number = 0.0) : Boolean
      {
         if(!this.prepare())
         {
            return false;
         }
         this.removeFadeoutStopTimer();
         if(this.var_475 != null)
         {
            this.stopImmediately();
         }
         if(this.var_879 > 0)
         {
            this.var_1090 = true;
            this.var_1089 = 0;
         }
         this.var_880 = false;
         this.var_569 = 0;
         this.var_703 = false;
         this.var_1088.addEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
         this.var_1617 = param1 * const_119;
         this.var_1351 = 0;
         this.var_2055 = 0;
         this.var_475 = this.var_1088.play();
         this.volume = this.var_961;
         return true;
      }
      
      public function render(param1:SampleDataEvent) : Boolean
      {
         if(!this.prepare())
         {
            return false;
         }
         while(!this.var_703)
         {
            this.onSampleData(param1);
         }
         return true;
      }
      
      public function stop() : Boolean
      {
         if(this.var_476 > 0 && !this.var_703)
         {
            this.stopWithFadeout();
         }
         else
         {
            this.playingComplete();
         }
         return true;
      }
      
      private function stopImmediately() : void
      {
         this.removeStopTimer();
         if(this.var_475 != null)
         {
            this.var_475.stop();
            this.var_475 = null;
         }
         if(this.var_1088 != null)
         {
            this.var_1088.removeEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
         }
      }
      
      private function stopWithFadeout() : void
      {
         if(this.var_702 == null)
         {
            this.var_880 = true;
            this.var_569 = 0;
            this.var_702 = new Timer(this.var_1618 + this.var_476 / (const_119 / 1000),1);
            this.var_702.start();
            this.var_702.addEventListener(TimerEvent.TIMER_COMPLETE,this.onFadeOutComplete);
         }
      }
      
      private function getSampleBars(param1:uint) : int
      {
         return Math.ceil(param1 / const_1675);
      }
      
      private function getChannelSequenceOffsets() : Array
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc1_:* = [];
         if(this.var_478 != null)
         {
            _loc2_ = this.var_478.length;
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc4_ = this.var_478[_loc3_];
               _loc5_ = 0;
               while(_loc5_ < _loc4_.length && _loc4_.getKey(_loc5_) < this.var_230)
               {
                  _loc5_++;
               }
               _loc1_.push(_loc5_ - 1);
               _loc3_++;
            }
         }
         return _loc1_;
      }
      
      private function mixChannelsIntoBuffer() : void
      {
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         if(this.var_478 == null)
         {
            return;
         }
         var _loc1_:Array = this.getChannelSequenceOffsets();
         var _loc2_:int = this.var_478.length;
         var _loc3_:* = null;
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            _loc5_ = this.var_478[_loc4_];
            _loc6_ = _loc1_[_loc4_];
            _loc7_ = _loc5_.getWithIndex(_loc6_);
            if(_loc7_ == null)
            {
               _loc3_ = null;
            }
            else
            {
               _loc10_ = _loc5_.getKey(_loc6_);
               _loc11_ = this.var_230 - _loc10_;
               if(_loc7_.id == 0 || _loc11_ < 0)
               {
                  _loc3_ = null;
               }
               else
               {
                  _loc3_ = new TraxChannelSample(_loc7_,_loc11_);
               }
            }
            _loc8_ = const_203;
            if(this.var_407 - this.var_230 < _loc8_)
            {
               _loc8_ = this.var_407 - this.var_230;
            }
            _loc9_ = 0;
            while(_loc9_ < _loc8_)
            {
               _loc12_ = _loc8_;
               if(_loc6_ < _loc5_.length - 1)
               {
                  _loc13_ = _loc5_.getKey(_loc6_ + 1);
                  if(_loc8_ + this.var_230 >= _loc13_)
                  {
                     _loc12_ = _loc13_ - this.var_230;
                  }
               }
               if(_loc12_ > _loc8_ - _loc9_)
               {
                  _loc12_ = _loc8_ - _loc9_;
               }
               if(_loc4_ == _loc2_ - 1)
               {
                  if(_loc3_ != null)
                  {
                     _loc3_.setSample(const_318,_loc9_,_loc12_);
                     _loc9_ += _loc12_;
                  }
                  else
                  {
                     _loc14_ = 0;
                     while(_loc14_ < _loc12_)
                     {
                        var _loc15_:*;
                        const_318[_loc15_ = _loc9_++] = 0;
                        _loc14_++;
                     }
                  }
               }
               else
               {
                  if(_loc3_ != null)
                  {
                     _loc3_.addSample(const_318,_loc9_,_loc12_);
                  }
                  _loc9_ += _loc12_;
               }
               if(_loc9_ < _loc8_)
               {
                  _loc7_ = _loc5_.getWithIndex(++_loc6_);
                  if(_loc7_ == null || _loc7_.id == 0)
                  {
                     _loc3_ = null;
                  }
                  else
                  {
                     _loc3_ = new TraxChannelSample(_loc7_,0);
                  }
               }
            }
            _loc4_--;
         }
      }
      
      private function checkSongFinishing() : void
      {
         var _loc1_:int = this.var_407 < this.var_1617 ? int(this.var_407) : (this.var_1617 > 0 ? int(this.var_1617) : int(this.var_407));
         if(this.var_230 > _loc1_ + this.var_1618 * (const_119 / 1000) && !this.var_703)
         {
            this.var_703 = true;
            if(this.var_477 != null)
            {
               this.var_477.reset();
               this.var_477.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onPlayingComplete);
            }
            this.var_477 = new Timer(2,1);
            this.var_477.start();
            this.var_477.addEventListener(TimerEvent.TIMER_COMPLETE,this.onPlayingComplete);
         }
         else if(this.var_230 > _loc1_ - this.var_476 && !this.var_880)
         {
            this.var_1090 = false;
            this.var_880 = true;
            this.var_569 = 0;
         }
      }
      
      private function onSampleData(param1:SampleDataEvent) : void
      {
         if(param1.position > this.var_1351)
         {
            ++this.var_2055;
            Logger.log("Audio buffer under run...");
            this.var_1351 = param1.position;
         }
         if(this.volume > 0)
         {
            this.mixChannelsIntoBuffer();
         }
         var _loc2_:int = const_203;
         if(this.var_407 - this.var_230 < _loc2_)
         {
            _loc2_ = this.var_407 - this.var_230;
            if(_loc2_ < 0)
            {
               _loc2_ = 0;
            }
         }
         if(this.volume <= 0)
         {
            _loc2_ = 0;
         }
         this.writeAudioToOutputStream(param1.data,_loc2_);
         this.var_230 += const_203;
         this.var_1351 += const_203;
         if(this.var_475 != null)
         {
            this.var_1618 = param1.position / const_119 * 1000 - this.var_475.position;
         }
         this.checkSongFinishing();
      }
      
      private function writeAudioToOutputStream(param1:ByteArray, param2:int) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(param2 > 0)
         {
            if(!this.var_1090 && !this.var_880)
            {
               this.writeMixingBufferToOutputStream(param1,param2);
            }
            else
            {
               if(this.var_1090)
               {
                  _loc5_ = 1 / this.var_879;
                  _loc6_ = this.var_1089 / Number(this.var_879);
                  this.var_1089 += const_203;
                  if(this.var_1089 > this.var_879)
                  {
                     this.var_1090 = false;
                  }
               }
               else if(this.var_880)
               {
                  _loc5_ = -1 / this.var_476;
                  _loc6_ = 1 - this.var_569 / Number(this.var_476);
                  this.var_569 += const_203;
                  if(this.var_569 > this.var_476)
                  {
                     this.var_569 = this.var_476;
                  }
               }
               this.writeMixingBufferToOutputStreamWithFade(param1,param2,_loc6_,_loc5_);
            }
         }
         var _loc4_:int = param2;
         while(_loc4_ < const_203)
         {
            param1.writeFloat(0);
            param1.writeFloat(0);
            _loc4_++;
         }
      }
      
      private function writeMixingBufferToOutputStream(param1:ByteArray, param2:int) : void
      {
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = Number(Number(const_318[_loc4_]) * 0);
            param1.writeFloat(_loc3_);
            param1.writeFloat(_loc3_);
            _loc4_++;
         }
      }
      
      private function writeMixingBufferToOutputStreamWithFade(param1:ByteArray, param2:int, param3:Number, param4:Number) : void
      {
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         _loc6_ = 0;
         while(_loc6_ < param2)
         {
            if(param3 < 0 || param3 > 1)
            {
               break;
            }
            _loc5_ = Number(Number(const_318[_loc6_]) * 0 * param3);
            param3 += param4;
            param1.writeFloat(_loc5_);
            param1.writeFloat(_loc5_);
            _loc6_++;
         }
         if(param3 < 0)
         {
            while(_loc6_ < param2)
            {
               param1.writeFloat(0);
               param1.writeFloat(0);
               _loc6_++;
            }
         }
         else if(param3 > 1)
         {
            while(_loc6_ < param2)
            {
               _loc5_ = Number(Number(const_318[_loc6_]) * 0);
               param3 += param4;
               param1.writeFloat(_loc5_);
               param1.writeFloat(_loc5_);
               _loc6_++;
            }
         }
      }
      
      private function onPlayingComplete(param1:TimerEvent) : void
      {
         if(this.var_703)
         {
            this.playingComplete();
         }
      }
      
      private function onFadeOutComplete(param1:TimerEvent) : void
      {
         this.removeFadeoutStopTimer();
         this.playingComplete();
      }
      
      private function playingComplete() : void
      {
         this.stopImmediately();
         this._events.dispatchEvent(new SoundCompleteEvent(SoundCompleteEvent.TRAX_SONG_COMPLETE,this.var_1766));
      }
      
      private function removeFadeoutStopTimer() : void
      {
         if(this.var_702 != null)
         {
            this.var_702.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onFadeOutComplete);
            this.var_702.reset();
            this.var_702 = null;
         }
      }
      
      private function removeStopTimer() : void
      {
         if(this.var_477 != null)
         {
            this.var_477.reset();
            this.var_477.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onPlayingComplete);
            this.var_477 = null;
         }
      }
   }
}
