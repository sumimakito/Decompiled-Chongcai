import android.view.View;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnChildClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.free.SelfMutiListViewItem2Vo;
import cn.apppark.mcd.vo.free.SelfMutiListViewItem2VoParent;
import cn.apppark.vertify.PageGroup;
import cn.apppark.vertify.activity.free.typelist.SelfMutiListView;
import java.util.ArrayList;
import java.util.List;

public final class np
  implements ExpandableListView.OnChildClickListener
{
  public np(SelfMutiListView paramSelfMutiListView, FreePageVo paramFreePageVo) {}
  
  public final boolean onChildClick(ExpandableListView paramExpandableListView, View paramView, int paramInt1, int paramInt2, long paramLong)
  {
    HQCHApplication.mainActivity.pageGroup.goNextPage(this.a.getSys_pageID(), ((SelfMutiListViewItem2Vo)((SelfMutiListViewItem2VoParent)SelfMutiListView.a(this.b).get(paramInt1)).getChildItemList().get(paramInt2)).getnPageId(), true, ((SelfMutiListViewItem2Vo)((SelfMutiListViewItem2VoParent)SelfMutiListView.a(this.b).get(paramInt1)).getChildItemList().get(paramInt2)).getnPageType(), ((SelfMutiListViewItem2Vo)((SelfMutiListViewItem2VoParent)SelfMutiListView.a(this.b).get(paramInt1)).getChildItemList().get(paramInt2)).getnPageModuleType());
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/np.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */