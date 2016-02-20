package com.alipay.sdk.protocol;

import android.text.TextUtils;
import com.alipay.sdk.data.Envelope;
import com.alipay.sdk.data.Request;
import com.alipay.sdk.data.Response;
import com.alipay.sdk.exception.AppErrorException;
import com.alipay.sdk.exception.FailOperatingException;
import com.alipay.sdk.exception.NetErrorException;
import com.alipay.sdk.tid.TidInfo;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import org.json.JSONException;
import org.json.JSONObject;

public class MiniFrameFactory
{
  public static MiniWindowFrame a(FrameData paramFrameData)
    throws NetErrorException, FailOperatingException, AppErrorException
  {
    Request localRequest = paramFrameData.a();
    Response localResponse = paramFrameData.b();
    JSONObject localJSONObject = paramFrameData.c();
    Object localObject = "程序发生错误";
    if (localJSONObject.has("form"))
    {
      localObject = new MiniWindowFrame(localRequest, localResponse);
      ((MiniWindowFrame)localObject).a(paramFrameData.c());
      return (MiniWindowFrame)localObject;
    }
    if (localJSONObject.has("status"))
    {
      paramFrameData = MiniStatus.a(localJSONObject.optString("status"));
      switch (1.a[paramFrameData.ordinal()])
      {
      default: 
        paramFrameData = localJSONObject.optString("msg");
        if (TextUtils.isEmpty(paramFrameData)) {
          paramFrameData = (FrameData)localObject;
        }
        break;
      }
      for (;;)
      {
        throw new FailOperatingException(paramFrameData);
        paramFrameData = new MiniWindowFrame(localRequest, localResponse);
        paramFrameData.a(localJSONObject);
        return paramFrameData;
        TidInfo.d();
        return null;
      }
    }
    throw new FailOperatingException("程序发生错误");
  }
  
  public final void b(FrameData paramFrameData)
    throws NetErrorException, FailOperatingException, AppErrorException
  {
    Response localResponse = paramFrameData.b();
    JSONObject localJSONObject = paramFrameData.c();
    Object localObject = paramFrameData.a().d();
    Envelope localEnvelope = paramFrameData.b().a();
    if (TextUtils.isEmpty(localEnvelope.d())) {
      localEnvelope.d(((Envelope)localObject).d());
    }
    if (TextUtils.isEmpty(localEnvelope.e())) {
      localEnvelope.e(((Envelope)localObject).e());
    }
    if (TextUtils.isEmpty(localEnvelope.c())) {
      localEnvelope.c(((Envelope)localObject).c());
    }
    if (TextUtils.isEmpty(localEnvelope.b())) {
      localEnvelope.b(((Envelope)localObject).b());
    }
    localObject = localJSONObject.optJSONObject("reflected_data");
    if (localObject != null)
    {
      new StringBuilder("session = ").append(((JSONObject)localObject).optString("session", "")).toString();
      paramFrameData.b().a((JSONObject)localObject);
    }
    for (;;)
    {
      localResponse.b(localJSONObject.optString("end_code", "0"));
      localResponse.e(localJSONObject.optString("user_id", ""));
      paramFrameData = localJSONObject.optString("result");
      try
      {
        localObject = URLDecoder.decode(localJSONObject.optString("result"), "UTF-8");
        paramFrameData = (FrameData)localObject;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        for (;;) {}
      }
      localResponse.c(paramFrameData);
      localResponse.d(localJSONObject.optString("memo", ""));
      return;
      if (!localJSONObject.has("session")) {
        continue;
      }
      paramFrameData = new JSONObject();
      try
      {
        paramFrameData.put("session", localJSONObject.optString("session"));
        localObject = TidInfo.c().a();
        if (!TextUtils.isEmpty((CharSequence)localObject)) {
          paramFrameData.put("tid", localObject);
        }
        localResponse.a(paramFrameData);
      }
      catch (JSONException paramFrameData)
      {
        throw new AppErrorException(getClass(), "can not put reflected values");
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/protocol/MiniFrameFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */