import android.view.View;
import cn.apppark.mcd.widget.DialogTwoBtn;
import cn.apppark.mcd.widget.DialogTwoBtn.Builder;
import cn.apppark.vertify.activity.buy.BuyProductCollection;
import cn.apppark.vertify.adapter.TCollectionAdapter.onRightItemClickListener;

final class fa
  implements TCollectionAdapter.onRightItemClickListener
{
  fa(ex paramex) {}
  
  public final void onRightItemClick(View paramView, int paramInt)
  {
    BuyProductCollection.a(this.a.a, paramInt);
    new DialogTwoBtn.Builder(BuyProductCollection.h(this.a.a)).setTitle(2131230723).setMessage("确定删除？").setPositiveButton(2131230728, new fc(this)).setNegativeButton(2131230729, new fb(this)).create().show();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/fa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */