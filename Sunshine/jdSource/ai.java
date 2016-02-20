import android.graphics.Matrix;
import android.graphics.PointF;
import android.util.FloatMath;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import cn.apppark.mcd.widget.SimpleMatrixZoomImageView;

public final class ai
  implements View.OnTouchListener
{
  public ai(SimpleMatrixZoomImageView paramSimpleMatrixZoomImageView) {}
  
  private static float a(MotionEvent paramMotionEvent)
  {
    float f1 = paramMotionEvent.getX(0) - paramMotionEvent.getX(1);
    float f2 = paramMotionEvent.getY(0) - paramMotionEvent.getY(1);
    return FloatMath.sqrt(f1 * f1 + f2 * f2);
  }
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    }
    for (;;)
    {
      this.a.setImageMatrix(SimpleMatrixZoomImageView.a(this.a));
      return true;
      SimpleMatrixZoomImageView.b(this.a).set(SimpleMatrixZoomImageView.a(this.a));
      SimpleMatrixZoomImageView.c(this.a).set(paramMotionEvent.getX(), paramMotionEvent.getY());
      SimpleMatrixZoomImageView.a(this.a, 1);
      continue;
      SimpleMatrixZoomImageView.a(this.a, 0);
      continue;
      SimpleMatrixZoomImageView.a(this.a, a(paramMotionEvent));
      if (SimpleMatrixZoomImageView.d(this.a) > 10.0F)
      {
        SimpleMatrixZoomImageView.b(this.a).set(SimpleMatrixZoomImageView.a(this.a));
        paramView = SimpleMatrixZoomImageView.e(this.a);
        float f1 = paramMotionEvent.getX(0);
        float f2 = paramMotionEvent.getX(1);
        float f3 = paramMotionEvent.getY(0);
        float f4 = paramMotionEvent.getY(1);
        paramView.set((f1 + f2) / 2.0F, (f3 + f4) / 2.0F);
        SimpleMatrixZoomImageView.a(this.a, 2);
        continue;
        if (SimpleMatrixZoomImageView.f(this.a) == 1)
        {
          SimpleMatrixZoomImageView.a(this.a).set(SimpleMatrixZoomImageView.b(this.a));
          SimpleMatrixZoomImageView.a(this.a).postTranslate(paramMotionEvent.getX() - SimpleMatrixZoomImageView.c(this.a).x, paramMotionEvent.getY() - SimpleMatrixZoomImageView.c(this.a).y);
        }
        else if (SimpleMatrixZoomImageView.f(this.a) == 2)
        {
          f1 = a(paramMotionEvent);
          if (f1 > 10.0F)
          {
            SimpleMatrixZoomImageView.a(this.a).set(SimpleMatrixZoomImageView.b(this.a));
            SimpleMatrixZoomImageView.b(this.a, f1 / SimpleMatrixZoomImageView.d(this.a));
            if (SimpleMatrixZoomImageView.g(this.a) >= 2.0F) {
              SimpleMatrixZoomImageView.b(this.a, 2.0F);
            }
            SimpleMatrixZoomImageView.a(this.a).postScale(SimpleMatrixZoomImageView.g(this.a), SimpleMatrixZoomImageView.g(this.a), SimpleMatrixZoomImageView.e(this.a).x, SimpleMatrixZoomImageView.e(this.a).y);
          }
        }
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */