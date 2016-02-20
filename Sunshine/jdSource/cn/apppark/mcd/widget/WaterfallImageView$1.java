package cn.apppark.mcd.widget;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.vertify.activity.free.dyn.DynMsgDetail;

class WaterfallImageView$1
  implements View.OnClickListener
{
  WaterfallImageView$1(WaterfallImageView paramWaterfallImageView) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent(HQCHApplication.mainActivity, DynMsgDetail.class);
    paramView.putExtra("type", 2);
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("vo", WaterfallImageView.a(this.a));
    paramView.putExtra("bund", localBundle);
    HQCHApplication.mainActivity.startActivity(paramView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/WaterfallImageView$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */