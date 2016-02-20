package cn.apppark.vertify.activity.buy;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.buy.BuyProCommentDetailVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import ef;
import java.util.HashMap;
import java.util.Map;

public class BuyProCommentDetail
  extends BuyBaseAct
  implements View.OnClickListener
{
  private static final int GET_DATA = 1;
  public static final String METHOD = "commentDetail";
  private Button btn_back;
  private Context context = this;
  private BuyProCommentDetailVo detailVo;
  private ef handler;
  private String id;
  private ImageView img_smail1;
  private ImageView img_smail2;
  private ImageView img_smail3;
  private LoadDataProgress load;
  private TextView tv_buyTime;
  private TextView tv_content;
  private TextView tv_replay;
  private TextView tv_star;
  private TextView tv_subtime;
  
  private void getData(int paramInt)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("interfaces", this.id);
    localObject = new WebServicePool(paramInt, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/cms.ws", "commentDetail");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initData()
  {
    if (this.detailVo.getScore() == 3) {
      this.tv_star.setText("差评");
    }
    for (;;)
    {
      this.tv_buyTime.setText("购买时间:" + this.detailVo.getbTime());
      this.tv_content.setText(this.detailVo.getContent());
      this.tv_subtime.setText(this.detailVo.getcTime());
      this.tv_replay.setText("商家回复:" + this.detailVo.getReplyContent());
      return;
      if (this.detailVo.getScore() == 2)
      {
        this.img_smail2.setVisibility(0);
        this.tv_star.setText("中评");
      }
      else if (this.detailVo.getScore() == 1)
      {
        this.tv_star.setText("好评");
        this.img_smail2.setVisibility(0);
        this.img_smail3.setVisibility(0);
      }
    }
  }
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.btn_back = ((Button)findViewById(2131361865));
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.btn_back.setOnClickListener(this);
    this.tv_buyTime = ((TextView)findViewById(2131362000));
    this.tv_content = ((TextView)findViewById(2131361999));
    this.tv_subtime = ((TextView)findViewById(2131361998));
    this.tv_replay = ((TextView)findViewById(2131362001));
    this.tv_star = ((TextView)findViewById(2131361997));
    this.img_smail1 = ((ImageView)findViewById(2131361994));
    this.img_smail2 = ((ImageView)findViewById(2131361995));
    this.img_smail3 = ((ImageView)findViewById(2131361996));
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    }
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903066);
    this.id = getIntent().getStringExtra("id");
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.handler = new ef(this, null);
    initWidget();
    getData(1);
    this.load.show(2131230756);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyProCommentDetail.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */