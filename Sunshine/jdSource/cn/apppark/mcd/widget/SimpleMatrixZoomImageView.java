package cn.apppark.mcd.widget;

import ai;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import cn.apppark.ckj10185912.YYGYContants;

public class SimpleMatrixZoomImageView
  extends ImageView
{
  private static final int DRAG = 1;
  private static final int NONE = 0;
  protected static final String TAG = "TouchableImageView";
  private static final int ZOOM = 2;
  private Matrix matrix = new Matrix();
  private float maxScale = 2.0F;
  private PointF mid = new PointF();
  private int mode = 0;
  private float oldDist;
  private Matrix savedMatrix = new Matrix();
  private float scale = 1.0F;
  private PointF start = new PointF();
  
  public SimpleMatrixZoomImageView(Context paramContext)
  {
    super(paramContext);
    setScaleType(ImageView.ScaleType.MATRIX);
    setOnTouchListener(new ai(this));
  }
  
  public SimpleMatrixZoomImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setScaleType(ImageView.ScaleType.MATRIX);
    setOnTouchListener(new ai(this));
  }
  
  public SimpleMatrixZoomImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setScaleType(ImageView.ScaleType.MATRIX);
    setOnTouchListener(new ai(this));
  }
  
  private void initOnTouchListener()
  {
    setScaleType(ImageView.ScaleType.MATRIX);
    setOnTouchListener(new ai(this));
  }
  
  public void center(int paramInt1, int paramInt2, float paramFloat)
  {
    this.matrix.setScale(paramFloat, paramFloat);
    this.matrix.postTranslate(YYGYContants.screenWidth / 2 - paramInt1 / 2, YYGYContants.screenHeight / 2 - paramInt2 / 2);
    setImageMatrix(this.matrix);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/SimpleMatrixZoomImageView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */