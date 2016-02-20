import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.EditText;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.dyn.DynCommentReturnVo;
import cn.apppark.mcd.widget.DialogTwoBtn;
import cn.apppark.mcd.widget.DialogTwoBtn.Builder;
import cn.apppark.vertify.activity.buy.BuyMsgCommentRep;
import cn.apppark.vertify.base.ClientPersionInfo;
import java.util.ArrayList;

public final class cy
  implements AdapterView.OnItemClickListener
{
  public cy(BuyMsgCommentRep paramBuyMsgCommentRep) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ((BuyMsgCommentRep.a(this.a, BuyMsgCommentRep.b(this.a))) || (paramInt == 1)) {
      return;
    }
    if (BuyMsgCommentRep.e(this.a).getUserId() == null)
    {
      HQCHApplication.instance.initToast("请登录", 0);
      paramAdapterView = new Intent(this.a, YYGYContants.getLoginClass());
      this.a.startActivityForResult(paramAdapterView, 2);
      return;
    }
    if (BuyMsgCommentRep.e(this.a).getUserId().equals(((DynCommentReturnVo)BuyMsgCommentRep.a(this.a).get(paramInt - 1)).getUserId()))
    {
      new DialogTwoBtn.Builder(this.a).setTitle(2131230723).setMessage("确定删除该评论?").setPositiveButton(2131230728, new da(this, paramInt)).setNegativeButton(2131230729, new cz(this)).create().show();
      return;
    }
    BuyMsgCommentRep.a(this.a, "回复" + PublicUtil.getShieldString(((DynCommentReturnVo)BuyMsgCommentRep.a(this.a).get(paramInt - 1)).getUserName()) + ": ");
    BuyMsgCommentRep.b(this.a, ((DynCommentReturnVo)BuyMsgCommentRep.a(this.a).get(paramInt - 1)).getPid());
    BuyMsgCommentRep.c(this.a, ((DynCommentReturnVo)BuyMsgCommentRep.a(this.a).get(paramInt - 1)).getNewsId());
    BuyMsgCommentRep.d(this.a, ((DynCommentReturnVo)BuyMsgCommentRep.a(this.a).get(paramInt - 1)).getUserId());
    BuyMsgCommentRep.e(this.a, ((DynCommentReturnVo)BuyMsgCommentRep.a(this.a).get(paramInt - 1)).getUserName());
    BuyMsgCommentRep.b(this.a).setHint("回复" + PublicUtil.getShieldString(((DynCommentReturnVo)BuyMsgCommentRep.a(this.a).get(paramInt - 1)).getUserName()) + ": ");
    BuyMsgCommentRep.c(this.a).setVisibility(0);
    BuyMsgCommentRep.b(this.a, BuyMsgCommentRep.b(this.a));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */