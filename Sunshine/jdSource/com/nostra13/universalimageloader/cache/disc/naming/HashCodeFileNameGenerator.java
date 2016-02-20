package com.nostra13.universalimageloader.cache.disc.naming;

public class HashCodeFileNameGenerator
  implements FileNameGenerator
{
  public String generate(String paramString)
  {
    return String.valueOf(paramString.hashCode());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/nostra13/universalimageloader/cache/disc/naming/HashCodeFileNameGenerator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */