package cn.apppark.vertify.activity.buy;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.file.PrivateFileReadSave;
import cn.apppark.mcd.vo.buy.BuyProductVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView;
import cn.apppark.vertify.activity.buy.adapter.BuyViewHistoryAdapter;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.WebServiceRequest;
import ga;
import gb;
import gc;
import java.util.ArrayList;

public class BuyViewHistory
  extends BuyBaseAct
  implements View.OnClickListener
{
  private static final int INIT_DATA = 1;
  public static final String METHOD = "contacts";
  private static final int REF_DATA = 2;
  private BuyViewHistoryAdapter adapter;
  private Button btn_back;
  private Button btn_clean;
  private Context context = this;
  private gc handler;
  private ArrayList<BuyProductVo> itemList = new ArrayList();
  private ArrayList<BuyProductVo> itemListTemp;
  private PullDownListView listView;
  private LinearLayout ll_null;
  private LoadDataProgress load;
  
  private void changeTipState()
  {
    if (this.itemList.size() == 0)
    {
      this.ll_null.setVisibility(0);
      this.btn_clean.setVisibility(8);
      return;
    }
    this.ll_null.setVisibility(8);
    this.btn_clean.setVisibility(0);
  }
  
  private void getData(int paramInt)
  {
    Object localObject2 = PrivateFileReadSave.read(getHistoryName(), this.context);
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = WebServiceRequest.NO_DATA;
    }
    localObject2 = Message.obtain();
    ((Message)localObject2).what = paramInt;
    Bundle localBundle = new Bundle();
    localBundle.putString("soresult", (String)localObject1);
    ((Message)localObject2).setData(localBundle);
    this.handler.sendMessage((Message)localObject2);
  }
  
  private String getHistoryName()
  {
    return "history" + getInfo().getUserId();
  }
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.ll_null = ((LinearLayout)findViewById(2131361832));
    this.ll_null.setVisibility(8);
    this.btn_back = ((Button)findViewById(2131362149));
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.btn_back.setOnClickListener(this);
    this.btn_clean = ((Button)findViewById(2131362150));
    ButtonColorFilter.setButtonFocusChanged(this.btn_clean);
    this.btn_clean.setOnClickListener(this);
    this.listView = ((PullDownListView)findViewById(2131362151));
    this.listView.setonRefreshListener(new ga(this), true);
    this.listView.setonFootRefreshListener(null);
    this.listView.onFootNodata(0, 0);
    this.listView.setOnItemClickListener(new gb(this));
  }
  
  private void refData()
  {
    getData(2);
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
    } while ((this.itemList == null) || (!PrivateFileReadSave.deleteFile(getHistoryName(), this.context)));
    this.itemList.clear();
    this.adapter.notifyDataSetChanged();
    initToast("浏览记录清理完成", 0);
    changeTipState();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903083);
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.handler = new gc(this, null);
    initWidget();
    getData(1);
    this.load.show(2131230756, true, true, "255");
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyViewHistory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */