import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import cn.apppark.vertify.activity.tieba.TTopicDetail;

public final class tu
  extends PopupWindow
{
  public tu(TTopicDetail paramTTopicDetail, Context paramContext)
  {
    super(paramContext);
    paramContext = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903235, null);
    TTopicDetail.a(paramTTopicDetail, (Button)paramContext.findViewById(2131362959));
    TTopicDetail.b(paramTTopicDetail, (Button)paramContext.findViewById(2131362963));
    TTopicDetail.a(paramTTopicDetail, (TextView)paramContext.findViewById(2131362964));
    TTopicDetail.a(paramTTopicDetail, (LinearLayout)paramContext.findViewById(2131362958));
    TTopicDetail.b(paramTTopicDetail, (LinearLayout)paramContext.findViewById(2131362960));
    TTopicDetail.c(paramTTopicDetail, (LinearLayout)paramContext.findViewById(2131362962));
    TTopicDetail.d(paramTTopicDetail, (LinearLayout)paramContext.findViewById(2131362965));
    TTopicDetail.C(paramTTopicDetail).setOnClickListener(paramTTopicDetail);
    TTopicDetail.D(paramTTopicDetail).setOnClickListener(paramTTopicDetail);
    TTopicDetail.E(paramTTopicDetail).setOnClickListener(paramTTopicDetail);
    TTopicDetail.F(paramTTopicDetail).setOnClickListener(paramTTopicDetail);
    setAnimationStyle(2131099667);
    setBackgroundDrawable(new ColorDrawable(0));
    setContentView(paramContext);
    setWidth(-1);
    setHeight(-2);
    setOutsideTouchable(true);
    setTouchable(true);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/tu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */