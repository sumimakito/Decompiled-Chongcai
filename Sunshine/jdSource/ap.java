import android.graphics.Bitmap;
import android.os.Handler;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout.LayoutParams;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.mcd.vo.dyn.DynMsgListVo;
import cn.apppark.mcd.widget.WaterfallImageView;

final class ap
  implements Runnable
{
  ap(ao paramao) {}
  
  public final void run()
  {
    int j;
    if (this.a.a.bitmap != null)
    {
      j = this.a.a.bitmap.getWidth();
      i = this.a.a.bitmap.getHeight();
      this.a.a.bitmap.getHeight();
      if (!"0".equals(WaterfallImageView.c(this.a.a).getStyle_picStyle())) {
        break label195;
      }
    }
    label195:
    for (int i = i * WaterfallImageView.a(this.a.a).getItemWidth() / j;; i = FunctionPublic.getConvertValue(WaterfallImageView.c(this.a.a).getStyle_picHeight()))
    {
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, i);
      this.a.a.a.setScaleType(ImageView.ScaleType.FIT_XY);
      this.a.a.a.setImageBitmap(this.a.a.bitmap);
      this.a.a.a.setLayoutParams(localLayoutParams);
      this.a.a.getViewHandler().sendMessage(this.a.a.getViewHandler().obtainMessage(1, j, i, this.a.a));
      return;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */