package cn.apppark.vertify.activity.buy;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextPaint;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.buy.BuyProductRelationVo;
import cn.apppark.mcd.vo.buy.BuyProductStandardVo;
import cn.apppark.mcd.vo.buy.BuyProductValueVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.BaseAct;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.WebServicePool;
import fl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class BuyProductStandard
  extends BaseAct
  implements View.OnClickListener
{
  private static final String ADDBUYCAR_METHOD = "saveShopping_sd";
  private static final int ADDBUYCAR_WHAT = 2;
  private Button btn_add;
  private Button btn_close;
  private Button btn_cut;
  private Button btn_sure;
  private BuyProductValueVo currentFirstVo;
  private BuyProductRelationVo currentRelationVo;
  private BuyProductValueVo currentSencondVo;
  private EditText et_num;
  private int firstPosValueId;
  private String fistTypeId = "0";
  private fl handler;
  private RemoteImageView img_icon;
  private boolean isSecondType = false;
  private ArrayList<LinearLayout> linArray = new ArrayList();
  private LinearLayout ll_standard;
  private HashMap<String, BuyProductRelationVo> mapRelation = new HashMap();
  private HashMap<String, BuyProductValueVo> mapValue = new HashMap();
  private int margin_10 = PublicUtil.dip2px(10.0F);
  private int margin_15 = PublicUtil.dip2px(15.0F);
  private String pic;
  private String pricerange;
  private String productId;
  private int secondPosValueId;
  private String secondTypeId = "1";
  private BuyProductStandardVo standard;
  private ArrayList<BuyProductRelationVo> standardRelation;
  private ArrayList<TextView> standard_tvArray_frist = new ArrayList();
  private ArrayList<TextView> standard_tvArray_second = new ArrayList();
  private String sum;
  private TextView tv_price;
  private TextView tv_standard;
  private TextView tv_stock;
  
  private void addBuyCar(int paramInt, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("memberId", paramString);
    localHashMap.put("productId", this.productId);
    localHashMap.put("number", this.et_num.getText().toString());
    localHashMap.put("standardId", Integer.valueOf(this.currentRelationVo.getStandardId()));
    localHashMap.put("note", "");
    paramString = new WebServicePool(paramInt, this.handler, "json", map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/business.ws", "saveShopping_sd");
    paramString.doRequest(paramString);
  }
  
  private void changeSelect()
  {
    int i = 0;
    Object localObject;
    if (i < this.standard_tvArray_frist.size())
    {
      localObject = (TextView)this.standard_tvArray_frist.get(i);
      if ((((TextView)localObject).getTag().equals(this.fistTypeId + "_" + this.firstPosValueId)) || (((TextView)localObject).getTag().equals(this.secondTypeId + "_" + this.secondPosValueId)))
      {
        FunctionPublic.setTextColor((TextView)localObject, "ffffff");
        FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, (View)localObject);
      }
      for (;;)
      {
        i += 1;
        break;
        FunctionPublic.setBackgroundColor("f1f1f1", (View)localObject);
        FunctionPublic.setTextColor((TextView)localObject, "999999");
      }
    }
    if ((this.firstPosValueId == 0) || ((this.isSecondType) && (this.secondPosValueId == 0))) {
      return;
    }
    this.currentRelationVo = ((BuyProductRelationVo)this.mapRelation.get(this.firstPosValueId + "_" + this.secondPosValueId));
    this.currentFirstVo = ((BuyProductValueVo)this.mapValue.get(this.fistTypeId + "_" + this.firstPosValueId));
    if (this.isSecondType) {
      this.currentSencondVo = ((BuyProductValueVo)this.mapValue.get(this.secondTypeId + "_" + this.secondPosValueId));
    }
    if (this.currentRelationVo != null)
    {
      this.tv_price.setText("¥" + this.currentRelationVo.getPrice());
      this.tv_stock.setText("剩余库存:" + this.currentRelationVo.getStock());
      if (!StringUtil.isNotNull(this.currentRelationVo.getPicUrl())) {
        break label492;
      }
      this.img_icon.setImageUrlCorner(this.currentRelationVo.getPicUrl(), 5);
    }
    for (;;)
    {
      String str = "\"" + this.currentFirstVo.getValueName() + "\"";
      localObject = str;
      if (this.currentSencondVo != null) {
        localObject = str + "  \"" + this.currentSencondVo.getValueName() + "\"";
      }
      this.tv_standard.setText("已选:" + (String)localObject);
      return;
      label492:
      this.img_icon.setImageUrlCorner(this.pic, 5);
    }
  }
  
  private LinearLayout.LayoutParams getLayoutParam()
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.setMargins(this.margin_10, this.margin_10, 0, 0);
    return localLayoutParams;
  }
  
  private int initStandard(String paramString1, String paramString2, ArrayList<BuyProductValueVo> paramArrayList)
  {
    int i1 = 0;
    Object localObject = new TextView(this.context);
    ((TextView)localObject).setPadding(this.margin_10, this.margin_15, this.margin_10, this.margin_10);
    FunctionPublic.setTextStyle((TextView)localObject, paramString1, "14", "333333", "0");
    this.ll_standard.addView((View)localObject);
    int m;
    int n;
    if ((paramArrayList != null) && (paramArrayList.size() > 0))
    {
      int i = 0;
      int k = 0;
      float f1 = 0.0F;
      int j = 0;
      m = i;
      n = i1;
      if (j < paramArrayList.size())
      {
        paramString1 = (BuyProductValueVo)paramArrayList.get(j);
        this.mapValue.put(paramString2 + "_" + paramString1.getValueId(), paramString1);
        if (j == 0) {
          i = paramString1.getValueId();
        }
        float f2 = getTextWidth(this.context, paramString1.getValueName(), 14);
        f1 = f1 + f2 + PublicUtil.dip2px(30.0F);
        if (f1 >= YYGYContants.screenWidth - this.margin_15)
        {
          k += 1;
          localObject = new LinearLayout(this.context);
          ((LinearLayout)localObject).setOrientation(0);
          this.linArray.add(localObject);
          f1 = f2;
        }
        for (;;)
        {
          localObject = new TextView(this.context);
          ((TextView)localObject).setPadding(this.margin_10, this.margin_10, this.margin_10, this.margin_10);
          FunctionPublic.setTextStyle((TextView)localObject, paramString1.getValueName(), "14", "999999", "0");
          ((TextView)localObject).setBackgroundResource(2130837940);
          ((TextView)localObject).setTag(paramString2 + "_" + paramString1.getValueId());
          ((TextView)localObject).setOnClickListener(new BuyProductStandard.1(this));
          this.standard_tvArray_frist.add(localObject);
          ((LinearLayout)this.linArray.get(k)).addView((View)localObject, getLayoutParam());
          j += 1;
          break;
          if ((k == 0) && (this.linArray.size() == 0))
          {
            localObject = new LinearLayout(this.context);
            ((LinearLayout)localObject).setOrientation(0);
            this.linArray.add(localObject);
          }
        }
      }
    }
    for (;;)
    {
      if (n < this.linArray.size())
      {
        this.ll_standard.addView((View)this.linArray.get(n));
        n += 1;
      }
      else
      {
        this.linArray.clear();
        return m;
        m = 0;
        n = i1;
      }
    }
  }
  
  private void initWidget()
  {
    this.btn_sure = ((Button)findViewById(2131362071));
    this.btn_add = ((Button)findViewById(2131362081));
    this.btn_cut = ((Button)findViewById(2131362079));
    this.et_num = ((EditText)findViewById(2131362080));
    this.tv_price = ((TextView)findViewById(2131362073));
    this.tv_stock = ((TextView)findViewById(2131362074));
    this.tv_standard = ((TextView)findViewById(2131362075));
    this.img_icon = ((RemoteImageView)findViewById(2131362082));
    this.ll_standard = ((LinearLayout)findViewById(2131362077));
    this.btn_close = ((Button)findViewById(2131362076));
    ButtonColorFilter.setButtonFocusChanged(this.btn_close);
    this.btn_close.setOnClickListener(this);
    this.btn_add.setOnClickListener(this);
    this.btn_cut.setOnClickListener(this);
    this.btn_sure.setOnClickListener(this);
    int i = 0;
    if (i < this.standardRelation.size()) {
      if (!StringUtil.isNotNull(((BuyProductRelationVo)this.standardRelation.get(i)).getSecondValueId())) {
        break label440;
      }
    }
    label440:
    for (int j = ((BuyProductRelationVo)this.standardRelation.get(i)).getSecondValueId();; j = 0)
    {
      this.mapRelation.put(((BuyProductRelationVo)this.standardRelation.get(i)).getFirstValueId() + "_" + j, this.standardRelation.get(i));
      i += 1;
      break;
      initStandard(this.standard.getFirstType(), this.fistTypeId, this.standard.getFirstValue());
      if ((StringUtil.isNotNull(this.standard.getSecondType())) && (this.standard.getFirstType() != null))
      {
        this.isSecondType = true;
        initStandard(this.standard.getSecondType(), this.secondTypeId, this.standard.getSecondValue());
      }
      this.tv_price.setText("¥" + this.pricerange);
      this.tv_stock.setText("剩余库存:" + this.sum);
      this.img_icon.setImageUrlCorner(this.pic, 5);
      return;
    }
  }
  
  public float getTextWidth(Context paramContext, String paramString, int paramInt)
  {
    TextPaint localTextPaint = new TextPaint();
    localTextPaint.setTextSize(paramContext.getResources().getDisplayMetrics().scaledDensity * paramInt);
    return localTextPaint.measureText(paramString);
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131362071: 
      if ((this.firstPosValueId == 0) || ((this.isSecondType) && (this.secondPosValueId == 0)) || (this.currentRelationVo == null))
      {
        initToast("请选择购买规格!", 0);
        return;
      }
      if ((StringUtil.isNotZero(this.et_num.getText().toString())) && (this.currentRelationVo != null))
      {
        if (FunctionPublic.str2int(this.currentRelationVo.getStock()) < FunctionPublic.str2int(this.et_num.getText().toString()))
        {
          initToast("购买数量超过库存!", 0);
          return;
        }
        this.loadDialog.show();
        addBuyCar(2, getInfo().getUserId());
        return;
      }
      initToast("请输入购买数量!", 0);
      return;
    case 2131362081: 
      if (StringUtil.isNotZero(this.et_num.getText().toString())) {}
      for (i = Integer.parseInt(this.et_num.getText().toString()) + 1;; i = 1)
      {
        this.et_num.setText(i);
        return;
      }
    case 2131362079: 
      if (!StringUtil.isNotZero(this.et_num.getText().toString())) {
        break;
      }
    }
    for (int i = Integer.parseInt(this.et_num.getText().toString()) - 1;; i = 0)
    {
      if (i > 0) {}
      for (;;)
      {
        this.et_num.setText(i);
        return;
        i = 0;
      }
      finish();
      return;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903073);
    this.standard = ((BuyProductStandardVo)getIntent().getSerializableExtra("standard"));
    this.standardRelation = ((ArrayList)getIntent().getSerializableExtra("relation"));
    this.loadDialog = createLoadingDialog(2131230756);
    this.pic = getIntent().getStringExtra("pic");
    this.sum = getIntent().getStringExtra("sum");
    this.pricerange = getIntent().getStringExtra("pricerange");
    this.productId = getIntent().getStringExtra("productid");
    if (StringUtil.isNull(this.productId))
    {
      finish();
      return;
    }
    this.handler = new fl(this);
    initWidget();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuyProductStandard.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */