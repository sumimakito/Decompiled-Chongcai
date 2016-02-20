package com.tencent.mm.sdk.contact;

import android.content.Context;
import com.tencent.mm.sdk.storage.ISQLiteDatabase;
import com.tencent.mm.sdk.storage.MAutoStorage;

public class RContactStorage
  extends MAutoStorage<RContact>
{
  public static final String AUTHORITY = "com.tencent.mm.sdk.contact.provider";
  public static final String PRIMARY_KEY = "";
  public static final String TABLE = "rcontact";
  
  private RContactStorage(ISQLiteDatabase paramISQLiteDatabase)
  {
    super(paramISQLiteDatabase);
  }
  
  public static RContactStorage create(Context paramContext)
  {
    return new RContactStorage(new RContactDB(paramContext));
  }
  
  public RContact get(String paramString)
  {
    RContact localRContact = new RContact();
    localRContact.field_username = paramString;
    paramString = localRContact;
    if (!super.get(localRContact, new String[] { "username" })) {
      paramString = null;
    }
    return paramString;
  }
  
  public String[] getColumns()
  {
    return RContact.COLUMNS;
  }
  
  public String getPrimaryKey()
  {
    return "";
  }
  
  public String getTableName()
  {
    return "rcontact";
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/contact/RContactStorage.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */