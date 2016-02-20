import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.mcd.vo.dyn.DynCommentReturnVo;
import cn.apppark.vertify.activity.buy.BuyMsgCommentList;
import cn.apppark.vertify.activity.buy.BuyMsgCommentRep;
import java.util.ArrayList;

public final class cr
  implements AdapterView.OnItemClickListener
{
  public cr(BuyMsgCommentList paramBuyMsgCommentList) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new Intent(BuyMsgCommentList.c(this.a), BuyMsgCommentRep.class);
    paramAdapterView.putExtra("id", ((DynCommentReturnVo)BuyMsgCommentList.a(this.a).get(paramInt - 1)).getPid());
    this.a.startActivity(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */