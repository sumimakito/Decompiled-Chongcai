import android.widget.LinearLayout;
import cn.apppark.mcd.widget.LazyScrollView.OnScrollListenerLazy;
import cn.apppark.mcd.widget.WaterfallImageView;
import cn.apppark.vertify.activity.free.dyn.DynMsgWater5012;
import java.util.ArrayList;
import java.util.HashMap;

public final class ie
  implements LazyScrollView.OnScrollListenerLazy
{
  public ie(DynMsgWater5012 paramDynMsgWater5012) {}
  
  public final void onAutoScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    DynMsgWater5012.a(this.a, this.a.getMeasuredHeight());
    int[] arrayOfInt;
    if (paramInt2 > paramInt4) {
      if (paramInt2 > DynMsgWater5012.c(this.a) * 2)
      {
        paramInt1 = 0;
        try
        {
          while (paramInt1 < DynMsgWater5012.d(this.a))
          {
            LinearLayout localLinearLayout1 = (LinearLayout)DynMsgWater5012.e(this.a).get(paramInt1);
            if (((Integer)DynMsgWater5012.h(this.a)[paramInt1].get(Integer.valueOf(Math.min(DynMsgWater5012.f(this.a)[paramInt1] + 1, DynMsgWater5012.g(this.a)[paramInt1])))).intValue() <= DynMsgWater5012.c(this.a) * 3 + paramInt2)
            {
              ((WaterfallImageView)((LinearLayout)DynMsgWater5012.e(this.a).get(paramInt1)).getChildAt(Math.min(DynMsgWater5012.f(this.a)[paramInt1] + 1, DynMsgWater5012.g(this.a)[paramInt1]))).Reload();
              DynMsgWater5012.f(this.a)[paramInt1] = Math.min(DynMsgWater5012.f(this.a)[paramInt1] + 1, DynMsgWater5012.g(this.a)[paramInt1]);
            }
            if (((Integer)DynMsgWater5012.h(this.a)[paramInt1].get(Integer.valueOf(DynMsgWater5012.i(this.a)[paramInt1]))).intValue() < paramInt2 - DynMsgWater5012.c(this.a) * 2)
            {
              paramInt3 = DynMsgWater5012.i(this.a)[paramInt1];
              arrayOfInt = DynMsgWater5012.i(this.a);
              arrayOfInt[paramInt1] += 1;
              ((WaterfallImageView)localLinearLayout1.getChildAt(paramInt3)).recycle();
            }
            paramInt1 += 1;
          }
          return;
        }
        catch (Exception localException1)
        {
          localException1.printStackTrace();
        }
      }
    }
    for (;;)
    {
      paramInt1 = 0;
      try
      {
        while (paramInt1 < DynMsgWater5012.d(this.a))
        {
          LinearLayout localLinearLayout2 = (LinearLayout)DynMsgWater5012.e(this.a).get(paramInt1);
          if (((Integer)DynMsgWater5012.h(this.a)[paramInt1].get(Integer.valueOf(DynMsgWater5012.f(this.a)[paramInt1]))).intValue() > DynMsgWater5012.c(this.a) * 3 + paramInt2)
          {
            ((WaterfallImageView)localLinearLayout2.getChildAt(DynMsgWater5012.f(this.a)[paramInt1])).recycle();
            arrayOfInt = DynMsgWater5012.f(this.a);
            arrayOfInt[paramInt1] -= 1;
          }
          if (((Integer)DynMsgWater5012.h(this.a)[paramInt1].get(Integer.valueOf(Math.max(DynMsgWater5012.i(this.a)[paramInt1] - 1, 0)))).intValue() >= paramInt2 - DynMsgWater5012.c(this.a) * 2)
          {
            ((WaterfallImageView)localLinearLayout2.getChildAt(Math.max(DynMsgWater5012.i(this.a)[paramInt1] - 1, 0))).Reload();
            DynMsgWater5012.i(this.a)[paramInt1] = Math.max(DynMsgWater5012.i(this.a)[paramInt1] - 1, 0);
          }
          paramInt1 += 1;
        }
        return;
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
      }
    }
  }
  
  public final void onBottom()
  {
    if (this.a.isMore()) {
      DynMsgWater5012.a(this.a, DynMsgWater5012.a(this.a), DynMsgWater5012.b(this.a));
    }
  }
  
  public final void onScroll() {}
  
  public final void onTop() {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ie.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */