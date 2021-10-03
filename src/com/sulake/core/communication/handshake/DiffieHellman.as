package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1223:BigInteger;
      
      private var var_693:BigInteger;
      
      private var var_1475:BigInteger;
      
      private var var_1474:BigInteger;
      
      private var var_1920:BigInteger;
      
      private var var_1649:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1223 = param1;
         var_1475 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1920.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1474 = new BigInteger();
         var_1474.fromRadix(param1,param2);
         var_1920 = var_1474.modPow(var_693,var_1223);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1649.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1223.toString() + ",generator: " + var_1475.toString() + ",secret: " + param1);
         var_693 = new BigInteger();
         var_693.fromRadix(param1,param2);
         var_1649 = var_1475.modPow(var_693,var_1223);
         return true;
      }
   }
}
