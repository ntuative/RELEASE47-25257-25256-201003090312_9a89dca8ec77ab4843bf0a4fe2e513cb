package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1738:int;
      
      private var var_609:String;
      
      private var var_1731:int;
      
      private var var_1835:int;
      
      private var var_1733:int;
      
      private var var_2127:int;
      
      private var _nutrition:int;
      
      private var var_1282:int;
      
      private var var_2128:int;
      
      private var var_2130:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1729:int;
      
      private var var_2129:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1731;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2127;
      }
      
      public function flush() : Boolean
      {
         var_1282 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2128;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2130;
      }
      
      public function get maxNutrition() : int
      {
         return var_2129;
      }
      
      public function get figure() : String
      {
         return var_609;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1835;
      }
      
      public function get petId() : int
      {
         return var_1282;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1282 = param1.readInteger();
         _name = param1.readString();
         var_1731 = param1.readInteger();
         var_2128 = param1.readInteger();
         var_1733 = param1.readInteger();
         var_2130 = param1.readInteger();
         _energy = param1.readInteger();
         var_2127 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2129 = param1.readInteger();
         var_609 = param1.readString();
         var_1835 = param1.readInteger();
         var_1729 = param1.readInteger();
         var_1738 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1733;
      }
      
      public function get ownerId() : int
      {
         return var_1729;
      }
      
      public function get age() : int
      {
         return var_1738;
      }
   }
}
