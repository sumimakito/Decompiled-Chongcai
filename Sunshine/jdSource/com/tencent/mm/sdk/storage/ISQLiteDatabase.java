package com.tencent.mm.sdk.storage;

import android.content.ContentValues;
import android.database.Cursor;

public abstract interface ISQLiteDatabase
{
  public abstract int delete(String paramString1, String paramString2, String[] paramArrayOfString);
  
  public abstract boolean execSQL(String paramString1, String paramString2);
  
  public abstract long insert(String paramString1, String paramString2, ContentValues paramContentValues);
  
  public abstract Cursor query(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5);
  
  public abstract Cursor rawQuery(String paramString, String[] paramArrayOfString);
  
  public abstract long replace(String paramString1, String paramString2, ContentValues paramContentValues);
  
  public abstract int update(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString);
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/storage/ISQLiteDatabase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */