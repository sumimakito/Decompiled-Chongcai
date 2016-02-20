package com.sina.weibo.sdk.register.mobile;

import com.sina.weibo.sdk.exception.WeiboException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class CountryList
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  public List<Country> countries;
  
  public CountryList(String paramString)
  {
    initFromJsonStr(paramString);
  }
  
  private void initFromJsonStr(String paramString)
  {
    try
    {
      initFromJsonObject(new JSONObject(paramString));
      return;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public void initFromJsonObject(JSONObject paramJSONObject)
    throws WeiboException
  {
    for (;;)
    {
      int i;
      try
      {
        this.countries = new ArrayList();
        Iterator localIterator = paramJSONObject.keys();
        if (!localIterator.hasNext()) {
          return;
        }
        Object localObject1 = (String)localIterator.next();
        Object localObject2 = paramJSONObject.optJSONObject((String)localObject1);
        String str = ((JSONObject)localObject2).getString("code");
        JSONArray localJSONArray = ((JSONObject)localObject2).optJSONObject("rule").optJSONArray("mcc");
        localObject2 = new String[localJSONArray.length()];
        i = 0;
        if (i >= localJSONArray.length())
        {
          localObject1 = new Country((String)localObject1, str);
          ((Country)localObject1).setMccs((String[])localObject2);
          this.countries.add(localObject1);
          continue;
        }
        localObject2[i] = localJSONArray.getString(i);
      }
      catch (JSONException paramJSONObject)
      {
        paramJSONObject.printStackTrace();
        throw new WeiboException(paramJSONObject);
      }
      i += 1;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/register/mobile/CountryList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */