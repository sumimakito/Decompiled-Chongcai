package cn.apppark.vertify.activity.persion;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.buy.BuyBaseAct;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.FileUpdater;
import pe;
import pf;
import pg;
import ph;

public class SetInfo
  extends BuyBaseAct
  implements View.OnClickListener
{
  private final int CALC_CACHE_COMPLETE = 6;
  private final int CLEAR_CACHE_COMPLETE = 5;
  public double a;
  private Button btn_back;
  private Button btn_getMsg;
  private Context context = this;
  private Handler handler = new pg(this);
  private LinearLayout ll_basicInfo;
  private LinearLayout ll_checkUpdate;
  private LinearLayout ll_clearCache;
  private LinearLayout ll_getMsg;
  private LinearLayout ll_loginOff;
  private LinearLayout ll_pass;
  private LinearLayout ll_secret;
  private LinearLayout ll_topset;
  private LoadDataProgress load;
  private TextView tv_cache;
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.tv_cache = ((TextView)findViewById(2131362555));
    this.ll_basicInfo = ((LinearLayout)findViewById(2131362548));
    this.ll_pass = ((LinearLayout)findViewById(2131362549));
    this.ll_secret = ((LinearLayout)findViewById(2131362550));
    this.ll_getMsg = ((LinearLayout)findViewById(2131362551));
    this.ll_checkUpdate = ((LinearLayout)findViewById(2131362553));
    this.ll_clearCache = ((LinearLayout)findViewById(2131362554));
    this.ll_loginOff = ((LinearLayout)findViewById(2131362556));
    this.ll_topset = ((LinearLayout)findViewById(2131362547));
    this.btn_getMsg = ((Button)findViewById(2131362552));
    this.btn_back = ((Button)findViewById(2131362541));
    this.btn_back.setOnClickListener(this);
    this.btn_getMsg.setOnClickListener(this);
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    if ("1".equals(getInfo().receiveMsg())) {
      this.btn_getMsg.setBackgroundResource(2130837757);
    }
    for (;;)
    {
      if (getInfo().getUserId() == null)
      {
        this.ll_loginOff.setVisibility(8);
        this.ll_topset.setVisibility(8);
      }
      this.ll_basicInfo.setOnClickListener(this);
      this.ll_pass.setOnClickListener(this);
      this.ll_secret.setOnClickListener(this);
      this.ll_getMsg.setOnClickListener(this);
      this.ll_checkUpdate.setOnClickListener(this);
      this.ll_clearCache.setOnClickListener(this);
      this.ll_loginOff.setOnClickListener(this);
      return;
      this.btn_getMsg.setBackgroundResource(2130837758);
    }
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131362542: 
    case 2131362543: 
    case 2131362544: 
    case 2131362545: 
    case 2131362546: 
    case 2131362547: 
    case 2131362550: 
    case 2131362551: 
    case 2131362555: 
    default: 
    case 2131362541: 
    case 2131362556: 
    case 2131362548: 
    case 2131362549: 
    case 2131362553: 
      do
      {
        return;
        setResult(1);
        finish();
        return;
        createMsgDialog(getResources().getString(2131230723), "确定退出当前账号?", new pe(this));
        return;
        startActivity(new Intent(this, PersonInfo.class));
        return;
        paramView = new Intent(this, UpdateInfo.class);
        paramView.putExtra("type", 2);
        startActivity(paramView);
        return;
        paramView = new FileUpdater(this, true, 0);
      } while (paramView.isCancelled());
      paramView.execute(new Void[] { null });
      return;
    case 2131362552: 
      if ("1".equals(getInfo().receiveMsg()))
      {
        getInfo().updateReceiveMsg("0");
        this.btn_getMsg.setBackgroundResource(2130837758);
        return;
      }
      getInfo().updateReceiveMsg("1");
      this.btn_getMsg.setBackgroundResource(2130837757);
      return;
    }
    createMsgDialog(getResources().getString(2131230723), "清除图片缓存?", new pf(this));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903150);
    initWidget();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      setResult(1);
      finish();
      return true;
    }
    return false;
  }
  
  protected void onResume()
  {
    super.onResume();
    new ph(this, null).start();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/persion/SetInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */