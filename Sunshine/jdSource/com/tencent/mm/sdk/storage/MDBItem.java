package com.tencent.mm.sdk.storage;

import android.content.ContentValues;
import android.database.Cursor;

public abstract interface MDBItem
{
  public abstract void convertFrom(Cursor paramCursor);
  
  public abstract ContentValues convertTo();
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/storage/MDBItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */