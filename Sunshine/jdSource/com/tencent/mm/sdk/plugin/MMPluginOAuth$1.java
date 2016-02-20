package com.tencent.mm.sdk.plugin;

class MMPluginOAuth$1
  implements Runnable
{
  MMPluginOAuth$1(MMPluginOAuth paramMMPluginOAuth) {}
  
  public void run()
  {
    if (MMPluginOAuth.b(this.bD) != null) {
      MMPluginOAuth.b(this.bD).onResult(this.bD);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/plugin/MMPluginOAuth$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */