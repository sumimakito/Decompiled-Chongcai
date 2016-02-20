package cn.apppark.vertify.activity.free.self;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import cn.apppark.mcd.widget.Mp4VideoView;

class Mp4PlayerActivity$5
  implements View.OnClickListener
{
  Mp4PlayerActivity$5(Mp4PlayerActivity paramMp4PlayerActivity) {}
  
  public void onClick(View paramView)
  {
    Mp4PlayerActivity.e(this.a);
    if (Mp4PlayerActivity.d(this.a))
    {
      Mp4PlayerActivity.b(this.a).start();
      Mp4PlayerActivity.c(this.a).setImageResource(2130837750);
      Mp4PlayerActivity.f(this.a);
      paramView = this.a;
      if (Mp4PlayerActivity.d(this.a)) {
        break label95;
      }
    }
    label95:
    for (boolean bool = true;; bool = false)
    {
      Mp4PlayerActivity.b(paramView, bool);
      return;
      Mp4PlayerActivity.b(this.a).pause();
      Mp4PlayerActivity.c(this.a).setImageResource(2130837751);
      break;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/Mp4PlayerActivity$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */