package cn.apppark.vertify.activity.persion;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.vertify.activity.buy.BuyBaseAct;
import cn.apppark.vertify.activity.tieba.TBBaseAct;
import cn.apppark.vertify.activity.tieba.TMsg;
import cn.apppark.vertify.activity.tieba.TMyCollection;
import cn.apppark.vertify.activity.tieba.TMyHistory;
import cn.apppark.vertify.activity.tieba.TMytopicAndComment;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.HashMap;
import java.util.Map;
import op;
import org.json.JSONException;
import org.json.JSONObject;

public class PersionMyTieBa
  extends BuyBaseAct
  implements View.OnClickListener
{
  private final int MSG_WHAT = 3;
  private Button btn_back;
  private Context context = this;
  private String currentMsgTime = "2016-02-20 10:31:004";
  private op handler;
  private LinearLayout ll_collection;
  private LinearLayout ll_history;
  private LinearLayout ll_msg;
  private LinearLayout ll_tieba;
  private TextView tv_msgNum;
  
  private boolean checkLogin(Class<? extends TBBaseAct> paramClass)
  {
    if (getInfo().getUserId() == null)
    {
      paramClass = new Intent(HQCHApplication.getInstance(), YYGYContants.getLoginClass());
      HQCHApplication.mainActivity.startActivity(paramClass);
      return false;
    }
    paramClass = new Intent(this.context, paramClass);
    HQCHApplication.mainActivity.startActivity(paramClass);
    return true;
  }
  
  private void getMsg(int paramInt)
  {
    if (getInfo().getUserId() != null)
    {
      Object localObject = new HashMap();
      ((Map)localObject).put("userId", getInfo().getUserId());
      if (getInfo().getLastMsgTime(getInfo().getUserId()) != null) {
        this.currentMsgTime = getInfo().getLastMsgTime(getInfo().getUserId());
      }
      ((Map)localObject).put("lastReadTime", this.currentMsgTime);
      localObject = new WebServicePool(paramInt, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/tieba.ws", "getNewMessageCount");
      ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
    }
  }
  
  private void initTiebaColor()
  {
    cn.apppark.vertify.activity.tieba.TBaseParam.TOPMENU_BGCOLOR = YYGYContants.PERSIONCENTER_TOP_COLOR;
  }
  
  private void initWidget()
  {
    this.handler = new op(this, null);
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.tv_msgNum = ((TextView)findViewById(2131362546));
    this.ll_tieba = ((LinearLayout)findViewById(2131362542));
    this.ll_history = ((LinearLayout)findViewById(2131362543));
    this.ll_collection = ((LinearLayout)findViewById(2131362544));
    this.ll_msg = ((LinearLayout)findViewById(2131362545));
    this.btn_back = ((Button)findViewById(2131362541));
    this.btn_back.setOnClickListener(this);
    this.ll_tieba.setOnClickListener(this);
    this.ll_history.setOnClickListener(this);
    this.ll_collection.setOnClickListener(this);
    this.ll_msg.setOnClickListener(this);
    getMsg(3);
  }
  
  private void setMsgCount(String paramString)
  {
    try
    {
      Object localObject = new JSONObject(paramString);
      paramString = ((JSONObject)localObject).getString("retFlag");
      localObject = ((JSONObject)localObject).getString("count");
      if ("1".equals(paramString))
      {
        getInfo().updateLastMsgTime(getInfo().getUserId(), this.currentMsgTime);
        if ((StringUtil.isNotNull((String)localObject)) && (!"0".equals(localObject)))
        {
          this.tv_msgNum.setVisibility(0);
          this.tv_msgNum.setText((CharSequence)localObject);
          return;
        }
        this.tv_msgNum.setVisibility(8);
        return;
      }
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    }
    do
    {
      return;
      finish();
      return;
      checkLogin(TMytopicAndComment.class);
      return;
      checkLogin(TMyHistory.class);
      return;
      checkLogin(TMyCollection.class);
      return;
    } while (!checkLogin(TMsg.class));
    this.currentMsgTime = PublicUtil.getFormatTime();
    getInfo().updateLastMsgTime(getInfo().getUserId(), this.currentMsgTime);
    this.tv_msgNum.setVisibility(8);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903149);
    initWidget();
    cn.apppark.vertify.activity.tieba.TBaseParam.TOPMENU_BGCOLOR = YYGYContants.PERSIONCENTER_TOP_COLOR;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/persion/PersionMyTieBa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */