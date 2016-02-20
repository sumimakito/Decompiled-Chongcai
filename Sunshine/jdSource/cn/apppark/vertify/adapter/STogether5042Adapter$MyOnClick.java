package cn.apppark.vertify.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.vo.dyn.DynProductVo;
import cn.apppark.mcd.vo.dyn.STogetherItemVo;
import cn.apppark.mcd.vo.dyn.STogetherReturnVo;
import cn.apppark.vertify.activity.free.dyn.STogetherDetail;

class STogether5042Adapter$MyOnClick
  implements View.OnClickListener
{
  private STogetherReturnVo b;
  
  public STogether5042Adapter$MyOnClick(STogether5042Adapter paramSTogether5042Adapter, STogetherReturnVo paramSTogetherReturnVo)
  {
    this.b = paramSTogetherReturnVo;
  }
  
  public void onClick(View paramView)
  {
    paramView = new Intent(HQCHApplication.mainActivity, STogetherDetail.class);
    DynProductVo localDynProductVo = new DynProductVo();
    localDynProductVo.setStyle_tabPosition(STogether5042Adapter.a(this.a).getShop().getStyle_tabPosition());
    localDynProductVo.setStyle_groupInfoShow(STogether5042Adapter.a(this.a).getShop().getStyle_groupInfoShow());
    localDynProductVo.setSys_moduleType(STogether5042Adapter.a(this.a).getShop().getSys_moduleType());
    localDynProductVo.setGroupId(this.b.getGroupId());
    paramView.putExtra("detail", localDynProductVo);
    STogether5042Adapter.b(this.a).startActivity(paramView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/STogether5042Adapter$MyOnClick.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */