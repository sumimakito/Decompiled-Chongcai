import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfDefineItemVo;
import cn.apppark.vertify.activity.free.self.SelfMp3View;

public final class mq
  implements MediaPlayer.OnErrorListener
{
  public mq(SelfMp3View paramSelfMp3View) {}
  
  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    SelfMp3View.e(this.a).reset();
    SelfMp3View.b(this.a, false);
    SelfMp3View.a(this.a, true);
    FunctionPublic.setImageDrawable(SelfMp3View.d(this.a).getStyle_startPic(), SelfMp3View.f(this.a));
    HQCHApplication.getInstance().initToast("播放错误", 0);
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/mq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */