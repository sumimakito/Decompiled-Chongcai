package com.tencent.mm.sdk.contact;

import android.content.Context;
import android.net.Uri;
import com.tencent.mm.sdk.storage.ContentProviderDB;
import java.util.HashMap;
import java.util.Map;

public class RContactDB
  extends ContentProviderDB<RContactDB>
{
  private static final Map<String, Uri> O;
  
  static
  {
    HashMap localHashMap = new HashMap();
    O = localHashMap;
    localHashMap.put("rcontact", Uri.parse("content://com.tencent.mm.sdk.contact.provider/rcontact"));
  }
  
  public RContactDB(Context paramContext)
  {
    super(paramContext);
  }
  
  public Uri getUriFromTable(String paramString)
  {
    return (Uri)O.get(paramString);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/contact/RContactDB.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */