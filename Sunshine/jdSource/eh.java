import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.mcd.vo.buy.BuyProCommentVo;
import cn.apppark.vertify.activity.buy.BuyProCommentDetail;
import cn.apppark.vertify.activity.buy.BuyProCommentList;
import java.util.ArrayList;

public final class eh
  implements AdapterView.OnItemClickListener
{
  public eh(BuyProCommentList paramBuyProCommentList) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new Intent();
    paramAdapterView.setClass(BuyProCommentList.a(this.a), BuyProCommentDetail.class);
    paramAdapterView.putExtra("id", ((BuyProCommentVo)BuyProCommentList.b(this.a).get(paramInt - 1)).getId());
    this.a.startActivity(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/eh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */