import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.free.SelfGridItem2Vo;
import cn.apppark.vertify.PageGroup;
import cn.apppark.vertify.activity.free.typenine.SelfGridView4008;
import java.util.ArrayList;

public final class nw
  implements AdapterView.OnItemClickListener
{
  public nw(SelfGridView4008 paramSelfGridView4008) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (SelfGridItem2Vo)SelfGridView4008.a(this.a).get(paramInt);
    HQCHApplication.mainActivity.pageGroup.goNextPage(SelfGridView4008.b(this.a).getSys_pageID(), paramAdapterView.getnPageId(), true, paramAdapterView.getnPageType(), paramAdapterView.getnPageModuleType());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/nw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */