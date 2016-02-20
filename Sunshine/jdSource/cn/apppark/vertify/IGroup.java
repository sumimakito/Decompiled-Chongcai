package cn.apppark.vertify;

import android.content.Context;
import android.content.Intent;

public abstract interface IGroup
{
  public abstract int getSig(Context paramContext, String paramString, int paramInt);
  
  public abstract String getSig(Context paramContext, String paramString);
  
  public abstract void goNextPage(String paramString1, String paramString2, boolean paramBoolean, String paramString3, String paramString4);
  
  public abstract void pageBack();
  
  public abstract void pageBackHome();
  
  public abstract void startPageActivity(String paramString, Intent paramIntent);
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/IGroup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */