import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.vo.dyn.DynCommentReturnVo;
import cn.apppark.vertify.activity.free.dyn.DynSubComment;
import java.util.ArrayList;

final class kk
  implements DialogInterface.OnClickListener
{
  kk(ki paramki, int paramInt) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (DynSubComment.g(this.b.a) == null) {
      DynSubComment.a(this.b.a, HQCHApplication.createLoadingDialog(DynSubComment.h(this.b.a), 2131230756));
    }
    DynSubComment.b(this.b.a, this.a - 1);
    DynSubComment.g(this.b.a).show();
    DynSubComment.a(this.b.a, 4, ((DynCommentReturnVo)DynSubComment.a(this.b.a).get(this.a - 1)).getId(), ((DynCommentReturnVo)DynSubComment.a(this.b.a).get(this.a - 1)).getPid());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/kk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */