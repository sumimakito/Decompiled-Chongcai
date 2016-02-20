package com.alipay.sdk.protocol;

import com.alipay.sdk.exception.AppErrorException;
import com.alipay.sdk.exception.FailOperatingException;
import com.alipay.sdk.exception.NetErrorException;

public class FrameFactoryManager
{
  public static FrameData a(FrameData paramFrameData)
    throws NetErrorException, FailOperatingException, AppErrorException
  {
    if (paramFrameData == null) {
      throw new AppErrorException(FrameFactoryManager.class, "frame data is null");
    }
    MiniFrameFactory localMiniFrameFactory = new MiniFrameFactory();
    MiniWindowFrame localMiniWindowFrame = MiniFrameFactory.a(paramFrameData);
    if (localMiniWindowFrame == null) {}
    for (;;)
    {
      localMiniFrameFactory.b(paramFrameData);
      return paramFrameData;
      paramFrameData = localMiniWindowFrame;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/protocol/FrameFactoryManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */