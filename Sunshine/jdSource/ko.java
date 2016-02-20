import cn.apppark.mcd.vo.dyn.DynCommentReturnVo;
import cn.apppark.vertify.activity.free.dyn.DynSubComment;
import cn.apppark.vertify.adapter.DynCommentAdapter.MyClickGood;
import java.util.ArrayList;

final class ko
  implements DynCommentAdapter.MyClickGood
{
  ko(kl paramkl) {}
  
  public final void onClickGood(int paramInt)
  {
    DynSubComment.d(this.a.a, ((DynCommentReturnVo)DynSubComment.a(this.a.a).get(paramInt)).getId(), paramInt);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ko.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */