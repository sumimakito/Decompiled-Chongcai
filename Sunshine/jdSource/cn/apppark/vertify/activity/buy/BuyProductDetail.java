package cn.apppark.vertify.activity.buy;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextPaint;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.Gallery;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.file.PrivateFileReadSave;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.buy.BuyProductVo;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.vertify.activity.tieba.TBaseParam;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.NetWorkRequest;
import cn.apppark.vertify.network.request.WebServicePool;
import com.google.gson.Gson;
import fe;
import ff;
import fg;
import fh;
import fj;
import java.io.PrintStream;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class BuyProductDetail
  extends BuyBaseAct
  implements View.OnClickListener
{
  private static final String ADDBUYCAR_METHOD = "saveShopping_sd";
  private static final int ADDBUYCAR_WHAT = 2;
  private static final int ADD_COLLECTION_WHAT = 3;
  private static final String COLLECTION_METHOD = "saveFavorites";
  private static String COLLECTION_STATE = "1";
  private static String COLLECTION_STATE_NO = "0";
  private static final String DEL_COLLECTION_METHOD = "deleteFavoritesProduct";
  private static final int DEL_COLLECTION_WHAT = 4;
  private static final String DETAIL_METHOD = "product_sd";
  private static final int GETCAR_WHAT = 5;
  private static final int GET_WHAT = 1;
  public static final String METHOD_GETCAR = "myShoppingCart_sd";
  RelativeLayout a;
  private ArrayList<ImageView> arrImageView;
  private Button btn_add;
  private Button btn_back;
  private Button btn_collection;
  private Context context = this;
  private Gallery gallery;
  private fj handler;
  private String id;
  private String isCollection = COLLECTION_STATE;
  private boolean isFinish = true;
  private LinearLayout lin_point;
  private LinearLayout ll_comment;
  private LoadDataProgress load;
  private Dialog loadDialog;
  private String[] pics;
  private BuyProductVo productVo;
  private RelativeLayout rel_buycar;
  private TextView tv_carnumber;
  private TextView tv_commentcount;
  private TextView tv_name;
  private TextView tv_name2;
  private TextView tv_number;
  private TextView tv_orgPrice;
  private TextView tv_price;
  private TextView tv_sotre;
  private TextView tv_storenull;
  private WebView web_detail;
  
  private void addBuyCar(int paramInt, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("memberId", paramString);
    localHashMap.put("productId", this.id);
    localHashMap.put("number", Integer.valueOf(1));
    localHashMap.put("standardId", Integer.valueOf(0));
    localHashMap.put("note", "");
    paramString = new WebServicePool(paramInt, this.handler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/business.ws", "saveShopping_sd");
    paramString.doRequest(paramString);
  }
  
  private void addCollection(int paramInt)
  {
    this.isFinish = false;
    this.loadDialog.show();
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("memberId", getInfo().getUserId());
    ((Map)localObject).put("productId", this.id);
    localObject = new WebServicePool(paramInt, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", "saveFavorites");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void changeBuyCarState()
  {
    if (this.productVo.getProductSum() <= 0)
    {
      this.btn_add.setBackgroundResource(2130837511);
      return;
    }
    this.btn_add.setBackgroundResource(2130837510);
  }
  
  private void delCollection(int paramInt)
  {
    this.isFinish = false;
    this.loadDialog.show();
    Object localObject = new HashMap();
    ((Map)localObject).put("appId", "10185912");
    ((Map)localObject).put("memberId", getInfo().getUserId());
    ((Map)localObject).put("productId", this.id);
    localObject = new WebServicePool(paramInt, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/member.ws", "deleteFavoritesProduct");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private void getBuyCar(int paramInt)
  {
    if (getInfo().getUserId() != null)
    {
      Object localObject = new HashMap();
      ((Map)localObject).put("appId", "10185912");
      ((Map)localObject).put("memberId", getInfo().getUserId());
      ((Map)localObject).put("currPage", Integer.valueOf(1));
      ((Map)localObject).put("pageSize", Integer.valueOf(99));
      localObject = new WebServicePool(paramInt, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/business.ws", "myShoppingCart_sd");
      ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
    }
  }
  
  private void getData(int paramInt)
  {
    Object localObject = new HashMap();
    ((Map)localObject).put("memberId", getInfo().getUserId());
    ((Map)localObject).put("id", this.id);
    localObject = new WebServicePool(paramInt, this.handler, "json", map2Json((Map)localObject), "http://ws.ckj.hqch.com", "http://www.apppark.cn/cms.ws", "product_sd");
    ((WebServicePool)localObject).doRequest((NetWorkRequest)localObject);
  }
  
  private String getHistoryName()
  {
    return "history" + getInfo().getUserId();
  }
  
  private void initGalleryData()
  {
    if (StringUtil.isNotNull(this.productVo.getProductPic())) {
      this.pics = this.productVo.getProductPic().split(";");
    }
    for (;;)
    {
      if (this.pics != null)
      {
        this.gallery.setAdapter(new fh(this, this.context, this.pics));
        if (this.pics.length > 1) {
          initPoint(0);
        }
        this.gallery.setOnItemSelectedListener(new ff(this));
      }
      return;
      this.pics = new String[1];
      this.pics[0] = this.productVo.getPicPath();
    }
  }
  
  private void initPoint(int paramInt)
  {
    this.lin_point.removeAllViews();
    this.arrImageView = new ArrayList();
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(FunctionPublic.getConvertValue(5), FunctionPublic.getConvertValue(5));
    localLayoutParams.setMargins(10, 10, 10, 10);
    int i = 0;
    while (i < this.pics.length)
    {
      ImageView localImageView = new ImageView(this.context);
      localImageView.setBackgroundResource(2130837790);
      if (i == paramInt) {
        localImageView.setBackgroundResource(2130837791);
      }
      this.arrImageView.add(localImageView);
      this.lin_point.addView(localImageView, localLayoutParams);
      i += 1;
    }
  }
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.btn_back = ((Button)findViewById(2131362043));
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.btn_collection = ((Button)findViewById(2131362066));
    ButtonColorFilter.setButtonFocusChanged(this.btn_collection);
    this.btn_add = ((Button)findViewById(2131362070));
    ButtonColorFilter.setButtonFocusChanged(this.btn_add);
    this.btn_back.setOnClickListener(this);
    this.gallery = ((Gallery)findViewById(2131362046));
    this.lin_point = ((LinearLayout)findViewById(2131362047));
    this.a = ((RelativeLayout)findViewById(2131362045));
    this.a.getLayoutParams().height = FunctionPublic.getConvertValue(260);
    this.tv_name = ((TextView)findViewById(2131362044));
    this.tv_price = ((TextView)findViewById(2131362050));
    this.tv_orgPrice = ((TextView)findViewById(2131362051));
    this.tv_name2 = ((TextView)findViewById(2131362048));
    this.tv_number = ((TextView)findViewById(2131362054));
    this.tv_sotre = ((TextView)findViewById(2131362052));
    this.tv_storenull = ((TextView)findViewById(2131362053));
    this.web_detail = ((WebView)findViewById(2131362064));
    this.rel_buycar = ((RelativeLayout)findViewById(2131362067));
    this.tv_carnumber = ((TextView)findViewById(2131362069));
    this.rel_buycar.setOnClickListener(this);
    this.ll_comment = ((LinearLayout)findViewById(2131362058));
    this.ll_comment.setOnClickListener(this);
    this.tv_commentcount = ((TextView)findViewById(2131362059));
  }
  
  private void setData()
  {
    this.btn_collection.setOnClickListener(this);
    this.btn_add.setOnClickListener(this);
    this.tv_name.setText(this.productVo.getTitle());
    this.tv_name2.setText(this.productVo.getTitle());
    setTitle(this.productVo.getType(), this.productVo.getTitle(), this.tv_name2);
    this.tv_price.setText("￥" + this.productVo.getPrice());
    this.tv_orgPrice.setText("￥" + this.productVo.getOriPrice());
    if ("0.00".equals(this.productVo.getOriPrice())) {
      this.tv_orgPrice.setVisibility(4);
    }
    this.tv_commentcount.setText(this.productVo.getCommentCount() + "条评价");
    this.tv_orgPrice.getPaint().setFlags(16);
    this.tv_number.setText("累计出售: " + this.productVo.getSoldCount());
    if (this.productVo.getProductSum() <= 0)
    {
      this.tv_sotre.setText("剩余库存: ");
      this.tv_storenull.setVisibility(0);
    }
    for (;;)
    {
      changeBuyCarState();
      initGalleryData();
      this.web_detail.getSettings().setDefaultTextEncodingName("UTF-8");
      this.web_detail.setWebViewClient(new fe(this));
      try
      {
        String str = URLDecoder.decode(this.productVo.getMainPara(), "utf-8");
        this.web_detail.loadDataWithBaseURL(null, str, "text/html", "utf-8", null);
        this.isCollection = this.productVo.getIsFavorite();
        if (this.productVo.getIsFavorite().equals(COLLECTION_STATE_NO))
        {
          this.btn_collection.setBackgroundResource(2130837648);
          updateHistoryFile();
          return;
          this.tv_sotre.setText("剩余库存: " + this.productVo.getProductSum());
          this.tv_storenull.setVisibility(8);
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
          continue;
          this.btn_collection.setBackgroundResource(2130837649);
        }
      }
    }
  }
  
  private void setTitle(String paramString1, String paramString2, TextView paramTextView)
  {
    int i = FunctionPublic.convertColor("666666");
    if ("1".equals(paramString1))
    {
      paramTextView.setText(TBaseParam.getSpanStrStartPic(this.context, paramString2, 2130837779, i, 26, 15));
      return;
    }
    if ("2".equals(paramString1))
    {
      paramTextView.setText(TBaseParam.getSpanStrStartPic(this.context, paramString2, 2130837770, i, 26, 15));
      return;
    }
    if ("3".equals(paramString1))
    {
      paramTextView.setText(TBaseParam.getSpanStrStartPic(this.context, paramString2, 2130837783, i, 26, 15));
      return;
    }
    paramTextView.setText(paramString2);
  }
  
  private void updateHistoryFile()
  {
    Object localObject2 = PrivateFileReadSave.read(getHistoryName(), this.context);
    this.productVo.setMainPara("");
    this.productVo.setDetail("");
    Object localObject1 = new Gson();
    if (localObject2 == null)
    {
      localObject2 = new ArrayList();
      ((ArrayList)localObject2).add(this.productVo);
      localObject1 = ((Gson)localObject1).toJson(localObject2);
      PrivateFileReadSave.save(getHistoryName(), (String)localObject1, this.context);
      return;
    }
    localObject2 = JsonParserBuy.parseJson2ListNoItem((String)localObject2, new fg(this).getType());
    int i = 0;
    for (;;)
    {
      if (i < ((ArrayList)localObject2).size())
      {
        if (((BuyProductVo)((ArrayList)localObject2).get(i)).getId().equals(this.productVo.getId())) {
          ((ArrayList)localObject2).remove(i);
        }
      }
      else
      {
        if (((ArrayList)localObject2).size() == 10) {
          ((ArrayList)localObject2).remove(9);
        }
        ((ArrayList)localObject2).add(0, this.productVo);
        localObject1 = ((Gson)localObject1).toJson(localObject2);
        break;
      }
      i += 1;
    }
  }
  
  public void changePoint(int paramInt)
  {
    int i = 0;
    if (i < this.arrImageView.size())
    {
      if (i == paramInt)
      {
        ((ImageView)this.arrImageView.get(i)).setBackgroundResource(2130837791);
        this.lin_point.invalidate();
      }
      for (;;)
      {
        i += 1;
        break;
        ((ImageView)this.arrImageView.get(i)).setBackgroundResource(2130837790);
        this.lin_point.invalidate();
      }
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    System.out.println(paramInt2);
    if (paramInt2 > 0)
    {
      this.productVo.setProductSum(this.productVo.getProductSum() - paramInt2);
      if (this.productVo.getProductSum() > 0) {
        break label99;
      }
      this.btn_add.setBackgroundResource(2130837511);
    }
    for (;;)
    {
      paramInt1 = FunctionPublic.str2int(this.tv_carnumber.getText().toString());
      this.tv_carnumber.setText(paramInt1 + paramInt2);
      this.tv_carnumber.setVisibility(0);
      return;
      label99:
      this.btn_add.setBackgroundResource(2130837510);
    }
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
    case 2131362043: 
    case 2131362066: 
    case 2131362070: 
      do
      {
        do
        {
          return;
          finish();
          return;
          if (getInfo().getUserId() == null) {
            break;
          }
        } while (!this.isFinish);
        if ("0".equals(this.isCollection))
        {
          addCollection(3);
          return;
        }
        delCollection(4);
        return;
        startActivity(new Intent(this.context, YYGYContants.getLoginClass()));
        return;
        if (getInfo().getUserId() == null) {
          break label328;
        }
        if ((this.productVo.getIsStandard() == 1) || (this.productVo.getProductSum() <= 0)) {
          break;
        }
      } while (!this.isFinish);
      this.isFinish = false;
      this.loadDialog.show();
      addBuyCar(2, getInfo().getUserId());
      return;
      paramView = null;
      if (this.pics.length > 0) {
        paramView = this.pics[0];
      }
      Intent localIntent = new Intent(this.context, BuyProductStandard.class);
      localIntent.putExtra("relation", this.productVo.getStandardRelation());
      localIntent.putExtra("standard", this.productVo.getStandard());
      localIntent.putExtra("pic", paramView);
      localIntent.putExtra("sum", this.productVo.getProductSum());
      localIntent.putExtra("pricerange", this.productVo.getPriceRange());
      localIntent.putExtra("productid", this.id);
      overridePendingTransition(2130968581, 2130968582);
      startActivityForResult(localIntent, 1);
      return;
      startActivity(new Intent(this.context, YYGYContants.getLoginClass()));
      return;
    case 2131362067: 
      label328:
      if (getInfo().getUserId() == null)
      {
        paramView = new Intent(this.context, YYGYContants.getLoginClass());
        this.context.startActivity(paramView);
        return;
      }
      paramView = new Intent(this.context, BuyBuyCar.class);
      this.context.startActivity(paramView);
      return;
    }
    paramView = new Intent(this.context, BuyProCommentList2.class);
    paramView.putExtra("id", this.id);
    this.context.startActivity(paramView);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903072);
    this.id = getIntent().getStringExtra("id");
    this.loadDialog = createLoadingDialog(2131230756);
    this.handler = new fj(this);
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.load.show(2131230756);
    initWidget();
    getData(1);
  }
  
  protected void onResume()
  {
    super.onResume();
    getBuyCar(5);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyProductDetail.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */