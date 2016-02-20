import android.os.Handler;
import cn.apppark.mcd.util.imge.ImgLoad2Cache.DownImgEnd;
import cn.apppark.vertify.base.ImagePreview;

public final class vl
  implements ImgLoad2Cache.DownImgEnd
{
  public vl(ImagePreview paramImagePreview, String paramString) {}
  
  public final void downImgEnd(boolean paramBoolean)
  {
    this.b.a.post(new vm(this, paramBoolean));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/vl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */