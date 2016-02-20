import cn.apppark.mcd.widget.IReloadDataProgress;
import cn.apppark.vertify.activity.free.dyn.SProductBase;
import cn.apppark.vertify.activity.free.dyn.STogetherDetail;

public final class lt
  implements IReloadDataProgress
{
  public lt(STogetherDetail paramSTogetherDetail) {}
  
  public final void reloadData()
  {
    STogetherDetail.b(this.a).initData();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/lt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */