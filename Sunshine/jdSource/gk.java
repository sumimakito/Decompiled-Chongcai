import android.text.Editable;
import android.text.TextWatcher;
import cn.apppark.vertify.activity.buy.adapter.BuyBuyCarAdapter;
import cn.apppark.vertify.activity.buy.adapter.BuyBuyCarAdapter.ViewHolder;

public final class gk
  implements TextWatcher
{
  BuyBuyCarAdapter.ViewHolder a;
  int b;
  int c;
  String d;
  
  public gk(BuyBuyCarAdapter paramBuyBuyCarAdapter, BuyBuyCarAdapter.ViewHolder paramViewHolder, String paramString, int paramInt1, int paramInt2)
  {
    this.a = paramViewHolder;
    this.b = 0;
    this.c = paramInt2;
    this.d = paramString;
  }
  
  public final void afterTextChanged(Editable paramEditable)
  {
    BuyBuyCarAdapter.a(this.e, this.a, this.b, this.c, this.d, false);
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/gk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */