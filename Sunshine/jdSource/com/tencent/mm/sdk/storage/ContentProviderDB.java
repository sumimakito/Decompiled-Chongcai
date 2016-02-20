package com.tencent.mm.sdk.storage;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import com.tencent.mm.sdk.platformtools.Log;

public abstract class ContentProviderDB<T>
  implements ISQLiteDatabase
{
  private final Context R;
  
  public ContentProviderDB(Context paramContext)
  {
    this.R = paramContext;
  }
  
  public int delete(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    Uri localUri = getUriFromTable(paramString1);
    if (localUri == null)
    {
      Log.e("MicroMsg.SDK.MContentProviderDB", "get uri from table failed, table=" + paramString1);
      return 0;
    }
    return this.R.getContentResolver().delete(localUri, paramString2, paramArrayOfString);
  }
  
  public boolean execSQL(String paramString1, String paramString2)
  {
    Log.e("MicroMsg.SDK.MContentProviderDB", "do not support, execSQL sql=" + paramString2);
    return false;
  }
  
  public abstract Uri getUriFromTable(String paramString);
  
  public long insert(String paramString1, String paramString2, ContentValues paramContentValues)
  {
    paramString2 = getUriFromTable(paramString1);
    if (paramString2 == null)
    {
      Log.e("MicroMsg.SDK.MContentProviderDB", "get uri from table failed, table=" + paramString1);
      return -1L;
    }
    return ContentUris.parseId(this.R.getContentResolver().insert(paramString2, paramContentValues));
  }
  
  public Cursor query(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5)
  {
    paramString3 = getUriFromTable(paramString1);
    if (paramString3 == null)
    {
      Log.e("MicroMsg.SDK.MContentProviderDB", "get uri from table failed, table=" + paramString1);
      paramString1 = new MatrixCursor(paramArrayOfString1);
    }
    do
    {
      return paramString1;
      paramString2 = this.R.getContentResolver().query(paramString3, paramArrayOfString1, paramString2, paramArrayOfString2, paramString5);
      paramString1 = paramString2;
    } while (paramString2 != null);
    return new MatrixCursor(paramArrayOfString1);
  }
  
  public Cursor rawQuery(String paramString, String[] paramArrayOfString)
  {
    Log.e("MicroMsg.SDK.MContentProviderDB", "do not support, rawQuery sql=" + paramString);
    return null;
  }
  
  public long replace(String paramString1, String paramString2, ContentValues paramContentValues)
  {
    Log.e("MicroMsg.SDK.MContentProviderDB", "do not support, replace table=" + paramString1);
    return 0L;
  }
  
  public int update(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString)
  {
    Uri localUri = getUriFromTable(paramString1);
    if (localUri == null)
    {
      Log.e("MicroMsg.SDK.MContentProviderDB", "get uri from table failed, table=" + paramString1);
      return 0;
    }
    return this.R.getContentResolver().update(localUri, paramContentValues, paramString2, paramArrayOfString);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/storage/ContentProviderDB.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */