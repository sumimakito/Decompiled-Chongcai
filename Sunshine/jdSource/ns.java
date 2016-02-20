import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.free.SelfGridItem2Vo;
import cn.apppark.vertify.PageGroup;
import cn.apppark.vertify.activity.free.typenine.SelfGridView4006;
import java.util.ArrayList;

public final class ns
  implements AdapterView.OnItemClickListener
{
  public ns(SelfGridView4006 paramSelfGridView4006) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (SelfGridItem2Vo)SelfGridView4006.a(this.a).get(paramInt);
    HQCHApplication.mainActivity.pageGroup.goNextPage(SelfGridView4006.b(this.a).getSys_pageID(), paramAdapterView.getnPageId(), true, paramAdapterView.getnPageType(), paramAdapterView.getnPageModuleType());
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ns.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */