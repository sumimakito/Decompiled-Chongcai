package cn.apppark.vertify.activity;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.vertify.PageGroup;

class FreeAct$2
  implements View.OnClickListener
{
  FreeAct$2(FreeAct paramFreeAct) {}
  
  public void onClick(View paramView)
  {
    if (this.a.a != null) {
      this.a.a.dismiss();
    }
    if (YYGYContants.mainPageId.equals(this.a.pageVo.getSys_pageID()))
    {
      HQCHApplication.mainActivity.finish();
      return;
    }
    HQCHApplication.mainActivity.pageGroup.pageBack();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/FreeAct$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */