import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.free.SelfDefineItemVo;
import cn.apppark.vertify.PageGroup;
import cn.apppark.vertify.activity.free.self.SelfImageView;

@SuppressLint({"HandlerLeak"})
public final class mp
  extends Handler
{
  private mp(SelfImageView paramSelfImageView) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    cn.apppark.ckj10185912.YYGYContants.mainPageId = SelfImageView.b(this.a).getnPageId();
    HQCHApplication.mainActivity.pageGroup.goNextPage(SelfImageView.a(this.a).getSys_pageID(), SelfImageView.b(this.a).getnPageId(), false, SelfImageView.b(this.a).getnPageType(), SelfImageView.b(this.a).getnPageModuleType());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/mp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */