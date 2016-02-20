package com.tencent.mm.sdk.storage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import com.tencent.mm.sdk.platformtools.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import junit.framework.Assert;

public abstract class MAutoDBItem
  implements MDBItem
{
  public static final String SYSTEM_ROWID_FIELD = "rowid";
  public long systemRowid = -1L;
  
  public static boolean checkIOEqual(ContentValues paramContentValues, Cursor paramCursor)
  {
    if (paramContentValues == null) {
      return paramCursor == null;
    }
    if ((paramCursor == null) || (paramCursor.getCount() != 1)) {
      return false;
    }
    paramCursor.moveToFirst();
    int k = paramCursor.getColumnCount();
    int j = paramContentValues.size();
    int i = j;
    if (paramContentValues.containsKey("rowid")) {
      i = j - 1;
    }
    j = k;
    if (paramCursor.getColumnIndex("rowid") != -1) {
      j = k - 1;
    }
    if (i != j) {
      return false;
    }
    for (;;)
    {
      try
      {
        Iterator localIterator = paramContentValues.valueSet().iterator();
        if (localIterator.hasNext())
        {
          Object localObject = (String)((Map.Entry)localIterator.next()).getKey();
          if (((String)localObject).equals("rowid")) {
            continue;
          }
          i = paramCursor.getColumnIndex((String)localObject);
          if (i == -1) {
            return false;
          }
          if ((paramContentValues.get((String)localObject) instanceof byte[]))
          {
            localObject = (byte[])paramContentValues.get((String)localObject);
            byte[] arrayOfByte = paramCursor.getBlob(i);
            if (localObject.length == arrayOfByte.length) {
              break label289;
            }
            return false;
            if (i >= localObject.length) {
              continue;
            }
            if (localObject[i] == arrayOfByte[i]) {
              break label294;
            }
            return false;
          }
          if ((paramCursor.getString(i) == null) && (paramContentValues.get((String)localObject) != null)) {
            return false;
          }
          if (paramContentValues.get((String)localObject) == null) {
            return false;
          }
          boolean bool = paramContentValues.get((String)localObject).toString().equals(paramCursor.getString(i));
          if (bool) {
            continue;
          }
          return false;
        }
      }
      catch (Exception paramContentValues)
      {
        paramContentValues.printStackTrace();
        return false;
      }
      return true;
      label289:
      i = 0;
      continue;
      label294:
      i += 1;
    }
  }
  
  public static Cursor getCursorForProjection(ContentValues paramContentValues, String[] paramArrayOfString)
  {
    Object[] arrayOfObject = new Object[paramArrayOfString.length];
    int i = 0;
    while (i < arrayOfObject.length)
    {
      arrayOfObject[i] = paramContentValues.get(paramArrayOfString[i]);
      i += 1;
    }
    paramContentValues = new MatrixCursor(paramArrayOfString);
    paramContentValues.addRow(arrayOfObject);
    return paramContentValues;
  }
  
  public static String[] getFullColumns(Field[] paramArrayOfField)
  {
    String[] arrayOfString = new String[paramArrayOfField.length + 1];
    int i = 0;
    while (i < paramArrayOfField.length)
    {
      arrayOfString[i] = paramArrayOfField[i].getName().substring(6);
      i += 1;
    }
    arrayOfString[paramArrayOfField.length] = "rowid";
    return arrayOfString;
  }
  
  public static Field[] getValidFields(Class<?> paramClass)
  {
    LinkedList localLinkedList = new LinkedList();
    paramClass = paramClass.getDeclaredFields();
    int j = paramClass.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = paramClass[i];
      int k = ((Field)localObject).getModifiers();
      String str = ((Field)localObject).getName();
      if ((str != null) && (str.startsWith("field_")) && (Modifier.isPublic(k)) && (!Modifier.isFinal(k)))
      {
        if (str.endsWith("field_rowid")) {
          Assert.assertTrue("field_rowid reserved by MAutoDBItem, change now!", false);
        }
        localLinkedList.add(localObject);
      }
      i += 1;
    }
    return (Field[])localLinkedList.toArray(new Field[0]);
  }
  
  public static Map<String, String> identify(Field[] paramArrayOfField, StringBuilder paramStringBuilder, String paramString)
  {
    HashMap localHashMap = new HashMap();
    int i = 0;
    while (i < paramArrayOfField.length)
    {
      String str2 = CursorFieldHelper.type(paramArrayOfField[i].getType());
      if (str2 == null)
      {
        Log.e("MicroMsg.SDK.MAutoDBItem", "failed identify on column: " + paramArrayOfField[i].getName() + ", skipped");
        i += 1;
      }
      else
      {
        String str3 = paramArrayOfField[i].getName().substring(6);
        if (paramStringBuilder != null)
        {
          StringBuilder localStringBuilder = new StringBuilder().append(str3).append(" ").append(str2);
          if (!str3.equals(paramString)) {
            break label174;
          }
          str1 = " PRIMARY KEY ";
          label125:
          paramStringBuilder.append(str1);
          if (i != paramArrayOfField.length - 1) {
            break label181;
          }
        }
        label174:
        label181:
        for (String str1 = "";; str1 = ", ")
        {
          paramStringBuilder.append(str1);
          localHashMap.put(str3, str2);
          break;
          str1 = "";
          break label125;
        }
      }
    }
    return localHashMap;
  }
  
  public void convertFrom(Cursor paramCursor)
  {
    Field[] arrayOfField = fields();
    int j = arrayOfField.length;
    int i = 0;
    for (;;)
    {
      Field localField;
      Object localObject;
      if (i < j)
      {
        localField = arrayOfField[i];
        localObject = localField.getName().substring(6);
      }
      try
      {
        int k = paramCursor.getColumnIndexOrThrow((String)localObject);
        if (k != -1)
        {
          try
          {
            localObject = CursorFieldHelper.get(localField.getType(), false);
            if (localObject == null) {
              break label149;
            }
            ((Method)localObject).invoke(null, new Object[] { localField, this, paramCursor, Integer.valueOf(k) });
          }
          catch (Exception localException2)
          {
            localException2.printStackTrace();
          }
          try
          {
            i = paramCursor.getColumnIndexOrThrow("rowid");
            if (i > 0) {
              this.systemRowid = paramCursor.getLong(i);
            }
            return;
          }
          catch (Exception localException1)
          {
            for (;;)
            {
              i = -1;
            }
          }
        }
      }
      catch (Exception localException3)
      {
        label149:
        i += 1;
      }
    }
  }
  
  public ContentValues convertTo()
  {
    ContentValues localContentValues = new ContentValues();
    Field[] arrayOfField = fields();
    int j = arrayOfField.length;
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        Field localField = arrayOfField[i];
        try
        {
          Method localMethod = CursorFieldHelper.get(localField.getType(), true);
          if (localMethod == null) {
            break label111;
          }
          localMethod.invoke(null, new Object[] { localField, this, localContentValues });
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
      if (this.systemRowid > 0L) {
        localContentValues.put("rowid", Long.valueOf(this.systemRowid));
      }
      return localContentValues;
      label111:
      i += 1;
    }
  }
  
  protected abstract Field[] fields();
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/storage/MAutoDBItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */