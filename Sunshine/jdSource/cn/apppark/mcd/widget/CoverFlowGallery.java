package cn.apppark.mcd.widget;

import android.content.Context;
import android.graphics.Camera;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Transformation;
import android.widget.Gallery;
import android.widget.ImageView;

public class CoverFlowGallery
  extends Gallery
{
  private ImageView centerView;
  private int lastPosition;
  private boolean mAlphaMode = false;
  private Camera mCamera = new Camera();
  private boolean mCircleMode = false;
  private int mCoveflowCenter;
  private int mMaxRotationAngle = 0;
  private int mMaxZoom = 0;
  
  public CoverFlowGallery(Context paramContext)
  {
    super(paramContext);
    setStaticTransformationsEnabled(true);
    setChildrenDrawingOrderEnabled(true);
  }
  
  public CoverFlowGallery(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setStaticTransformationsEnabled(true);
    setChildrenDrawingOrderEnabled(true);
  }
  
  public CoverFlowGallery(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setStaticTransformationsEnabled(true);
    setChildrenDrawingOrderEnabled(true);
  }
  
  private int getCenterOfCoverflow()
  {
    return (getWidth() - getPaddingLeft() - getPaddingRight()) / 2 + getPaddingLeft();
  }
  
  private static int getCenterOfView(View paramView)
  {
    return paramView.getLeft() + paramView.getWidth() / 2;
  }
  
  private void transformImageBitmap(ImageView paramImageView, Transformation paramTransformation, int paramInt)
  {
    this.mCamera.save();
    paramTransformation = paramTransformation.getMatrix();
    int i = paramImageView.getLayoutParams().height;
    int j = paramImageView.getLayoutParams().width;
    int k = Math.abs(paramInt);
    this.mCamera.translate(0.0F, 0.0F, 100.0F);
    if (k <= this.mMaxRotationAngle)
    {
      float f = (float)(this.mMaxZoom + k * 1.5D);
      this.mCamera.translate(0.0F, 0.0F, f);
      if (this.mCircleMode)
      {
        if (k >= 40) {
          break label188;
        }
        this.mCamera.translate(0.0F, 155.0F, 0.0F);
      }
    }
    for (;;)
    {
      if (this.mAlphaMode) {
        paramImageView.setAlpha((int)(255.0D - k * 2.5D));
      }
      this.mCamera.rotateY(paramInt);
      this.mCamera.getMatrix(paramTransformation);
      paramTransformation.preTranslate(-(j / 2), -(i / 2));
      paramTransformation.postTranslate(j / 2, i / 2);
      this.mCamera.restore();
      return;
      label188:
      this.mCamera.translate(0.0F, 255.0F - k * 2.5F, 0.0F);
    }
  }
  
  public boolean getAlphaMode()
  {
    return this.mAlphaMode;
  }
  
  public ImageView getCenterView()
  {
    return this.centerView;
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    int i = getFirstVisiblePosition();
    i = getSelectedItemPosition() - i;
    if (paramInt2 == 0) {
      this.lastPosition = 0;
    }
    if (i < 0) {}
    do
    {
      return paramInt2;
      if (paramInt2 == paramInt1 - 1) {
        return i;
      }
    } while (paramInt2 < i);
    this.lastPosition += 1;
    return paramInt1 - this.lastPosition;
  }
  
  protected boolean getChildStaticTransformation(View paramView, Transformation paramTransformation)
  {
    int i = getCenterOfView(paramView);
    int j = paramView.getWidth();
    paramTransformation.clear();
    paramTransformation.setTransformationType(2);
    if (i == this.mCoveflowCenter) {
      this.centerView = ((ImageView)paramView);
    }
    for (;;)
    {
      return true;
      i = (int)((this.mCoveflowCenter - i) / j * this.mMaxRotationAngle);
      if (Math.abs(i) > this.mMaxRotationAngle) {
        if (i < 0) {
          i = this.mMaxRotationAngle;
        } else {
          i = this.mMaxRotationAngle;
        }
      }
    }
  }
  
  public boolean getCircleMode()
  {
    return this.mCircleMode;
  }
  
  public int getMaxRotationAngle()
  {
    return this.mMaxRotationAngle;
  }
  
  public int getMaxZoom()
  {
    return this.mMaxZoom;
  }
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    return false;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mCoveflowCenter = getCenterOfCoverflow();
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setAlphaMode(boolean paramBoolean)
  {
    this.mAlphaMode = paramBoolean;
  }
  
  public void setCircleMode(boolean paramBoolean)
  {
    this.mCircleMode = paramBoolean;
  }
  
  public void setMaxRotationAngle(int paramInt)
  {
    this.mMaxRotationAngle = paramInt;
  }
  
  public void setMaxZoom(int paramInt)
  {
    this.mMaxZoom = paramInt;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/CoverFlowGallery.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */