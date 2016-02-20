package com.tencent.mm.sdk.storage;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.platformtools.Log;
import com.tencent.mm.sdk.platformtools.Util;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import junit.framework.Assert;

public abstract class MAutoStorage<T extends MAutoDBItem>
  extends MStorage
{
  private ISQLiteDatabase P;
  private final String bL;
  private final String[] columns;
  
  public MAutoStorage(ISQLiteDatabase paramISQLiteDatabase)
  {
    this.P = paramISQLiteDatabase;
    if (Util.isNullOrNil(getPrimaryKey())) {}
    for (paramISQLiteDatabase = "rowid";; paramISQLiteDatabase = getPrimaryKey())
    {
      this.bL = paramISQLiteDatabase;
      this.columns = getColumns();
      return;
    }
  }
  
  private static StringBuilder a(ContentValues paramContentValues, String... paramVarArgs)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      String str = paramVarArgs[i];
      localStringBuilder.append(str + " = ? AND ");
      if (paramContentValues.get(str) == null) {
        return null;
      }
      i += 1;
    }
    localStringBuilder.append(" 1=1");
    return localStringBuilder;
  }
  
  private boolean a(ContentValues paramContentValues)
  {
    Cursor localCursor = this.P.query(getTableName(), this.columns, this.bL + " = ?", new String[] { Util.nullAsNil(paramContentValues.getAsString(this.bL)) }, null, null, null);
    boolean bool = MAutoDBItem.checkIOEqual(paramContentValues, localCursor);
    localCursor.close();
    return bool;
  }
  
  private static String[] a(String[] paramArrayOfString, ContentValues paramContentValues)
  {
    String[] arrayOfString = new String[paramArrayOfString.length];
    int i = 0;
    while (i < arrayOfString.length)
    {
      arrayOfString[i] = Util.nullAsNil(paramContentValues.getAsString(paramArrayOfString[i]));
      i += 1;
    }
    return arrayOfString;
  }
  
  private void d(String paramString)
  {
    Log.d("MicroMsg.SDK.MAutoStorage", getTableName() + ":" + paramString);
  }
  
  private void e(String paramString)
  {
    Log.e("MicroMsg.SDK.MAutoStorage", getTableName() + ":" + paramString);
  }
  
  public static List<String> getCreateSQLs(Field[] paramArrayOfField, String paramString1, String paramString2, String... paramVarArgs)
  {
    LinkedList localLinkedList = new LinkedList();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("CREATE TABLE IF NOT EXISTS " + paramString1 + " ( ");
    paramArrayOfField = MAutoDBItem.identify(paramArrayOfField, localStringBuilder, paramString2);
    localStringBuilder.append(");");
    localLinkedList.addFirst(localStringBuilder.toString());
    if ((paramVarArgs != null) && (paramVarArgs.length > 0))
    {
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        paramString2 = paramVarArgs[i];
        if ((paramString2 != null) && (paramString2.length() > 0))
        {
          if (paramArrayOfField.get(paramString2) == null) {
            Log.e("MicroMsg.SDK.MAutoStorage", "skipped invalid index: " + paramString2 + ", not found in fields");
          }
          localLinkedList.add("CREATE INDEX IF NOT EXISTS _mindex_" + paramString1 + "_" + paramString2 + "_ ON " + paramString1 + "(" + paramString2 + ");");
        }
        i += 1;
      }
    }
    return localLinkedList;
  }
  
  public static List<String> getUpdateSQLs(Field[] paramArrayOfField, String paramString, ISQLiteDatabase paramISQLiteDatabase)
  {
    LinkedList localLinkedList = new LinkedList();
    HashMap localHashMap = new HashMap();
    paramISQLiteDatabase = paramISQLiteDatabase.rawQuery("PRAGMA table_info( " + paramString + " )", null);
    while (paramISQLiteDatabase.moveToNext()) {
      localHashMap.put(paramISQLiteDatabase.getString(paramISQLiteDatabase.getColumnIndex("name")), paramISQLiteDatabase.getString(paramISQLiteDatabase.getColumnIndex("type")));
    }
    paramISQLiteDatabase.close();
    paramArrayOfField = MAutoDBItem.identify(paramArrayOfField, null, null).entrySet().iterator();
    while (paramArrayOfField.hasNext())
    {
      Object localObject = (Map.Entry)paramArrayOfField.next();
      paramISQLiteDatabase = (String)((Map.Entry)localObject).getValue();
      localObject = (String)((Map.Entry)localObject).getKey();
      int i;
      if (paramISQLiteDatabase == null)
      {
        i = 1;
        label167:
        if (paramISQLiteDatabase.length() > 0) {
          break label269;
        }
      }
      String str;
      label269:
      for (int j = 1;; j = 0)
      {
        if ((i | j) != 0) {
          break label273;
        }
        str = (String)localHashMap.get(localObject);
        if (str != null) {
          break label275;
        }
        localLinkedList.add("ALTER TABLE " + paramString + " ADD COLUMN " + (String)localObject + " " + paramISQLiteDatabase + ";");
        localHashMap.remove(localObject);
        break;
        i = 0;
        break label167;
      }
      label273:
      continue;
      label275:
      if (!str.equalsIgnoreCase(paramISQLiteDatabase))
      {
        Log.e("MicroMsg.SDK.MAutoStorage", "conflicting alter table on column: " + (String)localObject + ", " + str + "<o-n>" + paramISQLiteDatabase);
        localHashMap.remove(localObject);
      }
    }
    return localLinkedList;
  }
  
  public boolean delete(long paramLong)
  {
    boolean bool = true;
    if (this.P.delete(getTableName(), "rowid = ?", new String[] { String.valueOf(paramLong) }) > 0) {}
    for (;;)
    {
      if (bool) {
        notify();
      }
      return bool;
      bool = false;
    }
  }
  
  public boolean delete(T paramT, String... paramVarArgs)
  {
    boolean bool1 = false;
    boolean bool2 = false;
    paramT = paramT.convertTo();
    if ((paramT == null) || (paramT.size() <= 0)) {
      e("delete failed, value.size <= 0");
    }
    do
    {
      return bool2;
      if ((paramVarArgs != null) && (paramVarArgs.length > 0)) {
        break;
      }
      d("delete with primary key");
      if (this.P.delete(getTableName(), this.bL + " = ?", new String[] { Util.nullAsNil(paramT.getAsString(this.bL)) }) > 0) {
        bool1 = true;
      }
      bool2 = bool1;
    } while (!bool1);
    doNotify();
    return bool1;
    StringBuilder localStringBuilder = a(paramT, paramVarArgs);
    if (localStringBuilder == null)
    {
      e("delete failed, check keys failed");
      return false;
    }
    if (this.P.delete(getTableName(), localStringBuilder.toString(), a(paramVarArgs, paramT)) > 0)
    {
      doNotify(this.bL);
      return true;
    }
    e("delete failed");
    return false;
  }
  
  public boolean get(long paramLong, T paramT)
  {
    Cursor localCursor = this.P.query(getTableName(), this.columns, "rowid = ?", new String[] { String.valueOf(paramLong) }, null, null, null);
    if (localCursor.moveToFirst())
    {
      paramT.convertFrom(localCursor);
      localCursor.close();
      return true;
    }
    localCursor.close();
    return false;
  }
  
  public boolean get(T paramT, String... paramVarArgs)
  {
    ContentValues localContentValues = paramT.convertTo();
    if ((localContentValues == null) || (localContentValues.size() <= 0))
    {
      e("get failed, value.size <= 0");
      return false;
    }
    if ((paramVarArgs == null) || (paramVarArgs.length <= 0))
    {
      d("get with primary key");
      paramVarArgs = this.P.query(getTableName(), this.columns, this.bL + " = ?", new String[] { Util.nullAsNil(localContentValues.getAsString(this.bL)) }, null, null, null);
      if (paramVarArgs.moveToFirst())
      {
        paramT.convertFrom(paramVarArgs);
        paramVarArgs.close();
        return true;
      }
      paramVarArgs.close();
      return false;
    }
    StringBuilder localStringBuilder = a(localContentValues, paramVarArgs);
    if (localStringBuilder == null)
    {
      e("get failed, check keys failed");
      return false;
    }
    paramVarArgs = this.P.query(getTableName(), this.columns, localStringBuilder.toString(), a(paramVarArgs, localContentValues), null, null, null);
    if (paramVarArgs.moveToFirst())
    {
      paramT.convertFrom(paramVarArgs);
      paramVarArgs.close();
      return true;
    }
    paramVarArgs.close();
    d("get failed, not found");
    return false;
  }
  
  public Cursor getAll()
  {
    return this.P.query(getTableName(), this.columns, null, null, null, null, null);
  }
  
  public abstract String[] getColumns();
  
  public int getCount()
  {
    int i = 0;
    Cursor localCursor = rawQuery("select count(*) from " + getTableName(), new String[0]);
    if (localCursor != null)
    {
      localCursor.moveToFirst();
      i = localCursor.getInt(0);
      localCursor.close();
    }
    return i;
  }
  
  public abstract String getPrimaryKey();
  
  public abstract String getTableName();
  
  public boolean insert(T paramT)
  {
    ContentValues localContentValues = paramT.convertTo();
    if ((localContentValues == null) || (localContentValues.size() <= 0))
    {
      e("insert failed, value.size <= 0");
      return false;
    }
    paramT.systemRowid = this.P.insert(getTableName(), this.bL, paramT.convertTo());
    if (paramT.systemRowid <= 0L)
    {
      e("insert failed");
      return false;
    }
    doNotify(this.bL);
    return true;
  }
  
  public Cursor rawQuery(String paramString, String... paramVarArgs)
  {
    return this.P.rawQuery(paramString, paramVarArgs);
  }
  
  public boolean replace(T paramT)
  {
    boolean bool;
    ContentValues localContentValues;
    int j;
    int k;
    if (!Util.isNullOrNil(this.bL))
    {
      bool = true;
      Assert.assertTrue("replace primaryKey == null", bool);
      localContentValues = paramT.convertTo();
      if (localContentValues != null)
      {
        j = localContentValues.size();
        k = paramT.fields().length;
        if (!localContentValues.containsKey("rowid")) {
          break label80;
        }
      }
    }
    label80:
    for (int i = 1;; i = 0)
    {
      if (j == i + k) {
        break label85;
      }
      e("replace failed, cv.size() != item.fields().length");
      return false;
      bool = false;
      break;
    }
    label85:
    if (a(localContentValues))
    {
      d("no need replace , fields no change");
      return true;
    }
    if (this.P.replace(getTableName(), this.bL, localContentValues) > 0L)
    {
      doNotify(this.bL);
      return true;
    }
    e("replace failed");
    return false;
  }
  
  public boolean update(long paramLong, T paramT)
  {
    paramT = paramT.convertTo();
    boolean bool2;
    if ((paramT == null) || (paramT.size() <= 0))
    {
      e("update failed, value.size <= 0");
      bool2 = false;
      return bool2;
    }
    Cursor localCursor = this.P.query(getTableName(), this.columns, "rowid = ?", new String[] { String.valueOf(paramLong) }, null, null, null);
    if (MAutoDBItem.checkIOEqual(paramT, localCursor))
    {
      localCursor.close();
      d("no need replace , fields no change");
      return true;
    }
    localCursor.close();
    if (this.P.update(getTableName(), paramT, "rowid = ?", new String[] { String.valueOf(paramLong) }) > 0) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      bool2 = bool1;
      if (!bool1) {
        break;
      }
      doNotify();
      return bool1;
    }
  }
  
  public boolean update(T paramT, String... paramVarArgs)
  {
    boolean bool1 = false;
    boolean bool2 = false;
    paramT = paramT.convertTo();
    if ((paramT == null) || (paramT.size() <= 0)) {
      e("update failed, value.size <= 0");
    }
    do
    {
      return bool2;
      if ((paramVarArgs != null) && (paramVarArgs.length > 0)) {
        break;
      }
      d("update with primary key");
      if (a(paramT))
      {
        d("no need replace , fields no change");
        return true;
      }
      if (this.P.update(getTableName(), paramT, this.bL + " = ?", new String[] { Util.nullAsNil(paramT.getAsString(this.bL)) }) > 0) {
        bool1 = true;
      }
      bool2 = bool1;
    } while (!bool1);
    doNotify();
    return bool1;
    StringBuilder localStringBuilder = a(paramT, paramVarArgs);
    if (localStringBuilder == null)
    {
      e("update failed, check keys failed");
      return false;
    }
    if (this.P.update(getTableName(), paramT, localStringBuilder.toString(), a(paramVarArgs, paramT)) > 0)
    {
      doNotify(this.bL);
      return true;
    }
    e("update failed");
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/storage/MAutoStorage.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */