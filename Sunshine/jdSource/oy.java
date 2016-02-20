import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.mcd.vo.free.LBSReturnVo;
import cn.apppark.vertify.activity.persion.PersonLbsMsg;
import cn.apppark.vertify.base.PushWebView;
import java.util.ArrayList;

public final class oy
  implements AdapterView.OnItemClickListener
{
  public oy(PersonLbsMsg paramPersonLbsMsg) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new Intent(this.a, PushWebView.class);
    paramAdapterView.putExtra("urlStr", ((LBSReturnVo)PersonLbsMsg.b(this.a).get(paramInt - 1)).getMsgUrl());
    paramAdapterView.putExtra("id", ((LBSReturnVo)PersonLbsMsg.b(this.a).get(paramInt - 1)).getId());
    this.a.startActivity(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/oy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */