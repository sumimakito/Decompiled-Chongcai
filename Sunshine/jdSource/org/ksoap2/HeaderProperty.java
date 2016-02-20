package org.ksoap2;

public class HeaderProperty
{
  private String key;
  private String value;
  
  public HeaderProperty(String paramString1, String paramString2)
  {
    this.key = paramString1;
    this.value = paramString2;
  }
  
  public String getKey()
  {
    return this.key;
  }
  
  public String getValue()
  {
    return this.value;
  }
  
  public void setKey(String paramString)
  {
    this.key = paramString;
  }
  
  public void setValue(String paramString)
  {
    this.value = paramString;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/ksoap2/HeaderProperty.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */