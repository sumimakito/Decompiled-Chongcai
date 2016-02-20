import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.vo.dyn.DynCommentReturnVo;
import cn.apppark.vertify.activity.buy.BuyMsgCommentRep;
import java.util.ArrayList;

final class da
  implements DialogInterface.OnClickListener
{
  da(cy paramcy, int paramInt) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (BuyMsgCommentRep.f(this.b.a) == null) {
      BuyMsgCommentRep.a(this.b.a, HQCHApplication.createLoadingDialog(BuyMsgCommentRep.g(this.b.a), 2131230756));
    }
    BuyMsgCommentRep.b(this.b.a, this.a - 1);
    BuyMsgCommentRep.f(this.b.a).show();
    BuyMsgCommentRep.a(this.b.a, 4, ((DynCommentReturnVo)BuyMsgCommentRep.a(this.b.a).get(this.a - 1)).getId(), ((DynCommentReturnVo)BuyMsgCommentRep.a(this.b.a).get(this.a - 1)).getPid());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/da.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */