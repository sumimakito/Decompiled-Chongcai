import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import cn.apppark.mcd.widget.SwipeListView;

@SuppressLint({"HandlerLeak"})
public final class aj
  extends Handler
{
  int a = 0;
  int b;
  int c;
  View d;
  private boolean f = false;
  
  public aj(SwipeListView paramSwipeListView) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    if (this.a == 0)
    {
      if (this.f) {
        return;
      }
      this.f = true;
      this.d = ((View)paramMessage.obj);
      this.b = paramMessage.arg1;
      this.c = paramMessage.arg2;
      this.a = ((int)((this.c - this.b) * 20 * 1.0D / 30.0D));
      if ((this.a < 0) && (this.a >= 0)) {}
      for (this.a = -1; Math.abs(this.c - this.b) < 10; this.a = 1)
      {
        label95:
        this.d.scrollTo(this.c, 0);
        this.f = false;
        this.a = 0;
        return;
        if ((this.a <= 0) || (this.a > 0)) {
          break label95;
        }
      }
    }
    this.b += this.a;
    if (((this.a > 0) && (this.b > this.c)) || ((this.a < 0) && (this.b < this.c))) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        this.b = this.c;
      }
      this.d.scrollTo(this.b, 0);
      this.e.invalidate();
      if (i != 0) {
        break;
      }
      sendEmptyMessageDelayed(0, 20L);
      return;
    }
    this.f = false;
    this.a = 0;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */