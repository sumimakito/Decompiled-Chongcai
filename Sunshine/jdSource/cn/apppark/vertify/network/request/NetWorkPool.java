package cn.apppark.vertify.network.request;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class NetWorkPool
{
  private static int MAX_THREAD_NUMBER = 5;
  private static ExecutorService fixedThreadPool;
  private static NetWorkPool netWorkPool;
  
  public static NetWorkPool getNetWorkPool()
  {
    if (fixedThreadPool == null) {
      fixedThreadPool = Executors.newFixedThreadPool(MAX_THREAD_NUMBER);
    }
    if (netWorkPool == null) {
      netWorkPool = new NetWorkPool();
    }
    return netWorkPool;
  }
  
  public static void setMAX_THREAD_NUMBER(int paramInt)
  {
    MAX_THREAD_NUMBER = paramInt;
  }
  
  public void addRequest(NetWorkRequest paramNetWorkRequest)
  {
    if (paramNetWorkRequest != null) {
      fixedThreadPool.execute(paramNetWorkRequest);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/network/request/NetWorkPool.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */