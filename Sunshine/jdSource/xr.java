import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.assist.FailReason.FailType;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;

final class xr
  implements Runnable
{
  xr(xp paramxp, FailReason.FailType paramFailType, Throwable paramThrowable) {}
  
  public final void run()
  {
    if (this.c.c.shouldShowImageOnFail()) {
      this.c.b.setImageDrawable(this.c.c.getImageOnFail(xp.a(this.c).a));
    }
    this.c.d.onLoadingFailed(this.c.a, this.c.b.getWrappedView(), new FailReason(this.a, this.b));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/xr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */