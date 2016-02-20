package com.tencent.mm.sdk.message;

import android.content.Context;
import android.database.Cursor;
import com.tencent.mm.sdk.platformtools.Util;
import com.tencent.mm.sdk.storage.ISQLiteDatabase;
import com.tencent.mm.sdk.storage.MStorage;

public class RMsgInfoStorage
  extends MStorage
{
  public static final String AUTHORITY = "com.tencent.mm.sdk.msginfo.provider";
  public static final String PRIMARY_KEY = "msgId";
  ISQLiteDatabase P = null;
  
  private RMsgInfoStorage(ISQLiteDatabase paramISQLiteDatabase)
  {
    this.P = paramISQLiteDatabase;
  }
  
  public static RMsgInfoStorage create(Context paramContext)
  {
    return new RMsgInfoStorage(new RMsgInfoDB(paramContext));
  }
  
  public int doDelete(long paramLong)
  {
    int i = this.P.delete("message", "msgId=?", new String[] { String.valueOf(paramLong) });
    if (i > 0) {
      notify();
    }
    return i;
  }
  
  public long doInsert(RMsgInfo paramRMsgInfo)
  {
    long l1;
    if ((paramRMsgInfo == null) || (Util.isNullOrNil(paramRMsgInfo.field_talker))) {
      l1 = -1L;
    }
    long l2;
    do
    {
      return l1;
      paramRMsgInfo = paramRMsgInfo.convertTo();
      l2 = this.P.insert("message", "msgId", paramRMsgInfo);
      l1 = l2;
    } while (l2 <= 0L);
    notify();
    return l2;
  }
  
  public int doUpdate(long paramLong, RMsgInfo paramRMsgInfo)
  {
    int i;
    if ((paramRMsgInfo == null) || (Util.isNullOrNil(paramRMsgInfo.field_talker))) {
      i = -1;
    }
    int j;
    do
    {
      return i;
      paramRMsgInfo = paramRMsgInfo.convertTo();
      j = this.P.update("message", paramRMsgInfo, "msgId=?", new String[] { String.valueOf(paramLong) });
      i = j;
    } while (j <= 0);
    notify();
    return j;
  }
  
  public RMsgInfo getMsgById(long paramLong)
  {
    Cursor localCursor = this.P.query("message", null, "msgId=?", new String[] { String.valueOf(paramLong) }, null, null, null);
    if (localCursor == null) {
      return null;
    }
    if (localCursor.getCount() == 0)
    {
      localCursor.close();
      return null;
    }
    RMsgInfo localRMsgInfo = new RMsgInfo();
    localRMsgInfo.convertFrom(localCursor);
    return localRMsgInfo;
  }
  
  public Cursor getMsgByTalker(String paramString)
  {
    return this.P.query("message", null, "talker=?", new String[] { paramString }, null, null, null);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/message/RMsgInfoStorage.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */