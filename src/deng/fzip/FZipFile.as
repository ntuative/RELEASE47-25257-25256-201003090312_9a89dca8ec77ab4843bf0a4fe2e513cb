package deng.fzip
{
   import deng.utils.ChecksumUtil;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const const_696:int = 8;
      
      public static const const_1500:int = 10;
      
      public static const const_1273:int = 6;
      
      private static var var_1082:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").hasComplexContent();
      
      public static const const_1155:int = 0;
      
      public static const const_1498:int = 1;
      
      public static const const_1488:int = 2;
      
      public static const const_1536:int = 3;
      
      public static const const_1472:int = 4;
      
      public static const const_1494:int = 5;
      
      public static const const_1468:int = 9;
      
      public static const const_1452:int = 7;
       
      
      private var var_177:uint = 0;
      
      private var var_1081:uint = 0;
      
      private var var_742:Date;
      
      private var var_2219:int = -1;
      
      private var parseFunc:Function;
      
      private var var_520:Boolean = false;
      
      private var var_2329:int = -1;
      
      private var var_1343:uint = 0;
      
      private var var_2217:String = "";
      
      private var _extraFields:Dictionary;
      
      private var var_914:uint;
      
      private var var_22:ByteArray;
      
      private var var_741:uint;
      
      private var var_1577:Boolean = false;
      
      private var var_2330:int = -1;
      
      private var var_1575:String = "2.0";
      
      private var var_176:Boolean = false;
      
      private var var_2218:Boolean = false;
      
      private var var_362:String;
      
      private var var_611:uint = 0;
      
      private var var_1342:int = 0;
      
      private var var_431:String = "";
      
      private var var_743:int = 8;
      
      private var var_1576:Boolean = false;
      
      public function FZipFile(param1:String = "utf-8")
      {
         parseFunc = parseFileHead;
         super();
         var_362 = param1;
         _extraFields = new Dictionary();
         var_22 = new ByteArray();
         var_22.endian = Endian.BIG_ENDIAN;
      }
      
      public function get sizeUncompressed() : uint
      {
         return var_611;
      }
      
      public function set filename(param1:String) : void
      {
         var_431 = param1;
      }
      
      protected function uncompress() : void
      {
         if(var_176 && false)
         {
            var_22.position = 0;
            if(var_1082)
            {
               var_22.uncompress.apply(var_22,["deflate"]);
            }
            else
            {
               var_22.uncompress();
            }
            var_22.position = 0;
            var_176 = false;
         }
      }
      
      public function get filename() : String
      {
         return var_431;
      }
      
      public function get date() : Date
      {
         return var_742;
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && parseFunc(param1))
         {
         }
         return parseFunc === parseFileIdle;
      }
      
      private function parseFileContent(param1:IDataInput) : Boolean
      {
         if(var_1576)
         {
            parseFunc = parseFileIdle;
            throw new Error("Data descriptors are not supported.");
         }
         if(var_177 == 0)
         {
            parseFunc = parseFileIdle;
         }
         else
         {
            if(param1.bytesAvailable < var_177)
            {
               return false;
            }
            parseContent(param1);
            parseFunc = parseFileIdle;
         }
         return true;
      }
      
      public function get versionNumber() : String
      {
         return var_1575;
      }
      
      public function getContentAsString(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:* = null;
         if(var_176)
         {
            uncompress();
         }
         var_22.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = var_22.readUTFBytes(var_22.bytesAvailable);
         }
         else
         {
            _loc3_ = var_22.readMultiByte(var_22.bytesAvailable,param2);
         }
         var_22.position = 0;
         if(param1)
         {
            compress();
         }
         return _loc3_;
      }
      
      private function parseFileIdle(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseContent(param1:IDataInput) : void
      {
         var _loc2_:* = 0;
         if(var_743 === const_696 && !var_1577)
         {
            if(var_1082)
            {
               param1.readBytes(var_22,0,var_177);
            }
            else
            {
               if(!var_520)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               var_22.writeByte(120);
               _loc2_ = uint(~var_2219 << 6 & 192);
               _loc2_ += 31 - (30720 | _loc2_) % 31;
               var_22.writeByte(_loc2_);
               param1.readBytes(var_22,2,var_177);
               var_22.position = var_22.length;
               var_22.writeUnsignedInt(var_914);
            }
            var_176 = true;
         }
         else
         {
            if(var_743 != const_1155)
            {
               throw new Error("Compression method " + var_743 + " is not supported.");
            }
            param1.readBytes(var_22,0,var_177);
            var_176 = false;
         }
         var_22.position = 0;
      }
      
      private function parseFileHead(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            parseHead(param1);
            if(var_1081 + var_1343 > 0)
            {
               parseFunc = parseFileHeadExt;
            }
            else
            {
               parseFunc = parseFileContent;
            }
            return true;
         }
         return false;
      }
      
      public function setContentAsString(param1:String, param2:String = "utf-8") : void
      {
         var_22.length = 0;
         var_22.position = 0;
         var_176 = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               var_22.writeUTFBytes(param1);
            }
            else
            {
               var_22.writeMultiByte(param1,param2);
            }
            var_741 = ChecksumUtil.CRC32(var_22);
            var_520 = false;
         }
         compress();
      }
      
      public function set date(param1:Date) : void
      {
         var_742 = param1 != null ? param1 : new Date();
      }
      
      public function serialize(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc10_:* = null;
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         if(param1 == null)
         {
            return 0;
         }
         if(param3)
         {
            param1.writeUnsignedInt(33639248);
            param1.writeShort(var_1342 << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(67324752);
         }
         param1.writeShort(var_1342 << 8 | 20);
         param1.writeShort(var_362 == "utf-8" ? 2048 : 0);
         param1.writeShort(const_696);
         var _loc5_:Date = var_742 != null ? var_742 : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(var_741);
         param1.writeUnsignedInt(var_177);
         param1.writeUnsignedInt(var_611);
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.endian = Endian.LITTLE_ENDIAN;
         if(var_362 == "utf-8")
         {
            _loc8_.writeUTFBytes(var_431);
         }
         else
         {
            _loc8_.writeMultiByte(var_431,var_362);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in _extraFields)
         {
            _loc15_ = _extraFields[_loc10_] as ByteArray;
            if(_loc15_ != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!var_520)
            {
               _loc16_ = var_176;
               if(_loc16_)
               {
                  uncompress();
               }
               var_914 = ChecksumUtil.Adler32(var_22,0,var_22.length);
               var_520 = true;
               if(_loc16_)
               {
                  compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(var_914);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && false)
         {
            if(var_362 == "utf-8")
            {
               _loc8_.writeUTFBytes(var_2217);
            }
            else
            {
               _loc8_.writeMultiByte(var_2217,var_362);
            }
         }
         var _loc12_:uint = _loc8_.position - _loc9_ - _loc11_;
         param1.writeShort(_loc9_);
         param1.writeShort(_loc11_);
         if(param3)
         {
            param1.writeShort(_loc12_);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeUnsignedInt(0);
            param1.writeUnsignedInt(param4);
         }
         if(_loc9_ + _loc11_ + _loc12_ > 0)
         {
            param1.writeBytes(_loc8_);
         }
         var _loc13_:int = 0;
         if(!param3 && var_177 > 0)
         {
            if(var_1082)
            {
               _loc13_ = 0;
               param1.writeBytes(var_22,0,_loc13_);
            }
            else
            {
               _loc13_ = 4294967290;
               param1.writeBytes(var_22,2,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      public function get sizeCompressed() : uint
      {
         return var_177;
      }
      
      protected function compress() : void
      {
         if(!var_176)
         {
            if(false)
            {
               var_22.position = 0;
               var_611 = var_22.length;
               if(var_1082)
               {
                  var_22.compress.apply(var_22,["deflate"]);
                  var_177 = var_22.length;
               }
               else
               {
                  var_22.compress();
                  var_177 = -6;
               }
               var_22.position = 0;
               var_176 = true;
            }
            else
            {
               var_177 = 0;
               var_611 = 0;
            }
         }
      }
      
      private function parseFileHeadExt(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= var_1081 + var_1343)
         {
            parseHeadExt(param1);
            parseFunc = parseFileContent;
            return true;
         }
         return false;
      }
      
      protected function parseHeadExt(param1:IDataInput) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         if(var_362 == "utf-8")
         {
            var_431 = param1.readUTFBytes(var_1081);
         }
         else
         {
            var_431 = param1.readMultiByte(var_1081,var_362);
         }
         var _loc2_:uint = var_1343;
         while(_loc2_ > 4)
         {
            _loc3_ = uint(param1.readUnsignedShort());
            _loc4_ = uint(param1.readUnsignedShort());
            if(_loc4_ > _loc2_)
            {
               throw new Error("Parse error in file " + var_431 + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               var_914 = param1.readUnsignedInt();
               var_520 = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               _extraFields[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      protected function parseHead(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         var_1342 = _loc2_ >> 8;
         var_1575 = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         var_743 = param1.readUnsignedShort();
         var_1577 = (_loc3_ & 1) !== 0;
         var_1576 = (_loc3_ & 8) !== 0;
         var_2218 = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            var_362 = "utf-8";
         }
         if(var_743 === const_1273)
         {
            var_2330 = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            var_2329 = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(var_743 === const_696)
         {
            var_2219 = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         var_742 = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         var_741 = param1.readUnsignedInt();
         var_177 = param1.readUnsignedInt();
         var_611 = param1.readUnsignedInt();
         var_1081 = param1.readUnsignedShort();
         var_1343 = param1.readUnsignedShort();
      }
      
      public function set content(param1:ByteArray) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(var_22,0,param1.length);
            var_741 = ChecksumUtil.CRC32(var_22);
            var_520 = false;
         }
         else
         {
            var_22.length = 0;
            var_22.position = 0;
            var_176 = false;
         }
         compress();
      }
      
      public function toString() : String
      {
         return "[FZipFile]\n  name:" + var_431 + "\n  date:" + var_742 + "\n  sizeCompressed:" + var_177 + "\n  sizeUncompressed:" + var_611 + "\n  versionHost:" + var_1342 + "\n  versionNumber:" + var_1575 + "\n  compressionMethod:" + var_743 + "\n  encrypted:" + var_1577 + "\n  hasDataDescriptor:" + var_1576 + "\n  hasCompressedPatchedData:" + var_2218 + "\n  filenameEncoding:" + var_362 + "\n  crc32:" + var_741.toString(16) + "\n  adler32:" + var_914.toString(16);
      }
      
      public function get content() : ByteArray
      {
         if(var_176)
         {
            uncompress();
         }
         return var_22;
      }
   }
}
