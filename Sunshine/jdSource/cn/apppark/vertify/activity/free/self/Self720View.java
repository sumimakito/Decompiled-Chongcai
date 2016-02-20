package cn.apppark.vertify.activity.free.self;

import android.content.Context;
import android.graphics.Bitmap;
import android.opengl.GLSurfaceView;
import android.opengl.GLUtils;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.animation.DecelerateInterpolator;
import android.widget.ScrollView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.util.imge.CacheUtil;
import cn.apppark.mcd.vo.free.Self720ItemVo;
import cn.apppark.vertify.activity.ISelfView;
import javax.microedition.khronos.opengles.GL10;
import mg;
import mi;

public class Self720View
  extends GLSurfaceView
  implements GestureDetector.OnGestureListener, ISelfView
{
  public static float MAX_SCALE = 5.5F;
  public static float MIN_SCALE = 1.0F;
  private final float TOUCH_SCALE_FACTOR = 0.25F;
  public Handler a = new Handler();
  private DecelerateInterpolator animateInterpolator;
  private Bitmap bitmapTmp;
  private Context context;
  public int earthTextureId;
  private volatile long endTime;
  private boolean isPause = false;
  private float mPreviousX;
  private float mPreviousY;
  private mi mRenderer;
  private float m_DistCurr = -1.0F;
  private float m_DistPre = -1.0F;
  private GestureDetector m_Gestures;
  private float m_Width = 1.0F;
  private float m_Xscale = 1.8F;
  private float m_Yscale = 1.8F;
  private float m_x1 = 0.0F;
  private float m_x2 = 0.0F;
  private float m_y1 = 0.0F;
  private float m_y2 = 0.0F;
  private ScrollView parentScroll;
  private volatile long startTime;
  private volatile boolean threadStart = false;
  private float totalAnimDx;
  private float totalAnimDy;
  
  public Self720View(Context paramContext, Bitmap paramBitmap)
  {
    super(paramContext);
    this.bitmapTmp = paramBitmap;
    setBg(paramContext, paramBitmap);
  }
  
  public Self720View(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public Self720View(Context paramContext, Self720ItemVo paramSelf720ItemVo, ScrollView paramScrollView)
  {
    super(paramContext);
    this.parentScroll = paramScrollView;
    this.context = paramContext;
    requestFocus();
    setFocusableInTouchMode(true);
    setBg(paramContext, HQCHApplication.cacheUtil.getCachedBitmap(paramSelf720ItemVo.getData_pic()));
  }
  
  private void setTo1024()
  {
    MAX_SCALE = 5.5F;
    MIN_SCALE = 0.6F;
    this.m_Xscale = 1.8F;
    this.m_Yscale = 1.8F;
  }
  
  private void setTo512()
  {
    MAX_SCALE = 4.5F;
    MIN_SCALE = 0.5F;
    this.m_Xscale = 1.2F;
    this.m_Yscale = 1.2F;
  }
  
  public void init() {}
  
  public int initTexture(GL10 paramGL10, Bitmap paramBitmap)
  {
    int[] arrayOfInt = new int[1];
    paramGL10.glGenTextures(1, arrayOfInt, 0);
    int i = arrayOfInt[0];
    paramGL10.glBindTexture(3553, i);
    paramGL10.glTexParameterf(3553, 10241, 9728.0F);
    paramGL10.glTexParameterf(3553, 10240, 9729.0F);
    paramGL10.glTexParameterf(3553, 10242, 33071.0F);
    paramGL10.glTexParameterf(3553, 10243, 33071.0F);
    GLUtils.texImage2D(3553, 0, paramBitmap, 0);
    paramBitmap.recycle();
    return i;
  }
  
  public boolean isOnMethod()
  {
    return true;
  }
  
  public void onAnimateMove(float paramFloat1, float paramFloat2, long paramLong)
  {
    this.animateInterpolator = new DecelerateInterpolator();
    this.startTime = System.currentTimeMillis();
    this.endTime = (this.startTime + paramLong);
    this.totalAnimDx = (paramFloat1 / 300000.0F);
    this.totalAnimDy = (paramFloat2 / 250000.0F);
    if (!this.threadStart) {
      new mg(this).start();
    }
  }
  
  public void onDestroy() {}
  
  public boolean onDown(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    onAnimateMove(paramFloat1, paramFloat2, 1500L);
    return false;
  }
  
  public void onLongPress(MotionEvent paramMotionEvent) {}
  
  public void onPause() {}
  
  public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    return false;
  }
  
  public void onShowPress(MotionEvent paramMotionEvent) {}
  
  public boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    float f1;
    float f2;
    float f3;
    if (paramMotionEvent.getAction() == 1)
    {
      this.parentScroll.requestDisallowInterceptTouchEvent(false);
      if ((paramMotionEvent.getAction() == 1) || (paramMotionEvent.getAction() == 0)) {
        this.m_DistPre = -1.0F;
      }
      f1 = paramMotionEvent.getY();
      f2 = paramMotionEvent.getX();
      if (paramMotionEvent.getPointerCount() <= 1) {
        break label266;
      }
      this.m_x1 = paramMotionEvent.getX(0);
      this.m_y1 = paramMotionEvent.getY(0);
      this.m_x2 = paramMotionEvent.getX(1);
      this.m_y2 = paramMotionEvent.getY(1);
      this.m_DistCurr = ((float)Math.sqrt(Math.pow(this.m_x2 - this.m_x1, 2.0D) + Math.pow(this.m_y2 - this.m_y1, 2.0D)));
      if (this.m_DistPre > 0.0F)
      {
        f3 = this.m_Width / 2.0F;
        f3 = (this.m_DistCurr - this.m_DistPre) / f3;
        this.m_Xscale += f3;
        this.m_Yscale = (f3 + this.m_Yscale);
        if (this.m_Xscale > MAX_SCALE)
        {
          this.m_Xscale = MAX_SCALE;
          this.m_Yscale = MAX_SCALE;
        }
        if (this.m_Xscale < MIN_SCALE)
        {
          this.m_Xscale = MIN_SCALE;
          this.m_Yscale = MIN_SCALE;
        }
      }
      this.m_DistPre = this.m_DistCurr;
    }
    for (;;)
    {
      this.mPreviousY = f1;
      this.mPreviousX = f2;
      return true;
      this.parentScroll.requestDisallowInterceptTouchEvent(true);
      break;
      label266:
      this.m_Gestures.onTouchEvent(paramMotionEvent);
      this.m_DistCurr = -1.0F;
      switch (paramMotionEvent.getAction())
      {
      default: 
        break;
      case 2: 
        f3 = this.mPreviousY;
        float f4 = this.mPreviousX;
        this.mRenderer.a.increaseY((f2 - f4) * 0.25F);
        this.mRenderer.a.increaseX(-(f1 - f3) * 0.25F);
      }
    }
  }
  
  public void setBg(Context paramContext, Bitmap paramBitmap)
  {
    this.bitmapTmp = paramBitmap;
    if (paramBitmap.getHeight() > 512)
    {
      MAX_SCALE = 5.5F;
      MIN_SCALE = 0.6F;
      this.m_Xscale = 1.8F;
    }
    for (this.m_Yscale = 1.8F;; this.m_Yscale = 1.2F)
    {
      this.mRenderer = new mi(this, null);
      setRenderer(this.mRenderer);
      setRenderMode(1);
      this.m_Gestures = new GestureDetector(paramContext, this);
      return;
      MAX_SCALE = 4.5F;
      MIN_SCALE = 0.5F;
      this.m_Xscale = 1.2F;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/Self720View.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */