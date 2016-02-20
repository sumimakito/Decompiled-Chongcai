package cn.apppark.vertify.activity.share;

import android.content.Intent;
import android.os.Bundle;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.vertify.activity.BaseAct;

public class MsgAct
  extends BaseAct
{
  String a;
  private RelativeLayout rel_close;
  private TextView tv_msg;
  
  private void initWidget()
  {
    this.tv_msg = ((TextView)findViewById(2131362439));
    if (this.a != null) {
      this.tv_msg.setText(this.a);
    }
    this.rel_close = ((RelativeLayout)findViewById(2131362436));
    this.rel_close.setOnClickListener(new MsgAct.1(this));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903130);
    this.a = getIntent().getStringExtra("msg");
    initWidget();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/share/MsgAct.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */