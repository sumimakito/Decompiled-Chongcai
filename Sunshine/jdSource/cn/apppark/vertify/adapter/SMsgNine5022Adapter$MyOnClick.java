package cn.apppark.vertify.adapter;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.vertify.activity.free.dyn.DynMsgDetail;

class SMsgNine5022Adapter$MyOnClick
  implements View.OnClickListener
{
  private DynMsgListReturnVo b;
  
  public SMsgNine5022Adapter$MyOnClick(SMsgNine5022Adapter paramSMsgNine5022Adapter, DynMsgListReturnVo paramDynMsgListReturnVo)
  {
    this.b = paramDynMsgListReturnVo;
  }
  
  public void onClick(View paramView)
  {
    paramView = new Intent(HQCHApplication.mainActivity, DynMsgDetail.class);
    paramView.putExtra("type", 2);
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("vo", this.b);
    paramView.putExtra("bund", localBundle);
    HQCHApplication.mainActivity.startActivity(paramView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/SMsgNine5022Adapter$MyOnClick.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */