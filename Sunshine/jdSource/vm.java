import android.widget.ProgressBar;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.imge.CacheUtil;
import cn.apppark.vertify.base.ImagePreview;
import java.io.File;

final class vm
  implements Runnable
{
  vm(vl paramvl, boolean paramBoolean) {}
  
  public final void run()
  {
    ImagePreview.a(this.b.b).setVisibility(8);
    if (this.a)
    {
      String str = HQCHApplication.getInstance().getResourceDir() + File.separator + YYGYContants.IMAGE_CACHE_PATH + File.separator;
      str = str + PublicUtil.getMD5Str(this.b.a);
      ImagePreview.a(this.b.b, HQCHApplication.cacheUtil.getCachedBitmapSD(str));
      if (ImagePreview.b(this.b.b) != null)
      {
        ImagePreview.c(this.b.b);
        return;
      }
      HQCHApplication.instance.initToast("图片加载失败", 0);
      return;
    }
    HQCHApplication.instance.initToast("图片加载失败", 0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/vm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */