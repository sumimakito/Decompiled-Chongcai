package com.tencent.mm.sdk.plugin;

import android.net.Uri;
import com.tencent.mm.sdk.storage.MAutoDBItem;
import java.lang.reflect.Field;

public class Profile
  extends MAutoDBItem
{
  public static final Uri CONTENT_URI = Uri.parse("content://com.tencent.mm.sdk.plugin.provider/profile");
  public static String[] columns = { "username", "bindqq", "bindmobile", "bindemail", "alias", "nickname", "signature", "province", "city", "weibo", "avatar" };
  private static final Field[] p = MAutoDBItem.getValidFields(Profile.class);
  public String field_alias;
  public String field_avatar;
  public String field_bindemail;
  public String field_bindmobile;
  public long field_bindqq;
  public String field_city;
  public String field_nickname;
  public String field_province;
  public String field_signature;
  public String field_username;
  public String field_weibo;
  
  protected Field[] fields()
  {
    return p;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/plugin/Profile.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */