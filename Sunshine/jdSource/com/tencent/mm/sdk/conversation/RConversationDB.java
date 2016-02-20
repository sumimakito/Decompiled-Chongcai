package com.tencent.mm.sdk.conversation;

import android.content.Context;
import android.net.Uri;
import com.tencent.mm.sdk.storage.ContentProviderDB;
import java.util.HashMap;
import java.util.Map;

public class RConversationDB
  extends ContentProviderDB<RConversationDB>
{
  private static final Map<String, Uri> O;
  
  static
  {
    HashMap localHashMap = new HashMap();
    O = localHashMap;
    localHashMap.put("rconversation", Uri.parse("content://com.tencent.mm.sdk.conversation.provider/rconversation"));
  }
  
  public RConversationDB(Context paramContext)
  {
    super(paramContext);
  }
  
  public Uri getUriFromTable(String paramString)
  {
    return (Uri)O.get(paramString);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/conversation/RConversationDB.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */