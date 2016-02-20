package cn.apppark.vertify.activity.free.dyn;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import cn.apppark.mcd.util.jsonparse.JsonParserUtil;
import com.google.gson.JsonElement;
import id;

public class DynMsgSubmit5001$MyonClickListener
  implements View.OnClickListener
{
  TextView a;
  TextView b;
  JsonElement c;
  
  public DynMsgSubmit5001$MyonClickListener(DynMsgSubmit5001 paramDynMsgSubmit5001, JsonElement paramJsonElement, TextView paramTextView1, TextView paramTextView2)
  {
    this.a = paramTextView1;
    this.c = paramJsonElement;
    this.b = paramTextView2;
  }
  
  public void onClick(View paramView)
  {
    paramView = new id(this).getType();
    paramView = JsonParserUtil.parseElement2ListDirect(this.c, paramView);
    if (paramView != null) {
      DynMsgSubmit5001.a(this.d, paramView, this.a, this.b);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$MyonClickListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */