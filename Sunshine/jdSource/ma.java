import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import cn.apppark.mcd.widget.Mp4VideoView;
import cn.apppark.vertify.activity.free.self.Mp4PlayerActivity;

final class ma
  implements DialogInterface.OnClickListener
{
  ma(lz paramlz) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Mp4PlayerActivity.b(this.a.a).stopPlayback();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ma.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */