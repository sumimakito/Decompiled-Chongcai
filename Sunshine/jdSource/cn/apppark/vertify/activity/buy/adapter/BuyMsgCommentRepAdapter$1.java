package cn.apppark.vertify.activity.buy.adapter;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.vo.dyn.DynCommentReturnVo;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.vertify.activity.free.dyn.DynMsgDetail;
import java.util.ArrayList;

class BuyMsgCommentRepAdapter$1
  implements View.OnClickListener
{
  BuyMsgCommentRepAdapter$1(BuyMsgCommentRepAdapter paramBuyMsgCommentRepAdapter) {}
  
  public void onClick(View paramView)
  {
    paramView = new DynMsgListReturnVo();
    paramView.setId(((DynCommentReturnVo)BuyMsgCommentRepAdapter.a(this.a).get(0)).getNewsId());
    Intent localIntent = new Intent(HQCHApplication.mainActivity, DynMsgDetail.class);
    localIntent.putExtra("type", 2);
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("vo", paramView);
    localIntent.putExtra("bund", localBundle);
    BuyMsgCommentRepAdapter.b(this.a).startActivity(localIntent);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/adapter/BuyMsgCommentRepAdapter$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */