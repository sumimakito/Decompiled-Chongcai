package cn.apppark.vertify.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.vo.dyn.DynProductReturnVo;
import cn.apppark.vertify.activity.buy.BuyProductDetail;

class SProductNine5032Adapter$MyOnClick
  implements View.OnClickListener
{
  private DynProductReturnVo b;
  
  public SProductNine5032Adapter$MyOnClick(SProductNine5032Adapter paramSProductNine5032Adapter, DynProductReturnVo paramDynProductReturnVo)
  {
    this.b = paramDynProductReturnVo;
  }
  
  public void onClick(View paramView)
  {
    paramView = new Intent(HQCHApplication.mainActivity, BuyProductDetail.class);
    paramView.putExtra("id", this.b.getId());
    SProductNine5032Adapter.a(this.a).startActivity(paramView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/SProductNine5032Adapter$MyOnClick.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */