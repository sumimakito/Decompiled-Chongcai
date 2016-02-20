package cn.apppark.vertify.adapter;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.vo.dyn.DynProductReturnVo;
import cn.apppark.vertify.activity.buy.BuyProductDetail;

class DynProduct5005Adapter$MyOnClick
  implements View.OnClickListener
{
  private DynProductReturnVo b;
  private int c;
  
  public DynProduct5005Adapter$MyOnClick(DynProduct5005Adapter paramDynProduct5005Adapter, DynProductReturnVo paramDynProductReturnVo, int paramInt)
  {
    this.b = paramDynProductReturnVo;
    this.c = 1;
  }
  
  public void onClick(View paramView)
  {
    if (this.c == 1)
    {
      paramView = new Intent(HQCHApplication.mainActivity, BuyProductDetail.class);
      paramView.putExtra("id", this.b.getId());
      HQCHApplication.mainActivity.startActivity(paramView);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/DynProduct5005Adapter$MyOnClick.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */