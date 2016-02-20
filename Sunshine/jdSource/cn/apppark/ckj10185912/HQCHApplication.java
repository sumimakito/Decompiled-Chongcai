package cn.apppark.ckj10185912;

import android.app.Application;
import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.imge.BitmapCache;
import cn.apppark.mcd.util.imge.CacheUtil;
import cn.apppark.mcd.util.imge.DrawableCache;
import cn.apppark.vertify.base.ClientInitInfoHelpler;
import cn.apppark.vertify.base.YygyResourceDirGenerator;
import com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator;
import com.nostra13.universalimageloader.cache.memory.impl.WeakMemoryCache;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration.Builder;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import java.io.File;

public class HQCHApplication
  extends Application
{
  private static final int BITS_PER_UNIT = 8;
  public static final String CLIENT_FLAG = "10185912";
  public static boolean DEBUG = false;
  public static final String IP = "http://www.apppark.cn";
  public static CacheUtil cacheUtil;
  public static HQCHApplication instance;
  public static boolean isLBSopen = true;
  public static String lastUpdateTimeFlag = "2016-02-20 10:31:004";
  public static Main mainActivity;
  public static final String timeFlag = "2016-02-20 10:31:004";
  public String PKGNAME = "cn.apppark.ckj10185912";
  
  public static Dialog createLoadingDialog(Context paramContext, int paramInt)
  {
    View localView = LayoutInflater.from(paramContext).inflate(2130903088, null);
    LinearLayout localLinearLayout = (LinearLayout)localView.findViewById(2131362177);
    ((TextView)localView.findViewById(2131362179)).setText(paramInt);
    paramContext = new Dialog(paramContext, 2131099665);
    paramContext.setContentView(localLinearLayout, new LinearLayout.LayoutParams(-1, -1));
    return paramContext;
  }
  
  public static HQCHApplication getInstance()
  {
    return instance;
  }
  
  private void initImageCache()
  {
    YYGYContants.mNetworktImageCache = new BitmapCache();
    YYGYContants.mLocalDrawableCaches = new DrawableCache();
    cacheUtil = new CacheUtil(this);
    initUniversalCache();
  }
  
  private void initUniversalCache()
  {
    ImageLoaderConfiguration localImageLoaderConfiguration = new ImageLoaderConfiguration.Builder(this).threadPoolSize(3).threadPriority(3).memoryCache(new WeakMemoryCache()).memoryCacheSize(2097152).diskCacheSize(52428800).diskCacheFileCount(100).diskCacheFileNameGenerator(new Md5FileNameGenerator()).tasksProcessingOrder(QueueProcessingType.LIFO).defaultDisplayImageOptions(DisplayImageOptions.createSimple()).imageDownloader(new BaseImageDownloader(this, 5000, 30000)).build();
    ImageLoader.getInstance().init(localImageLoaderConfiguration);
  }
  
  private static int postion(int paramInt)
  {
    return 1 << 7 - paramInt % 8;
  }
  
  public String generatePath(String paramString)
  {
    return YYGYContants.mDirGenerator.getResourceDir() + File.separator + paramString;
  }
  
  public File getResourceDir()
  {
    return YYGYContants.mDirGenerator.getResourceDir();
  }
  
  public File getYygyDir()
  {
    return YYGYContants.mDirGenerator.getyygyDir();
  }
  
  public void initToast(int paramInt1, int paramInt2)
  {
    Toast.makeText(mainActivity, paramInt1, paramInt2).show();
  }
  
  public void initToast(String paramString, int paramInt)
  {
    Toast.makeText(mainActivity, paramString, paramInt).show();
  }
  
  public void onCreate()
  {
    super.onCreate();
    YYGYContants.IMEI = PublicUtil.getMacAddress(this);
    YYGYContants.VERSION_CODE = PublicUtil.getVersionCode(this, getPackageName());
    YYGYContants.PHONE_NUMBER = "";
    YYGYContants.mHelper = new ClientInitInfoHelpler(this, "10185912");
    if (!DEBUG) {
      DEBUG = YYGYContants.mHelper.getIsDebug();
    }
    YYGYContants.mDirGenerator = YygyResourceDirGenerator.getInstance("10185912");
    instance = this;
    initImageCache();
    YYGYContants.baseCachePath = getInstance().getCacheDir() + File.separator + YYGYContants.IMAGE_CACHE_PATH + File.separator;
    YYGYContants.baseImgCachePath = getInstance().getResourceDir() + File.separator + YYGYContants.IMAGE_CACHE_PATH + File.separator;
  }
  
  public void onTerminate()
  {
    super.onTerminate();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/ckj10185912/HQCHApplication.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */