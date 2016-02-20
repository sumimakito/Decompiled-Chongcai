package com.tencent.mm.sdk.message;

import android.content.Context;
import android.net.Uri;
import com.tencent.mm.sdk.storage.ContentProviderDB;
import java.util.HashMap;
import java.util.Map;

public class RMsgInfoDB
  extends ContentProviderDB<RMsgInfoDB>
{
  private static final Map<String, Uri> O;
  public static final String TABLE = "message";
  
  static
  {
    HashMap localHashMap = new HashMap();
    O = localHashMap;
    localHashMap.put("message", Uri.parse("content://com.tencent.mm.sdk.msginfo.provider/message"));
  }
  
  public RMsgInfoDB(Context paramContext)
  {
    super(paramContext);
  }
  
  public Uri getUriFromTable(String paramString)
  {
    return (Uri)O.get(paramString);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/message/RMsgInfoDB.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */