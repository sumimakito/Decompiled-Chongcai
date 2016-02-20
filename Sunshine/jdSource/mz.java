import android.content.Context;
import android.view.MotionEvent;
import android.widget.Gallery;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView;

public final class mz
  extends Gallery
{
  public mz(SelfGalleryView paramSelfGalleryView, Context paramContext)
  {
    super(paramContext);
  }
  
  public final boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (paramMotionEvent2.getX() > paramMotionEvent1.getX())
    {
      i = 1;
      if (i == 0) {
        break label40;
      }
    }
    label40:
    for (int i = 21;; i = 22)
    {
      onKeyDown(i, null);
      return true;
      i = 0;
      break;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/mz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */