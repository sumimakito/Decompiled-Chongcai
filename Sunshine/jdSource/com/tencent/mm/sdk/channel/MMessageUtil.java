package com.tencent.mm.sdk.channel;

import com.tencent.mm.algorithm.MD5;

public class MMessageUtil
{
  static byte[] a(String paramString1, String paramString2)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (paramString1 != null) {
      localStringBuffer.append(paramString1);
    }
    localStringBuffer.append(553844737);
    localStringBuffer.append(paramString2);
    localStringBuffer.append("mMcShCsTr");
    return MD5.getMessageDigest(localStringBuffer.toString().substring(1, 9).getBytes()).getBytes();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/channel/MMessageUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */