package com.alipay.mobilesecuritysdk.model;

import HttpUtils.HttpFetcher;
import android.content.Context;
import android.util.Log;
import com.alipay.mobilesecuritysdk.datainfo.GeoResponseInfo;
import com.alipay.mobilesecuritysdk.datainfo.SdkConfig;
import com.alipay.mobilesecuritysdk.datainfo.UploadInfo;
import com.alipay.mobilesecuritysdk.face.SecurityClientMobile;
import com.alipay.mobilesecuritysdk.util.CommonUtils;
import java.io.File;
import java.io.IOException;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.util.EntityUtils;

public class Upload
{
  private UploadInfo info;
  private Context mcontext;
  private DataProfile profile = new DataProfile();
  
  public Upload(Context paramContext)
  {
    this.mcontext = paramContext;
  }
  
  public GeoResponseInfo communicateSwitch()
  {
    GeoResponseInfo localGeoResponseInfo = new GeoResponseInfo();
    if (!CommonUtils.isNetWorkActive(this.mcontext)) {
      return localGeoResponseInfo;
    }
    try
    {
      Object localObject = new HttpGet("http://secclientgw.alipay.com/mobile/switch.xml");
      localObject = new HttpFetcher().getHttpClient().execute((HttpUriRequest)localObject);
      if (((HttpResponse)localObject).getStatusLine().getStatusCode() == 200) {
        return this.profile.analysisServerRespond(EntityUtils.toString(((HttpResponse)localObject).getEntity()));
      }
      localGeoResponseInfo.setSuccess(false);
      return localGeoResponseInfo;
    }
    catch (Exception localException)
    {
      localGeoResponseInfo.setSuccess(false);
    }
    return localGeoResponseInfo;
  }
  
  public UploadInfo getInfo()
  {
    return this.info;
  }
  
  public void setInfo(UploadInfo paramUploadInfo)
  {
    this.info = paramUploadInfo;
  }
  
  public GeoResponseInfo uploadCollectedData(String paramString1, String paramString2, String paramString3)
  {
    GeoResponseInfo localGeoResponseInfo = new GeoResponseInfo();
    try
    {
      paramString1 = new HttpFetcher().uploadCollectedData(this.mcontext, "https://seccliprod.alipay.com/api/do.htm", paramString1, paramString2, paramString3, true);
      if ((paramString1 != null) && (paramString1.getStatusLine().getStatusCode() == 200)) {
        return this.profile.analysisServerRespond(EntityUtils.toString(paramString1.getEntity()));
      }
      localGeoResponseInfo.setSuccess(false);
      return localGeoResponseInfo;
    }
    catch (IOException paramString1)
    {
      Log.i("upload data  error", paramString1.getLocalizedMessage());
    }
    return localGeoResponseInfo;
  }
  
  public GeoResponseInfo uploadData(List<String> paramList, SdkConfig paramSdkConfig)
  {
    Object localObject = new GeoResponseInfo();
    if (CommonUtils.isBlankCollection(paramList))
    {
      ((GeoResponseInfo)localObject).setSuccess(false);
      return (GeoResponseInfo)localObject;
    }
    paramSdkConfig = (SdkConfig)localObject;
    String str;
    if (this.info.getAppinfos().size() > 0)
    {
      this.profile.setTid(paramList);
      str = this.profile.AppToString(this.mcontext.getFilesDir().getPath() + File.separator + "appupload.xml", this.info.getAppinfos());
      if (SecurityClientMobile.isDebug()) {
        Log.i("str app info", str);
      }
      paramSdkConfig = (SdkConfig)localObject;
      if (str != null)
      {
        paramSdkConfig = (SdkConfig)localObject;
        if (str.length() > 0) {
          paramSdkConfig = uploadCollectedData("mobileClient", str, "1");
        }
      }
      if (paramSdkConfig.isSuccess()) {
        break label360;
      }
    }
    for (;;)
    {
      try
      {
        CommonUtils.WriteFile(this.mcontext.getFilesDir().getPath() + File.separator + "appupload.xml", str);
        localObject = paramSdkConfig;
        if (this.info.getLocates().size() > 0)
        {
          this.profile.setTid(paramList);
          localObject = this.profile.LocationToString(this.mcontext.getFilesDir().getPath() + File.separator + "locationupload.xml", this.info.getLocates());
          if (SecurityClientMobile.isDebug()) {
            Log.i("str aloc info", (String)localObject);
          }
          paramList = paramSdkConfig;
          if (localObject != null)
          {
            paramList = paramSdkConfig;
            if (((String)localObject).length() > 0) {
              paramList = uploadCollectedData("mobileClient", (String)localObject, "1");
            }
          }
          if (paramList.isSuccess()) {
            break label428;
          }
        }
        try
        {
          CommonUtils.WriteFile(this.mcontext.getFilesDir().getPath() + File.separator + "locationupload.xml", (String)localObject);
          localObject = paramList;
        }
        catch (IOException paramSdkConfig)
        {
          Log.d("location write file", paramSdkConfig.getLocalizedMessage());
          localList = paramList;
          continue;
        }
        return (GeoResponseInfo)localObject;
      }
      catch (IOException localIOException)
      {
        Log.d("app write file", localIOException.getLocalizedMessage());
        continue;
      }
      label360:
      this.profile.cleanUploadFiles(this.mcontext.getFilesDir().getPath() + File.separator + "appupload.xml");
      Log.i("app write file", "upload  suceess  delete file");
      continue;
      label428:
      this.profile.cleanUploadFiles(this.mcontext.getFilesDir().getPath() + File.separator + "locationupload.xml");
      Log.i("location write file", "upload  suceess  delete file");
      List<String> localList = paramList;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/mobilesecuritysdk/model/Upload.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */