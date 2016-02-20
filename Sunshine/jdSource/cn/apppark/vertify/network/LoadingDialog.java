package cn.apppark.vertify.network;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.widget.Toast;
import cn.apppark.mcd.widget.DialogProgress;
import wi;

public abstract class LoadingDialog<Input, Result>
  extends AsyncTask<Input, Exception, Result>
  implements ResultProvider<Result>
{
  public Activity mActivity;
  private String mFailMsg;
  private String mLoadingMsg;
  private ProgressDialog mProgressDialog;
  private String mTitleMsg;
  
  public LoadingDialog(Activity paramActivity, String paramString1, String paramString2, String paramString3)
  {
    this.mTitleMsg = paramString1;
    this.mActivity = paramActivity;
    if (paramActivity.isChild()) {
      this.mActivity = paramActivity.getParent();
    }
    this.mLoadingMsg = paramString2;
    this.mFailMsg = paramString3;
  }
  
  public abstract Result doInBackground(Input... paramVarArgs);
  
  protected void doStuffWithNull() {}
  
  public void onCancelled()
  {
    showFailMsg();
    super.onCancelled();
  }
  
  public void onPostExecute(Result paramResult)
  {
    super.onPostExecute(paramResult);
    try
    {
      this.mProgressDialog.dismiss();
      if (paramResult != null)
      {
        doStuffWithResult(paramResult);
        return;
      }
      doStuffWithNull();
      showFailMsg();
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public void onPreExecute()
  {
    try
    {
      this.mProgressDialog = DialogProgress.show(this.mActivity, this.mTitleMsg, this.mLoadingMsg, true, true, new wi(this));
      super.onPreExecute();
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  protected void onProgressUpdate(Exception... paramVarArgs)
  {
    try
    {
      Toast.makeText(this.mActivity, paramVarArgs[0].getMessage(), 1).show();
      cancel(true);
      this.mProgressDialog.dismiss();
      super.onProgressUpdate(paramVarArgs);
      return;
    }
    catch (Exception paramVarArgs) {}
  }
  
  protected void showFailMsg()
  {
    Toast.makeText(this.mActivity, this.mFailMsg, 1).show();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/network/LoadingDialog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */