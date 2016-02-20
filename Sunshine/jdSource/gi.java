import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.vertify.activity.buy.adapter.BuyBuyCarAdapter;

public final class gi
  implements View.OnFocusChangeListener
{
  EditText a;
  
  public gi(BuyBuyCarAdapter paramBuyBuyCarAdapter, EditText paramEditText)
  {
    this.a = paramEditText;
  }
  
  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if ((!paramView.equals(BuyBuyCarAdapter.a(this.b))) && (!StringUtil.isNotZero(this.a.getText().toString()))) {
      this.a.setText("1");
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/gi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */