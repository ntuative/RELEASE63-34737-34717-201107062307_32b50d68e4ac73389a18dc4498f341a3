package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2163:int = 0;
      
      public static const const_1978:int = 1;
      
      public static const const_1892:int = 2;
      
      public static const const_2143:int = 3;
      
      public static const const_2213:int = 4;
      
      public static const const_2217:int = 5;
      
      public static const const_2008:int = 10;
      
      public static const const_2270:int = 11;
      
      public static const const_2323:int = 12;
      
      public static const const_2154:int = 13;
      
      public static const const_2221:int = 16;
      
      public static const const_2283:int = 17;
      
      public static const const_2110:int = 18;
      
      public static const const_2130:int = 19;
      
      public static const const_2284:int = 20;
      
      public static const const_2226:int = 22;
      
      public static const const_2242:int = 23;
      
      public static const const_2227:int = 24;
      
      public static const const_2305:int = 25;
      
      public static const const_2156:int = 26;
      
      public static const const_2292:int = 27;
      
      public static const const_2206:int = 28;
      
      public static const const_2335:int = 29;
      
      public static const const_2167:int = 100;
      
      public static const const_2194:int = 101;
      
      public static const const_2312:int = 102;
      
      public static const const_2114:int = 103;
      
      public static const const_2165:int = 104;
      
      public static const const_2152:int = 105;
      
      public static const const_2158:int = 106;
      
      public static const const_2298:int = 107;
      
      public static const const_2144:int = 108;
      
      public static const const_2189:int = 109;
      
      public static const const_2330:int = 110;
      
      public static const const_2218:int = 111;
      
      public static const const_2188:int = 112;
      
      public static const const_2268:int = 113;
      
      public static const const_2192:int = 114;
      
      public static const const_2187:int = 115;
      
      public static const const_2118:int = 116;
      
      public static const const_2255:int = 117;
      
      public static const const_2306:int = 118;
      
      public static const const_2203:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_9 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1978:
            case const_2008:
               return "banned";
            case const_1892:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
