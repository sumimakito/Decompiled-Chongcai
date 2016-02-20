import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.vertify.activity.free.dyn.DynMsgCard5011;
import cn.apppark.vertify.activity.free.dyn.DynMsgDetail;
import java.io.Serializable;
import java.util.ArrayList;

public final class ha
  implements AdapterView.OnItemClickListener
{
  public ha(DynMsgCard5011 paramDynMsgCard5011) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new Intent(HQCHApplication.mainActivity, DynMsgDetail.class);
    paramAdapterView.putExtra("type", 2);
    paramView = new Bundle();
    paramView.putSerializable("vo", (Serializable)DynMsgCard5011.a(this.a).get(paramInt - 1));
    paramAdapterView.putExtra("bund", paramView);
    HQCHApplication.mainActivity.startActivity(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ha.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */