import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.vo.dyn.DynProductVo;
import cn.apppark.mcd.vo.dyn.STogetherItemVo;
import cn.apppark.mcd.vo.dyn.STogetherReturnVo;
import cn.apppark.vertify.activity.free.dyn.STogetherBase;
import cn.apppark.vertify.activity.free.dyn.STogetherDetail;
import java.util.ArrayList;

public final class lj
  implements AdapterView.OnItemClickListener
{
  public lj(STogetherBase paramSTogetherBase) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new DynProductVo();
    paramAdapterView.setStyle_tabPosition(STogetherBase.a(this.a).getShop().getStyle_tabPosition());
    paramAdapterView.setStyle_groupInfoShow(STogetherBase.a(this.a).getShop().getStyle_groupInfoShow());
    paramAdapterView.setSys_moduleType(STogetherBase.a(this.a).getShop().getSys_moduleType());
    paramAdapterView.setGroupId(((STogetherReturnVo)STogetherBase.b(this.a).get(paramInt - 2)).getGroupId());
    paramView = new Intent(HQCHApplication.mainActivity, STogetherDetail.class);
    paramView.putExtra("detail", paramAdapterView);
    STogetherBase.c(this.a).startActivity(paramView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/lj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */