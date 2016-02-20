package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class WebpageObject
  extends BaseMediaObject
{
  public static final Parcelable.Creator<WebpageObject> CREATOR = new Parcelable.Creator()
  {
    public WebpageObject createFromParcel(Parcel paramAnonymousParcel)
    {
      return new WebpageObject(paramAnonymousParcel);
    }
    
    public WebpageObject[] newArray(int paramAnonymousInt)
    {
      return new WebpageObject[paramAnonymousInt];
    }
  };
  public static final String EXTRA_KEY_DEFAULTTEXT = "extra_key_defaulttext";
  public String defaultText;
  
  public WebpageObject() {}
  
  public WebpageObject(Parcel paramParcel)
  {
    super(paramParcel);
  }
  
  public boolean checkArgs()
  {
    return super.checkArgs();
  }
  
  public int getObjType()
  {
    return 5;
  }
  
  protected BaseMediaObject toExtraMediaObject(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {}
    try
    {
      this.defaultText = new JSONObject(paramString).optString("extra_key_defaulttext");
      return this;
    }
    catch (JSONException paramString) {}
    return this;
  }
  
  protected String toExtraMediaString()
  {
    try
    {
      Object localObject = new JSONObject();
      if (!TextUtils.isEmpty(this.defaultText)) {
        ((JSONObject)localObject).put("extra_key_defaulttext", this.defaultText);
      }
      localObject = ((JSONObject)localObject).toString();
      return (String)localObject;
    }
    catch (JSONException localJSONException) {}
    return "";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/api/WebpageObject.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */