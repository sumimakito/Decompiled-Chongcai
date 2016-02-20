import android.view.View;
import android.view.View.OnLongClickListener;
import cn.apppark.vertify.base.ImagePreview;

public final class vn
  implements View.OnLongClickListener
{
  public vn(ImagePreview paramImagePreview) {}
  
  public final boolean onLongClick(View paramView)
  {
    if (!ImagePreview.d(this.a))
    {
      if (ImagePreview.e(this.a).isShowing()) {
        ImagePreview.e(this.a).dismiss();
      }
    }
    else {
      return false;
    }
    ImagePreview.e(this.a).showAtLocation(ImagePreview.f(this.a), 80, 0, 0);
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/vn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */