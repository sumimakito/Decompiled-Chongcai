package cn.apppark.vertify.activity.buy;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.buy.BuyProCommentVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView;
import cn.apppark.vertify.activity.buy.adapter.BuyProCommentAdapter;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import eh;
import ei;
import ej;
import ek;
import el;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class BuyProCommentList
  extends BuyBaseAct
  implements View.OnClickListener
{
  private final int INIT_DATA_NOREPLAY = 1;
  private final int INIT_DATA_REPLAY = 2;
  public final String METHOD = "commentByUser";
  private BuyProCommentAdapter adapter_noreplay;
  private BuyProCommentAdapter adapter_replay;
  private Button btn_back;
  private Context context = this;
  private el handler;
  private ArrayList<BuyProCommentVo> itemList_noreplay;
  private ArrayList<BuyProCommentVo> itemList_replay;
  private PullDownListView list_noreplay;
  private PullDownListView list_replay;
  private LoadDataProgress load;
  private RelativeLayout rel_comment;
  private RelativeLayout rel_nocomment;
  private RelativeLayout rel_noreplay;
  private RelativeLayout rel_replay;
  private TextView tv_comment;
  private TextView tv_linecomment;
  private TextView tv_linenocomment;
  private TextView tv_nocomment;
  private TextView tv_noreplay;
  private TextView tv_replay;
  
  private void getData(int paramInt1, int paramInt2)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("userId", getInfo().getUserId());
    ((Map)localObject).put("type", Integer.valueOf(paramInt1));
    localObject = new WebServicePool(paramInt2, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/cms.ws", "commentByUser");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.btn_back = ((Button)findViewById(2131361865));
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.btn_back.setOnClickListener(this);
    this.tv_comment = ((TextView)findViewById(2131362006));
    this.tv_nocomment = ((TextView)findViewById(2131362003));
    this.tv_linecomment = ((TextView)findViewById(2131362007));
    this.tv_linenocomment = ((TextView)findViewById(2131362004));
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, this.tv_linecomment);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, this.tv_linenocomment);
    this.rel_comment = ((RelativeLayout)findViewById(2131362005));
    this.rel_nocomment = ((RelativeLayout)findViewById(2131362002));
    this.rel_comment.setOnClickListener(this);
    this.rel_nocomment.setOnClickListener(this);
    this.tv_replay = ((TextView)findViewById(2131362013));
    this.tv_noreplay = ((TextView)findViewById(2131362010));
    this.list_replay = ((PullDownListView)findViewById(2131362012));
    this.list_noreplay = ((PullDownListView)findViewById(2131362009));
    this.list_replay.setDividerHeight(0);
    this.list_noreplay.setDividerHeight(0);
    this.rel_replay = ((RelativeLayout)findViewById(2131362011));
    this.rel_noreplay = ((RelativeLayout)findViewById(2131362008));
    this.list_replay.setOnItemClickListener(new eh(this));
    this.list_replay.setonRefreshListener(new ei(this), true);
    this.list_noreplay.setOnItemClickListener(new ej(this));
    this.list_noreplay.setonRefreshListener(new ek(this), true);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 1)
    {
      this.list_replay.autoHeadRefresh();
      getData(1, 2);
      this.list_noreplay.autoHeadRefresh();
      getData(0, 1);
    }
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
    case 2131361865: 
    case 2131362005: 
      do
      {
        return;
        finish();
        return;
        this.list_replay.setVisibility(0);
        this.list_noreplay.setVisibility(8);
        this.rel_replay.setVisibility(0);
        this.rel_noreplay.setVisibility(8);
        this.tv_linecomment.setVisibility(0);
        this.tv_linenocomment.setVisibility(8);
        this.tv_comment.setTextColor(-16777216);
        this.tv_nocomment.setTextColor(-7829368);
      } while (this.itemList_replay != null);
      getData(1, 2);
      return;
    }
    this.list_replay.setVisibility(8);
    this.list_noreplay.setVisibility(0);
    this.rel_replay.setVisibility(8);
    this.rel_noreplay.setVisibility(0);
    this.tv_linecomment.setVisibility(8);
    this.tv_linenocomment.setVisibility(0);
    this.tv_comment.setTextColor(-7829368);
    this.tv_nocomment.setTextColor(-16777216);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903067);
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.handler = new el(this, null);
    initWidget();
    this.load.show(2131230756, true, true, "255");
    getData(0, 1);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyProCommentList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */