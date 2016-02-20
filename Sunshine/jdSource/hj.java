import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.mcd.widget.IReloadDataProgress;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.free.dyn.DynMsgDetail;

final class hj
  implements IReloadDataProgress
{
  hj(hi paramhi) {}
  
  public final void reloadData()
  {
    DynMsgDetail.b(this.a.a).show(2131230756, true, true, "255");
    DynMsgDetail.a(this.a.a, 1, DynMsgDetail.a(this.a.a).getId());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/hj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */