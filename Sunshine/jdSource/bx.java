import android.content.Intent;
import android.view.View;
import cn.apppark.vertify.activity.buy.BuyAddAddress;
import cn.apppark.vertify.activity.buy.BuyAddressList;
import cn.apppark.vertify.adapter.TMyHistoryAdapter.onRightItem2ClickListener;
import java.io.Serializable;
import java.util.ArrayList;

final class bx
  implements TMyHistoryAdapter.onRightItem2ClickListener
{
  bx(br parambr) {}
  
  public final void onRightItem2Click(View paramView, int paramInt)
  {
    paramView = new Intent(BuyAddressList.a(this.a.a), BuyAddAddress.class);
    paramView.putExtra("addressvo", (Serializable)BuyAddressList.b(this.a.a).get(paramInt));
    this.a.a.startActivityForResult(paramView, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/bx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */