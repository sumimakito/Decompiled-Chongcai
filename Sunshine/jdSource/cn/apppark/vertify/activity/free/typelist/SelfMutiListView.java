package cn.apppark.vertify.activity.free.typelist;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.ExpandableListView;
import android.widget.ScrollView;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.free.SelfMutiListViewItem2Vo;
import cn.apppark.mcd.vo.free.SelfMutiListViewItem2VoParent;
import cn.apppark.mcd.vo.free.SelfMutiListViewItemVo;
import cn.apppark.vertify.activity.ISelfView;
import cn.apppark.vertify.adapter.SelfMutiListViewAdapter;
import java.util.ArrayList;
import java.util.List;
import np;

public class SelfMutiListView
  extends ExpandableListView
  implements ISelfView
{
  private ArrayList<SelfMutiListViewItem2Vo> childItem = new ArrayList();
  private ArrayList<SelfMutiListViewItem2Vo> mutiListViewItem2VoList;
  private ArrayList<SelfMutiListViewItem2Vo> parentItem = new ArrayList();
  private ArrayList<SelfMutiListViewItem2VoParent> parentItem1 = new ArrayList();
  private ScrollView parentScrollView;
  
  public SelfMutiListView(Context paramContext, FreePageVo paramFreePageVo, SelfMutiListViewItemVo paramSelfMutiListViewItemVo, ArrayList<SelfMutiListViewItem2Vo> paramArrayList, ScrollView paramScrollView)
  {
    super(paramContext);
    this.parentScrollView = paramScrollView;
    this.mutiListViewItem2VoList = paramArrayList;
    initParentAndChildData();
    setChild();
    setAdapter(new SelfMutiListViewAdapter(paramContext, paramSelfMutiListViewItemVo, this.parentItem1));
    setGroupIndicator(null);
    setOnChildClickListener(new np(this, paramFreePageVo));
  }
  
  private void initParentAndChildData()
  {
    int i = 0;
    if (i < this.mutiListViewItem2VoList.size())
    {
      SelfMutiListViewItem2Vo localSelfMutiListViewItem2Vo = (SelfMutiListViewItem2Vo)this.mutiListViewItem2VoList.get(i);
      if (localSelfMutiListViewItem2Vo != null)
      {
        String str = localSelfMutiListViewItem2Vo.getSys_fid();
        if ((str != null) && (!"".equals(str))) {
          break label63;
        }
        this.parentItem.add(localSelfMutiListViewItem2Vo);
      }
      for (;;)
      {
        i += 1;
        break;
        label63:
        this.childItem.add(localSelfMutiListViewItem2Vo);
      }
    }
  }
  
  private void setChild()
  {
    int i = 0;
    while (i < this.parentItem.size())
    {
      SelfMutiListViewItem2VoParent localSelfMutiListViewItem2VoParent = new SelfMutiListViewItem2VoParent();
      Object localObject = (SelfMutiListViewItem2Vo)this.parentItem.get(i);
      localSelfMutiListViewItem2VoParent.setSys_fid(((SelfMutiListViewItem2Vo)localObject).getSys_fid());
      localSelfMutiListViewItem2VoParent.setSys_groupID(((SelfMutiListViewItem2Vo)localObject).getSys_groupID());
      localSelfMutiListViewItem2VoParent.setItemID(((SelfMutiListViewItem2Vo)localObject).getItemID());
      localSelfMutiListViewItem2VoParent.setData_leftPic(((SelfMutiListViewItem2Vo)localObject).getData_leftPic());
      localSelfMutiListViewItem2VoParent.setnFlag(((SelfMutiListViewItem2Vo)localObject).getnFlag());
      localSelfMutiListViewItem2VoParent.setData_rightPic(((SelfMutiListViewItem2Vo)localObject).getData_rightPic());
      localSelfMutiListViewItem2VoParent.setSeq(((SelfMutiListViewItem2Vo)localObject).getSeq());
      localSelfMutiListViewItem2VoParent.setData_text1(((SelfMutiListViewItem2Vo)localObject).getData_text1());
      localSelfMutiListViewItem2VoParent.setData_text2(((SelfMutiListViewItem2Vo)localObject).getData_text2());
      localObject = new ArrayList();
      int j = 0;
      while (j < this.childItem.size())
      {
        SelfMutiListViewItem2Vo localSelfMutiListViewItem2Vo = (SelfMutiListViewItem2Vo)this.childItem.get(j);
        if (localSelfMutiListViewItem2Vo.getSys_fid().equals(localSelfMutiListViewItem2VoParent.getSys_groupID())) {
          ((List)localObject).add(localSelfMutiListViewItem2Vo);
        }
        j += 1;
      }
      localSelfMutiListViewItem2VoParent.setChildItemList((List)localObject);
      this.parentItem1.add(localSelfMutiListViewItem2VoParent);
      i += 1;
    }
  }
  
  public void init() {}
  
  public boolean isOnMethod()
  {
    return false;
  }
  
  public void onDestroy() {}
  
  public void onPause() {}
  
  public void onResume() {}
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 1) {
      this.parentScrollView.requestDisallowInterceptTouchEvent(false);
    }
    for (;;)
    {
      return super.onTouchEvent(paramMotionEvent);
      this.parentScrollView.requestDisallowInterceptTouchEvent(true);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/typelist/SelfMutiListView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */