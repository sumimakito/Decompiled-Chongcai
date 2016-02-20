package com.tencent.mm.sdk.conversation;

import android.content.Context;
import com.tencent.mm.sdk.storage.ISQLiteDatabase;
import com.tencent.mm.sdk.storage.MAutoStorage;

public class RConversationStorage
  extends MAutoStorage<RConversation>
{
  public static final String AUTHORITY = "com.tencent.mm.sdk.conversation.provider";
  public static final String PRIMARY_KEY = "username";
  public static final String TABLE = "rconversation";
  
  private RConversationStorage(ISQLiteDatabase paramISQLiteDatabase)
  {
    super(paramISQLiteDatabase);
  }
  
  public static RConversationStorage create(Context paramContext)
  {
    return new RConversationStorage(new RConversationDB(paramContext));
  }
  
  public RConversation get(String paramString)
  {
    RConversation localRConversation = new RConversation();
    localRConversation.field_username = paramString;
    paramString = localRConversation;
    if (!super.get(localRConversation, new String[] { "username" })) {
      paramString = null;
    }
    return paramString;
  }
  
  public String[] getColumns()
  {
    return RConversation.COLUMNS;
  }
  
  public String getPrimaryKey()
  {
    return "username";
  }
  
  public String getTableName()
  {
    return "rconversation";
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/conversation/RConversationStorage.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */