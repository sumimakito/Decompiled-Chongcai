import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.EditText;
import cn.apppark.vertify.activity.buy.adapter.BuyBuyCarAdapter;

public final class gj
  implements View.OnTouchListener
{
  EditText a;
  
  public gj(BuyBuyCarAdapter paramBuyBuyCarAdapter, EditText paramEditText)
  {
    this.a = paramEditText;
  }
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    BuyBuyCarAdapter.a(this.b, this.a);
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/gj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */