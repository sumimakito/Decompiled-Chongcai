package cn.apppark.vertify.base;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.FloatMath;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.ProgressBar;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.util.imge.CacheUtil;
import cn.apppark.mcd.util.imge.ImgLoad2Cache;
import cn.apppark.mcd.util.imge.ImgUtil;
import java.io.IOException;
import vl;
import vn;
import vo;

public class ImagePreview
  extends Activity
  implements View.OnClickListener, View.OnTouchListener
{
  private static final int DRAG = 1;
  private static final float MAX_SCALE = 4.0F;
  private static final int NONE = 0;
  private static final int ZOOM = 2;
  public Handler a;
  private Button btn_cancel;
  private Button btn_save;
  private float dist = 1.0F;
  private boolean isScale = false;
  private Bitmap mBitmap;
  private DisplayMetrics mDisplyMetrcs;
  private ImageView mImageView;
  private final Matrix matrix = new Matrix();
  private final PointF mid = new PointF();
  private float minScaleR;
  private int mode = 0;
  private vo myMenu;
  private final PointF prev = new PointF();
  private ProgressBar progress;
  private final Matrix savedMatrix = new Matrix();
  
  private void checkView()
  {
    float[] arrayOfFloat = new float[9];
    this.matrix.getValues(arrayOfFloat);
    if (this.mode == 2)
    {
      if (arrayOfFloat[0] < this.minScaleR) {
        this.matrix.setScale(this.minScaleR, this.minScaleR);
      }
      if (arrayOfFloat[0] > 4.0F) {
        this.matrix.set(this.savedMatrix);
      }
    }
    setCenter(true, true);
  }
  
  private void midPoint(PointF paramPointF, MotionEvent paramMotionEvent)
  {
    float f1 = paramMotionEvent.getX(0);
    float f2 = paramMotionEvent.getX(1);
    float f3 = paramMotionEvent.getY(0);
    float f4 = paramMotionEvent.getY(1);
    paramPointF.set((f1 + f2) / 2.0F, (f3 + f4) / 2.0F);
  }
  
  private void setCenter()
  {
    setCenter(true, true);
  }
  
  private void setCenter(boolean paramBoolean1, boolean paramBoolean2)
  {
    float f3 = 0.0F;
    Matrix localMatrix = new Matrix();
    localMatrix.set(this.matrix);
    RectF localRectF = new RectF(0.0F, 0.0F, this.mBitmap.getWidth(), this.mBitmap.getHeight());
    localMatrix.mapRect(localRectF);
    float f1 = localRectF.height();
    float f4 = localRectF.width();
    int i;
    if (paramBoolean2)
    {
      i = this.mDisplyMetrcs.heightPixels;
      if (f1 < i) {
        f1 = (i - f1) / 2.0F - localRectF.top;
      }
    }
    for (;;)
    {
      float f2 = f3;
      if (paramBoolean1)
      {
        i = this.mDisplyMetrcs.widthPixels;
        if (f4 >= i) {
          break label208;
        }
        f2 = (i - f4) / 2.0F - localRectF.left;
      }
      for (;;)
      {
        this.matrix.postTranslate(f2, f1);
        return;
        if (localRectF.top > 0.0F)
        {
          f1 = -localRectF.top;
          break;
        }
        if (localRectF.bottom >= i) {
          break label259;
        }
        f1 = this.mImageView.getHeight() - localRectF.bottom;
        break;
        label208:
        if (localRectF.left > 0.0F)
        {
          f2 = -localRectF.left;
        }
        else
        {
          f2 = f3;
          if (localRectF.right < i) {
            f2 = i - localRectF.right;
          }
        }
      }
      label259:
      f1 = 0.0F;
    }
  }
  
  private void setMinZoom()
  {
    this.minScaleR = 1.0F;
  }
  
  private void setupViews()
  {
    this.mImageView.setImageBitmap(this.mBitmap);
    this.mImageView.setOnTouchListener(this);
    this.mDisplyMetrcs = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics(this.mDisplyMetrcs);
    setMinZoom();
    setCenter();
    this.mImageView.setScaleType(ImageView.ScaleType.MATRIX);
    this.mImageView.setImageMatrix(this.matrix);
    this.mImageView.setOnLongClickListener(new vn(this));
  }
  
  private float spacing(MotionEvent paramMotionEvent)
  {
    float f1 = paramMotionEvent.getX(0) - paramMotionEvent.getX(1);
    float f2 = paramMotionEvent.getY(0) - paramMotionEvent.getY(1);
    return FloatMath.sqrt(f1 * f1 + f2 * f2);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131362409: 
      this.myMenu.dismiss();
      if (this.mBitmap != null) {
        try
        {
          ImgUtil.saveMyBitmap(this.mBitmap, "/mnt/sdcard/", "apppark" + System.currentTimeMillis() + ".png");
          HQCHApplication.instance.initToast("保存成功", 0);
          return;
        }
        catch (IOException paramView)
        {
          HQCHApplication.instance.initToast("保存失败", 0);
          paramView.printStackTrace();
          return;
        }
      }
      HQCHApplication.instance.initToast("保存失败", 0);
      return;
    }
    this.myMenu.dismiss();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent().getStringExtra("picname");
    setContentView(2130903122);
    this.myMenu = new vo(this, this);
    this.mImageView = ((ImageView)findViewById(2131362406));
    this.progress = ((ProgressBar)findViewById(2131362407));
    this.mImageView.setBackgroundColor(-16777216);
    if ((paramBundle != null) && (paramBundle.startsWith("http://")))
    {
      this.a = new Handler();
      new ImgLoad2Cache(new vl(this, paramBundle)).loadPic(paramBundle);
    }
    do
    {
      return;
      this.progress.setVisibility(8);
      this.mBitmap = HQCHApplication.cacheUtil.getCachedBitmap(paramBundle);
    } while (this.mBitmap == null);
    setupViews();
  }
  
  protected void onDestroy()
  {
    if (this.mBitmap != null) {
      this.mBitmap = null;
    }
    super.onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (paramInt == 4)
    {
      if (this.myMenu.isShowing()) {
        this.myMenu.dismiss();
      }
    }
    else if (paramInt == 82)
    {
      if (!this.myMenu.isShowing()) {
        break label58;
      }
      this.myMenu.dismiss();
    }
    for (;;)
    {
      bool = true;
      return bool;
      finish();
      break;
      label58:
      this.myMenu.showAtLocation(this.mImageView, 80, 0, 0);
    }
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    }
    for (;;)
    {
      this.mImageView.setImageMatrix(this.matrix);
      checkView();
      return false;
      this.savedMatrix.set(this.matrix);
      this.prev.set(paramMotionEvent.getX(), paramMotionEvent.getY());
      this.mode = 1;
      this.isScale = false;
      if (this.myMenu.isShowing())
      {
        this.myMenu.dismiss();
        continue;
        this.isScale = true;
        this.dist = spacing(paramMotionEvent);
        if (spacing(paramMotionEvent) > 10.0F)
        {
          this.savedMatrix.set(this.matrix);
          midPoint(this.mid, paramMotionEvent);
          this.mode = 2;
          continue;
          this.isScale = false;
          this.mode = 0;
          continue;
          this.isScale = true;
          if (this.mode == 1)
          {
            this.matrix.set(this.savedMatrix);
            this.matrix.postTranslate(paramMotionEvent.getX() - this.prev.x, paramMotionEvent.getY() - this.prev.y);
          }
          else if (this.mode == 2)
          {
            float f = spacing(paramMotionEvent);
            if (f > 10.0F)
            {
              this.matrix.set(this.savedMatrix);
              f /= this.dist;
              this.matrix.postScale(f, f, this.mid.x, this.mid.y);
            }
          }
        }
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/base/ImagePreview.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */