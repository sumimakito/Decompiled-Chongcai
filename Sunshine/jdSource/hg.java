import android.content.Intent;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.vertify.activity.free.dyn.DynMsgDetail;
import cn.apppark.vertify.activity.free.dyn.PicGallery;

public final class hg
  implements Runnable
{
  public hg(DynMsgDetail paramDynMsgDetail, int paramInt) {}
  
  public final void run()
  {
    this.b.a = true;
    Intent localIntent = new Intent(this.b, PicGallery.class);
    localIntent.putExtra("urls", DynMsgDetail.a(this.b).getPics());
    localIntent.putExtra("position", this.a);
    this.b.startActivity(localIntent);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/hg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */