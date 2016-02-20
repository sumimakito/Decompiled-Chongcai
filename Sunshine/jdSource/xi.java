import android.graphics.Bitmap;
import android.view.View;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;

public final class xi
  extends SimpleImageLoadingListener
{
  private Bitmap a;
  
  public final Bitmap a()
  {
    return this.a;
  }
  
  public final void onLoadingComplete(String paramString, View paramView, Bitmap paramBitmap)
  {
    this.a = paramBitmap;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/xi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */