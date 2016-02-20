import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.dyn.DynCommentReturnVo;
import cn.apppark.mcd.widget.DialogTwoBtn;
import cn.apppark.mcd.widget.DialogTwoBtn.Builder;
import cn.apppark.vertify.activity.free.dyn.DynSubComment;
import cn.apppark.vertify.base.ClientPersionInfo;
import java.util.ArrayList;

public final class ki
  implements AdapterView.OnItemClickListener
{
  public ki(DynSubComment paramDynSubComment) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (DynSubComment.a(this.a, DynSubComment.b(this.a))) {
      return;
    }
    if (DynSubComment.f(this.a).getUserId() == null)
    {
      DynSubComment.a(this.a, "请登录", 0);
      paramAdapterView = new Intent(this.a, YYGYContants.getLoginClass());
      this.a.startActivityForResult(paramAdapterView, 2);
      return;
    }
    if (DynSubComment.f(this.a).getUserId().equals(((DynCommentReturnVo)DynSubComment.a(this.a).get(paramInt - 1)).getUserId()))
    {
      new DialogTwoBtn.Builder(this.a).setTitle(2131230723).setMessage("确定删除该评论?").setPositiveButton(2131230728, new kk(this, paramInt)).setNegativeButton(2131230729, new kj(this)).create().show();
      return;
    }
    DynSubComment.a(this.a, "回复" + PublicUtil.getShieldString(((DynCommentReturnVo)DynSubComment.a(this.a).get(paramInt - 1)).getUserName()) + ": ");
    DynSubComment.b(this.a, ((DynCommentReturnVo)DynSubComment.a(this.a).get(paramInt - 1)).getId());
    DynSubComment.c(this.a, ((DynCommentReturnVo)DynSubComment.a(this.a).get(paramInt - 1)).getUserId());
    DynSubComment.d(this.a, ((DynCommentReturnVo)DynSubComment.a(this.a).get(paramInt - 1)).getUserName());
    DynSubComment.b(this.a).setHint("回复" + PublicUtil.getShieldString(((DynCommentReturnVo)DynSubComment.a(this.a).get(paramInt - 1)).getUserName()) + ": ");
    DynSubComment.b(this.a, DynSubComment.b(this.a));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ki.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */