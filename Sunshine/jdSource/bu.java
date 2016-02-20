import android.view.View;
import cn.apppark.mcd.widget.DialogTwoBtn;
import cn.apppark.mcd.widget.DialogTwoBtn.Builder;
import cn.apppark.vertify.activity.buy.BuyAddressList;
import cn.apppark.vertify.adapter.TMyHistoryAdapter.onRightItemClickListener;

final class bu
  implements TMyHistoryAdapter.onRightItemClickListener
{
  bu(br parambr) {}
  
  public final void onRightItemClick(View paramView, int paramInt)
  {
    BuyAddressList.a(this.a.a, paramInt - 1);
    new DialogTwoBtn.Builder(BuyAddressList.a(this.a.a)).setTitle(2131230723).setMessage("确定删除？").setPositiveButton(2131230728, new bw(this)).setNegativeButton(2131230729, new bv(this)).create().show();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/bu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */