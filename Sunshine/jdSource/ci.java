import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import cn.apppark.mcd.widget.DialogTwoBtn;
import cn.apppark.mcd.widget.DialogTwoBtn.Builder;
import cn.apppark.vertify.activity.buy.BuyCollectionMsgList;

public final class ci
  implements AdapterView.OnItemLongClickListener
{
  public ci(BuyCollectionMsgList paramBuyCollectionMsgList) {}
  
  public final boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    BuyCollectionMsgList.a(this.a, paramInt - 1);
    new DialogTwoBtn.Builder(BuyCollectionMsgList.d(this.a)).setTitle(2131230723).setMessage("确定删除？").setPositiveButton(2131230728, new ck(this)).setNegativeButton(2131230729, new cj(this)).create().show();
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ci.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */