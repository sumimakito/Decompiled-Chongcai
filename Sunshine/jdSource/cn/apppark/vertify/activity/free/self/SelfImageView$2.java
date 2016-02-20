package cn.apppark.vertify.activity.free.self;

import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.vo.base.ClientBaseVo;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.free.SelfDefineItemVo;
import cn.apppark.vertify.PageGroup;

class SelfImageView$2
  implements View.OnClickListener
{
  SelfImageView$2(SelfImageView paramSelfImageView) {}
  
  public void onClick(View paramView)
  {
    if (!HQCHApplication.mainActivity.clientBaseVo.getnPageId().equals(SelfImageView.a(this.a).getSys_pageID())) {
      HQCHApplication.mainActivity.pageGroup.goNextPage(SelfImageView.a(this.a).getSys_pageID(), SelfImageView.b(this.a).getnPageId(), true, SelfImageView.b(this.a).getnPageType(), SelfImageView.b(this.a).getnPageModuleType());
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/SelfImageView$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */