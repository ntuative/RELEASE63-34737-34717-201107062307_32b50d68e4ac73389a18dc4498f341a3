package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_942:BigInteger;
      
      private var var_2355:BigInteger;
      
      private var var_1755:BigInteger;
      
      private var var_2356:BigInteger;
      
      private var var_1463:BigInteger;
      
      private var var_1754:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1463 = param1;
         this.var_1754 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1463.toString() + ",generator: " + this.var_1754.toString() + ",secret: " + param1);
         this.var_942 = new BigInteger();
         this.var_942.fromRadix(param1,param2);
         this.var_2355 = this.var_1754.modPow(this.var_942,this.var_1463);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1755 = new BigInteger();
         this.var_1755.fromRadix(param1,param2);
         this.var_2356 = this.var_1755.modPow(this.var_942,this.var_1463);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2355.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2356.toRadix(param1);
      }
   }
}
