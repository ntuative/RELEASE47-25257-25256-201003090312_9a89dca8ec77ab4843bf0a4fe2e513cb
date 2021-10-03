package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_642:IAssetLoader;
      
      private var var_1293:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1293 = param1;
         var_642 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_642;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_642 != null)
            {
               if(true)
               {
                  var_642.dispose();
                  var_642 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1293;
      }
   }
}
