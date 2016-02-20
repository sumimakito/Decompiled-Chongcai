import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.mcd.vo.buy.BuyProCommentVo;
import cn.apppark.vertify.activity.buy.BuyProCommentList;
import cn.apppark.vertify.activity.buy.BuyProCommentSub;
import java.util.ArrayList;

public final class ej
  implements AdapterView.OnItemClickListener
{
  public ej(BuyProCommentList paramBuyProCommentList) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new Intent();
    paramAdapterView.setClass(BuyProCommentList.a(this.a), BuyProCommentSub.class);
    paramAdapterView.putExtra("id", ((BuyProCommentVo)BuyProCommentList.c(this.a).get(paramInt - 1)).getId());
    this.a.startActivityForResult(paramAdapterView, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ej.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */