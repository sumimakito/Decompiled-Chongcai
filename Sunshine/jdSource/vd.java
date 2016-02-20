import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.PopupWindow;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.vertify.adapter.TCommnetAdapter;
import cn.apppark.vertify.adapter.TCommnetAdapter.TPop.1;
import cn.apppark.vertify.adapter.TCommnetAdapter.TPop.2;

public final class vd
  extends PopupWindow
{
  public vd(TCommnetAdapter paramTCommnetAdapter)
  {
    super(TCommnetAdapter.e(paramTCommnetAdapter));
    View localView = ((LayoutInflater)TCommnetAdapter.e(paramTCommnetAdapter).getSystemService("layout_inflater")).inflate(2130903233, null);
    TCommnetAdapter.a(paramTCommnetAdapter, (Button)localView.findViewById(2131362956));
    TCommnetAdapter.b(paramTCommnetAdapter, (Button)localView.findViewById(2131362957));
    TCommnetAdapter.k(paramTCommnetAdapter).setOnClickListener(new TCommnetAdapter.TPop.1(this, paramTCommnetAdapter));
    TCommnetAdapter.c(paramTCommnetAdapter).setOnClickListener(new TCommnetAdapter.TPop.2(this, paramTCommnetAdapter));
    ButtonColorFilter.setButtonFocusChanged(TCommnetAdapter.c(paramTCommnetAdapter));
    ButtonColorFilter.setButtonFocusChanged(TCommnetAdapter.k(paramTCommnetAdapter));
    setAnimationStyle(2131099666);
    setBackgroundDrawable(new ColorDrawable(0));
    setContentView(localView);
    setWidth(-2);
    setHeight(PublicUtil.dip2px(35.0F));
    setOutsideTouchable(true);
    setTouchable(true);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/vd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */