package com.tencent.mm.sdk.storage;

import android.content.ContentValues;
import android.database.Cursor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

class CursorFieldHelper
{
  private static final Map<Class<?>, Method> bI = new HashMap();
  private static final Map<Class<?>, Method> bJ = new HashMap();
  private static final Map<Class<?>, String> bK = new HashMap();
  
  static
  {
    try
    {
      bI.put(byte[].class, CursorFieldHelper.class.getMethod("keep_setBlob", new Class[] { Field.class, Object.class, Cursor.class, Integer.TYPE }));
      bI.put(Short.TYPE, CursorFieldHelper.class.getMethod("keep_setShort", new Class[] { Field.class, Object.class, Cursor.class, Integer.TYPE }));
      bI.put(Short.class, CursorFieldHelper.class.getMethod("keep_setShort", new Class[] { Field.class, Object.class, Cursor.class, Integer.TYPE }));
      bI.put(Boolean.TYPE, CursorFieldHelper.class.getMethod("keep_setBoolean", new Class[] { Field.class, Object.class, Cursor.class, Integer.TYPE }));
      bI.put(Boolean.class, CursorFieldHelper.class.getMethod("keep_setBoolean", new Class[] { Field.class, Object.class, Cursor.class, Integer.TYPE }));
      bI.put(Integer.TYPE, CursorFieldHelper.class.getMethod("keep_setInt", new Class[] { Field.class, Object.class, Cursor.class, Integer.TYPE }));
      bI.put(Integer.class, CursorFieldHelper.class.getMethod("keep_setInt", new Class[] { Field.class, Object.class, Cursor.class, Integer.TYPE }));
      bI.put(Float.TYPE, CursorFieldHelper.class.getMethod("keep_setFloat", new Class[] { Field.class, Object.class, Cursor.class, Integer.TYPE }));
      bI.put(Float.class, CursorFieldHelper.class.getMethod("keep_setFloat", new Class[] { Field.class, Object.class, Cursor.class, Integer.TYPE }));
      bI.put(Double.TYPE, CursorFieldHelper.class.getMethod("keep_setDouble", new Class[] { Field.class, Object.class, Cursor.class, Integer.TYPE }));
      bI.put(Double.class, CursorFieldHelper.class.getMethod("keep_setDouble", new Class[] { Field.class, Object.class, Cursor.class, Integer.TYPE }));
      bI.put(Long.TYPE, CursorFieldHelper.class.getMethod("keep_setLong", new Class[] { Field.class, Object.class, Cursor.class, Integer.TYPE }));
      bI.put(Long.class, CursorFieldHelper.class.getMethod("keep_setLong", new Class[] { Field.class, Object.class, Cursor.class, Integer.TYPE }));
      bI.put(String.class, CursorFieldHelper.class.getMethod("keep_setString", new Class[] { Field.class, Object.class, Cursor.class, Integer.TYPE }));
      bJ.put(byte[].class, CursorFieldHelper.class.getMethod("keep_getBlob", new Class[] { Field.class, Object.class, ContentValues.class }));
      bJ.put(Short.TYPE, CursorFieldHelper.class.getMethod("keep_getShort", new Class[] { Field.class, Object.class, ContentValues.class }));
      bJ.put(Short.class, CursorFieldHelper.class.getMethod("keep_getShort", new Class[] { Field.class, Object.class, ContentValues.class }));
      bJ.put(Boolean.TYPE, CursorFieldHelper.class.getMethod("keep_getBoolean", new Class[] { Field.class, Object.class, ContentValues.class }));
      bJ.put(Boolean.class, CursorFieldHelper.class.getMethod("keep_getBoolean", new Class[] { Field.class, Object.class, ContentValues.class }));
      bJ.put(Integer.TYPE, CursorFieldHelper.class.getMethod("keep_getInt", new Class[] { Field.class, Object.class, ContentValues.class }));
      bJ.put(Integer.class, CursorFieldHelper.class.getMethod("keep_getInt", new Class[] { Field.class, Object.class, ContentValues.class }));
      bJ.put(Float.TYPE, CursorFieldHelper.class.getMethod("keep_getFloat", new Class[] { Field.class, Object.class, ContentValues.class }));
      bJ.put(Float.class, CursorFieldHelper.class.getMethod("keep_getFloat", new Class[] { Field.class, Object.class, ContentValues.class }));
      bJ.put(Double.TYPE, CursorFieldHelper.class.getMethod("keep_getDouble", new Class[] { Field.class, Object.class, ContentValues.class }));
      bJ.put(Double.class, CursorFieldHelper.class.getMethod("keep_getDouble", new Class[] { Field.class, Object.class, ContentValues.class }));
      bJ.put(Long.TYPE, CursorFieldHelper.class.getMethod("keep_getLong", new Class[] { Field.class, Object.class, ContentValues.class }));
      bJ.put(Long.class, CursorFieldHelper.class.getMethod("keep_getLong", new Class[] { Field.class, Object.class, ContentValues.class }));
      bJ.put(String.class, CursorFieldHelper.class.getMethod("keep_getString", new Class[] { Field.class, Object.class, ContentValues.class }));
      bK.put(byte[].class, "BLOB");
      bK.put(Short.TYPE, "SHORT");
      bK.put(Short.class, "SHORT");
      bK.put(Boolean.TYPE, "INTEGER");
      bK.put(Boolean.class, "INTEGER");
      bK.put(Integer.TYPE, "INTEGER");
      bK.put(Integer.class, "INTEGER");
      bK.put(Float.TYPE, "FLOAT");
      bK.put(Float.class, "FLOAT");
      bK.put(Double.TYPE, "DOUBLE");
      bK.put(Double.class, "DOUBLE");
      bK.put(Long.TYPE, "LONG");
      bK.put(Long.class, "LONG");
      bK.put(String.class, "TEXT");
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public static Method get(Class<?> paramClass, boolean paramBoolean)
  {
    if (paramBoolean) {
      return (Method)bJ.get(paramClass);
    }
    return (Method)bI.get(paramClass);
  }
  
  public static void keep_getBlob(Field paramField, Object paramObject, ContentValues paramContentValues)
  {
    try
    {
      paramContentValues.put(paramField.getName().substring(6), (byte[])paramField.get(paramObject));
      return;
    }
    catch (Exception paramField)
    {
      paramField.printStackTrace();
    }
  }
  
  public static void keep_getBoolean(Field paramField, Object paramObject, ContentValues paramContentValues)
  {
    try
    {
      String str = paramField.getName().substring(6);
      if (paramField.getBoolean(paramObject)) {}
      for (int i = 1;; i = 0)
      {
        paramContentValues.put(str, Integer.valueOf(i));
        return;
      }
      return;
    }
    catch (Exception paramField)
    {
      paramField.printStackTrace();
    }
  }
  
  public static void keep_getDouble(Field paramField, Object paramObject, ContentValues paramContentValues)
  {
    try
    {
      if (!paramField.getType().equals(Double.TYPE))
      {
        paramContentValues.put(paramField.getName().substring(6), (Double)paramField.get(paramObject));
        return;
      }
      paramContentValues.put(paramField.getName().substring(6), Double.valueOf(paramField.getDouble(paramObject)));
      return;
    }
    catch (Exception paramField)
    {
      paramField.printStackTrace();
    }
  }
  
  public static void keep_getFloat(Field paramField, Object paramObject, ContentValues paramContentValues)
  {
    try
    {
      if (!paramField.getType().equals(Float.TYPE))
      {
        paramContentValues.put(paramField.getName().substring(6), (Float)paramField.get(paramObject));
        return;
      }
      paramContentValues.put(paramField.getName().substring(6), Float.valueOf(paramField.getFloat(paramObject)));
      return;
    }
    catch (Exception paramField)
    {
      paramField.printStackTrace();
    }
  }
  
  public static void keep_getInt(Field paramField, Object paramObject, ContentValues paramContentValues)
  {
    try
    {
      if (!paramField.getType().equals(Integer.TYPE))
      {
        paramContentValues.put(paramField.getName().substring(6), (Integer)paramField.get(paramObject));
        return;
      }
      paramContentValues.put(paramField.getName().substring(6), Integer.valueOf(paramField.getInt(paramObject)));
      return;
    }
    catch (Exception paramField)
    {
      paramField.printStackTrace();
    }
  }
  
  public static void keep_getLong(Field paramField, Object paramObject, ContentValues paramContentValues)
  {
    try
    {
      if (!paramField.getType().equals(Long.TYPE))
      {
        paramContentValues.put(paramField.getName().substring(6), (Long)paramField.get(paramObject));
        return;
      }
      paramContentValues.put(paramField.getName().substring(6), Long.valueOf(paramField.getLong(paramObject)));
      return;
    }
    catch (Exception paramField)
    {
      paramField.printStackTrace();
    }
  }
  
  public static void keep_getShort(Field paramField, Object paramObject, ContentValues paramContentValues)
  {
    try
    {
      paramContentValues.put(paramField.getName().substring(6), Short.valueOf(paramField.getShort(paramObject)));
      return;
    }
    catch (Exception paramField)
    {
      paramField.printStackTrace();
    }
  }
  
  public static void keep_getString(Field paramField, Object paramObject, ContentValues paramContentValues)
  {
    try
    {
      paramContentValues.put(paramField.getName().substring(6), (String)paramField.get(paramObject));
      return;
    }
    catch (Exception paramField)
    {
      paramField.printStackTrace();
    }
  }
  
  public static void keep_setBlob(Field paramField, Object paramObject, Cursor paramCursor, int paramInt)
  {
    try
    {
      paramField.set(paramObject, paramCursor.getBlob(paramInt));
      return;
    }
    catch (Exception paramField)
    {
      paramField.printStackTrace();
    }
  }
  
  public static void keep_setBoolean(Field paramField, Object paramObject, Cursor paramCursor, int paramInt)
  {
    for (;;)
    {
      try
      {
        if (paramField.getType().equals(Boolean.TYPE))
        {
          if (paramCursor.getInt(paramInt) != 0)
          {
            bool = true;
            paramField.setBoolean(paramObject, bool);
          }
        }
        else
        {
          paramField.set(paramObject, Integer.valueOf(paramCursor.getInt(paramInt)));
          return;
        }
      }
      catch (Exception paramField)
      {
        paramField.printStackTrace();
        return;
      }
      boolean bool = false;
    }
  }
  
  public static void keep_setDouble(Field paramField, Object paramObject, Cursor paramCursor, int paramInt)
  {
    try
    {
      if (paramField.getType().equals(Double.TYPE))
      {
        paramField.setDouble(paramObject, paramCursor.getDouble(paramInt));
        return;
      }
      paramField.set(paramObject, Double.valueOf(paramCursor.getDouble(paramInt)));
      return;
    }
    catch (Exception paramField)
    {
      paramField.printStackTrace();
    }
  }
  
  public static void keep_setFloat(Field paramField, Object paramObject, Cursor paramCursor, int paramInt)
  {
    try
    {
      if (paramField.getType().equals(Float.TYPE))
      {
        paramField.setFloat(paramObject, paramCursor.getFloat(paramInt));
        return;
      }
      paramField.set(paramObject, Float.valueOf(paramCursor.getFloat(paramInt)));
      return;
    }
    catch (Exception paramField)
    {
      paramField.printStackTrace();
    }
  }
  
  public static void keep_setInt(Field paramField, Object paramObject, Cursor paramCursor, int paramInt)
  {
    try
    {
      if (paramField.getType().equals(Integer.TYPE))
      {
        paramField.setInt(paramObject, paramCursor.getInt(paramInt));
        return;
      }
      paramField.set(paramObject, Integer.valueOf(paramCursor.getInt(paramInt)));
      return;
    }
    catch (Exception paramField)
    {
      paramField.printStackTrace();
    }
  }
  
  public static void keep_setLong(Field paramField, Object paramObject, Cursor paramCursor, int paramInt)
  {
    try
    {
      if (paramField.getType().equals(Long.TYPE))
      {
        paramField.setLong(paramObject, paramCursor.getLong(paramInt));
        return;
      }
      paramField.set(paramObject, Long.valueOf(paramCursor.getLong(paramInt)));
      return;
    }
    catch (Exception paramField)
    {
      paramField.printStackTrace();
    }
  }
  
  public static void keep_setShort(Field paramField, Object paramObject, Cursor paramCursor, int paramInt)
  {
    try
    {
      if (paramField.getType().equals(Short.TYPE))
      {
        paramField.setShort(paramObject, paramCursor.getShort(paramInt));
        return;
      }
      paramField.set(paramObject, Short.valueOf(paramCursor.getShort(paramInt)));
      return;
    }
    catch (Exception paramField)
    {
      paramField.printStackTrace();
    }
  }
  
  public static void keep_setString(Field paramField, Object paramObject, Cursor paramCursor, int paramInt)
  {
    try
    {
      paramField.set(paramObject, paramCursor.getString(paramInt));
      return;
    }
    catch (Exception paramField)
    {
      paramField.printStackTrace();
    }
  }
  
  public static String type(Class<?> paramClass)
  {
    return (String)bK.get(paramClass);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/storage/CursorFieldHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */