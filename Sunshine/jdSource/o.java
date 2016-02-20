import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.imge.ImgLoad2Cache;
import cn.apppark.mcd.util.imge.ImgLoad2Cache.DownImgEnd;
import cn.apppark.mcd.util.imge.ImgUtil;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.URL;

public final class o
  implements Runnable
{
  public o(ImgLoad2Cache paramImgLoad2Cache, String paramString) {}
  
  public final void run()
  {
    while ((!ImgLoad2Cache.a(this.b)) && (ImgLoad2Cache.b(this.b) <= ImgLoad2Cache.c(this.b)))
    {
      ByteArrayOutputStream localByteArrayOutputStream;
      try
      {
        InputStream localInputStream = new URL(this.a).openStream();
        localByteArrayOutputStream = new ByteArrayOutputStream();
        byte[] arrayOfByte = new byte['Ѐ'];
        for (;;)
        {
          int i = localInputStream.read(arrayOfByte, 0, 1024);
          if (i == -1) {
            break;
          }
          localByteArrayOutputStream.write(arrayOfByte, 0, i);
          localByteArrayOutputStream.flush();
        }
      }
      catch (Exception localException)
      {
        ImgLoad2Cache.a(this.b, false);
        ImgLoad2Cache.e(this.b);
        localException.printStackTrace();
      }
      Object localObject = localByteArrayOutputStream.toByteArray();
      localObject = BitmapFactory.decodeByteArray((byte[])localObject, 0, localObject.length);
      ImgUtil.saveMyBitmap((Bitmap)localObject, ImgLoad2Cache.d(this.b), PublicUtil.getMD5Str(this.a), this.a);
      if (localObject != null) {
        ((Bitmap)localObject).recycle();
      }
      ImgLoad2Cache.a(this.b, true);
    }
    if (ImgLoad2Cache.f(this.b) != null) {
      ImgLoad2Cache.f(this.b).downImgEnd(ImgLoad2Cache.a(this.b));
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */