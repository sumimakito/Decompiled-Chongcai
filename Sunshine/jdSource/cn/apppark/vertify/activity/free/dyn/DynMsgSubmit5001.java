package cn.apppark.vertify.activity.free.dyn;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.TimePicker;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.jsonparse.JsonParserUtil;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.dyn.Dyn5001Item2Vo;
import cn.apppark.mcd.vo.dyn.Dyn5001ItemVo;
import cn.apppark.mcd.vo.dyn.Dyn5001Vo;
import cn.apppark.mcd.widget.ElasticScrollView;
import cn.apppark.mcd.widget.InnerScrollView;
import cn.apppark.vertify.activity.FreeAct;
import cn.apppark.vertify.activity.ILoadDataEndListener;
import cn.apppark.vertify.activity.ISelfViewDyn;
import cn.apppark.vertify.network.request.WebServicePool;
import hy;
import hz;
import ia;
import ib;
import ic;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class DynMsgSubmit5001
  extends InnerScrollView
  implements ISelfViewDyn
{
  private static final int INIT_DATA = 1;
  private static final int REF_DATA = 2;
  private static final int SAVE_DATA = 1;
  private static final String SAVE_METHOD = "submitForm";
  Dialog a;
  FreeAct b;
  private Button btn_sub;
  public Dialog c;
  private Context context;
  private int day;
  private List<TextView> etList = new ArrayList();
  private List<TextView> etTimeList = new ArrayList();
  private ic handler;
  private int hour;
  private boolean isFinish = true;
  private Dyn5001Vo itemVo;
  private ArrayList<Dyn5001ItemVo> itemVoList;
  private LinearLayout lin_content;
  private ILoadDataEndListener loadendListener;
  private int minute;
  private int month;
  private List<LinearLayout> multList = new ArrayList();
  private List<TextView> tvList = new ArrayList();
  private TextView tv_content;
  private TextView tv_title;
  private int year;
  
  public DynMsgSubmit5001(Context paramContext, FreePageVo paramFreePageVo, Dyn5001Vo paramDyn5001Vo, ArrayList<Dyn5001ItemVo> paramArrayList, ScrollView paramScrollView, FreeAct paramFreeAct)
  {
    super(paramContext, paramScrollView);
    this.context = paramContext;
    this.b = paramFreeAct;
    setVerticalScrollBarEnabled(false);
    setHorizontalScrollBarEnabled(false);
    setFadingEdgeLength(0);
    this.itemVo = paramDyn5001Vo;
    this.itemVoList = paramArrayList;
    paramFreeAct.scroll.setRefreshable(false);
    this.handler = new ic(this, null);
    paramContext = Calendar.getInstance();
    this.year = paramContext.get(1);
    this.month = paramContext.get(2);
    this.day = paramContext.get(5);
    this.hour = paramContext.get(10);
    this.minute = paramContext.get(12);
    initWidget();
  }
  
  private void clearData()
  {
    int k = 0;
    int i = 0;
    int j;
    for (;;)
    {
      j = k;
      if (i >= this.etList.size()) {
        break;
      }
      ((TextView)this.etList.get(i)).setText("");
      i += 1;
    }
    while (j < this.etTimeList.size())
    {
      ((TextView)this.etTimeList.get(j)).setText("");
      j += 1;
    }
  }
  
  private void hideIM(int paramInt)
  {
    try
    {
      InputMethodManager localInputMethodManager = (InputMethodManager)HQCHApplication.mainActivity.getSystemService("input_method");
      IBinder localIBinder = ((TextView)this.etTimeList.get(paramInt)).getWindowToken();
      if (localIBinder != null) {
        localInputMethodManager.hideSoftInputFromWindow(localIBinder, 0);
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  private void initDialog(int paramInt)
  {
    this.a = new Dialog(HQCHApplication.mainActivity, 2131099661);
    View localView = HQCHApplication.mainActivity.getLayoutInflater().inflate(2130903086, null);
    Object localObject = (DatePicker)localView.findViewById(2131362163);
    TimePicker localTimePicker = (TimePicker)localView.findViewById(2131362164);
    Button localButton = (Button)localView.findViewById(2131362165);
    Calendar localCalendar = Calendar.getInstance();
    this.year = localCalendar.get(1);
    this.month = localCalendar.get(2);
    this.day = localCalendar.get(5);
    this.hour = localCalendar.get(10);
    this.minute = localCalendar.get(12);
    ((DatePicker)localObject).init(this.year, this.month, this.day, new hz(this));
    localTimePicker.setOnTimeChangedListener(new ia(this));
    localButton.setOnClickListener(new DynMsgSubmit5001.6(this, paramInt));
    localObject = new LinearLayout.LayoutParams(-1, -2);
    this.a.setContentView(localView, (ViewGroup.LayoutParams)localObject);
  }
  
  private void saveData(String paramString)
  {
    paramString = new WebServicePool(1, this.handler, "paramJson", paramString, "http://ws.ckj.hqch.com", "http://www.apppark.cn/form.ws", "submitForm");
    paramString.doRequest(paramString);
    this.c = HQCHApplication.createLoadingDialog(HQCHApplication.mainActivity, 2131230756);
    this.c.show();
  }
  
  private void showDate(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, TextView paramTextView)
  {
    paramTextView.setText(paramInt1 + "-" + (paramInt2 + 1) + "-" + paramInt3 + " " + paramInt4 + ":" + paramInt5);
  }
  
  private void showSelDialog(ArrayList<Dyn5001Item2Vo> paramArrayList, TextView paramTextView1, TextView paramTextView2)
  {
    String[] arrayOfString = new String[paramArrayList.size()];
    int i = 0;
    while (i < paramArrayList.size())
    {
      arrayOfString[i] = ((Dyn5001Item2Vo)paramArrayList.get(i)).getLabel();
      i += 1;
    }
    new AlertDialog.Builder(HQCHApplication.mainActivity).setTitle("请选择 ").setIcon(17301659).setSingleChoiceItems(arrayOfString, paramTextView1.getId(), new ib(this, paramTextView1, arrayOfString, paramTextView2, paramArrayList)).setNegativeButton("取消", null).show();
  }
  
  private void subData()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("{ \"formId\":\"" + this.itemVo.getId() + "\",");
    localStringBuffer.append("\"answers\":[");
    int i = 0;
    Object localObject;
    if (i < this.etList.size())
    {
      localObject = (Dyn5001ItemVo)((TextView)this.etList.get(i)).getTag();
      if ("1".equals(((Dyn5001ItemVo)localObject).getStyle_type())) {
        localStringBuffer.append("{ \"itemId\":\"" + ((Dyn5001ItemVo)localObject).getId() + "\",\"answer\":\"" + ((TextView)this.tvList.get(i)).getTag() + "\" },");
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuffer.append("{ \"itemId\":\"" + ((Dyn5001ItemVo)localObject).getId() + "\",\"answer\":\"" + ((TextView)this.etList.get(i)).getText().toString() + "\" },");
      }
    }
    i = 0;
    Dyn5001ItemVo localDyn5001ItemVo;
    int j;
    if (i < this.multList.size())
    {
      LinearLayout localLinearLayout = (LinearLayout)this.multList.get(i);
      localDyn5001ItemVo = (Dyn5001ItemVo)localLinearLayout.getTag();
      int k = localLinearLayout.getChildCount();
      localObject = "";
      j = 0;
      label284:
      if (j < k)
      {
        if ((!(localLinearLayout.getChildAt(j) instanceof CheckBox)) || (!((CheckBox)localLinearLayout.getChildAt(j)).isChecked())) {
          break label538;
        }
        localObject = (String)localObject + ((CheckBox)localLinearLayout.getChildAt(j)).getTag() + ",";
      }
    }
    label538:
    for (;;)
    {
      j += 1;
      break label284;
      if ("".equals(localObject)) {
        localStringBuffer.append("{ \"itemId\":\"" + localDyn5001ItemVo.getId() + "\",\"answer\":\"" + (String)localObject + "\" },");
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuffer.append("{ \"itemId\":\"" + localDyn5001ItemVo.getId() + "\",\"answer\":\"" + ((String)localObject).substring(0, ((String)localObject).length() - 1) + "\" },");
      }
      localStringBuffer.append("],\"phoneId\":\"" + YYGYContants.IMEI + "\" }");
      saveData(localStringBuffer.toString().replaceAll(",]", "]").replaceAll("\n", ""));
      return;
    }
  }
  
  public void init()
  {
    loadSuccess(1);
  }
  
  public void initData()
  {
    loadSuccess(1);
  }
  
  protected void initWidget()
  {
    Object localObject1 = ((LayoutInflater)this.context.getSystemService("layout_inflater")).inflate(2130903095, null);
    addView((View)localObject1, new LinearLayout.LayoutParams(-1, -1));
    this.lin_content = ((LinearLayout)findViewById(2131362206));
    this.tv_title = ((TextView)findViewById(2131362207));
    this.tv_content = ((TextView)findViewById(2131362208));
    if (this.itemVo != null)
    {
      FunctionPublic.setBackground((View)localObject1, this.itemVo.getStyle_bgType(), this.itemVo.getStyle_bgPic(), this.itemVo.getStyle_bgColor());
      FunctionPublic.setTextStyle(this.tv_title, this.itemVo.getData_title(), this.itemVo.getStyle_text1Size(), this.itemVo.getStyle_text1Color(), this.itemVo.getStyle_text1Bold());
      FunctionPublic.setTextStyle(this.tv_content, this.itemVo.getData_describe(), this.itemVo.getStyle_text2Size(), this.itemVo.getStyle_text2Color(), this.itemVo.getStyle_text2Bold());
    }
    FunctionPublic.setBackground(this, this.itemVo.getStyle_bgType(), this.itemVo.getStyle_bgPic(), this.itemVo.getStyle_bgColor());
    int i = 0;
    while (i < this.itemVoList.size())
    {
      Dyn5001ItemVo localDyn5001ItemVo = (Dyn5001ItemVo)this.itemVoList.get(i);
      Object localObject2;
      Object localObject3;
      Object localObject4;
      Object localObject5;
      Object localObject6;
      Object localObject7;
      int j;
      if ("2".equals(localDyn5001ItemVo.getStyle_type()))
      {
        localObject1 = new LinearLayout.LayoutParams(-1, -2);
        localObject2 = new LinearLayout(this.context);
        ((LinearLayout)localObject2).setBackgroundResource(2130837614);
        ((LinearLayout)localObject2).setOrientation(1);
        localObject3 = new LinearLayout(this.context);
        localObject4 = new LinearLayout.LayoutParams(-2, -2);
        localObject5 = new LinearLayout.LayoutParams(-2, -2);
        localObject6 = new TextView(this.context);
        if ("1".equals(localDyn5001ItemVo.getStyle_must()))
        {
          ((TextView)localObject6).setText("*");
          ((TextView)localObject6).setTextColor(-65536);
        }
        localObject7 = new TextView(this.context);
        ((TextView)localObject7).setPadding(0, PublicUtil.dip2px(5.0F), 0, PublicUtil.dip2px(5.0F));
        FunctionPublic.setTextStyle((TextView)localObject7, localDyn5001ItemVo.getData_label(), this.itemVo.getStyle_text3Size(), this.itemVo.getStyle_text3Color(), this.itemVo.getStyle_text3Bold());
        ((LinearLayout)localObject3).setGravity(3);
        ((LinearLayout)localObject3).setOrientation(0);
        ((LinearLayout)localObject3).addView((View)localObject7, (ViewGroup.LayoutParams)localObject4);
        ((LinearLayout)localObject3).addView((View)localObject6, (ViewGroup.LayoutParams)localObject5);
        if (localDyn5001ItemVo.getData_options() == null) {
          return;
        }
        localObject4 = new LinearLayout.LayoutParams(-1, -2);
        ((LinearLayout.LayoutParams)localObject4).setMargins(PublicUtil.dip2px(5.0F), 0, 0, 0);
        localObject5 = new hy(this).getType();
        localObject5 = JsonParserUtil.parseElement2ListDirect(localDyn5001ItemVo.getData_options(), (Type)localObject5);
        if (localObject5 != null)
        {
          j = 0;
          while (j < ((ArrayList)localObject5).size())
          {
            localObject6 = new CheckBox(this.context);
            ((CheckBox)localObject6).setText(((Dyn5001Item2Vo)((ArrayList)localObject5).get(j)).getLabel());
            FunctionPublic.setTextStyle((TextView)localObject6, ((Dyn5001Item2Vo)((ArrayList)localObject5).get(j)).getLabel(), this.itemVo.getStyle_text3Size(), this.itemVo.getStyle_text3Color(), this.itemVo.getStyle_text3Bold());
            ((CheckBox)localObject6).setButtonDrawable(2130837607);
            ((CheckBox)localObject6).setTag(((Dyn5001Item2Vo)((ArrayList)localObject5).get(j)).getId());
            if (j > 0)
            {
              localObject7 = new TextView(this.context);
              ((TextView)localObject7).setBackgroundResource(2131165189);
              ((TextView)localObject7).setHeight(1);
              ((LinearLayout)localObject2).addView((View)localObject7, (ViewGroup.LayoutParams)localObject1);
            }
            ((LinearLayout)localObject2).addView((View)localObject6, (ViewGroup.LayoutParams)localObject4);
            j += 1;
          }
        }
        ((LinearLayout)localObject2).setTag(localDyn5001ItemVo);
        this.multList.add(localObject2);
        this.lin_content.addView((View)localObject3, (ViewGroup.LayoutParams)localObject1);
        this.lin_content.addView((View)localObject2, (ViewGroup.LayoutParams)localObject1);
        i += 1;
      }
      else
      {
        localObject2 = new RelativeLayout.LayoutParams(-1, -2);
        localObject6 = new RelativeLayout.LayoutParams(PublicUtil.dip2px(10.0F), PublicUtil.dip2px(6.0F));
        ((RelativeLayout.LayoutParams)localObject6).addRule(11);
        ((RelativeLayout.LayoutParams)localObject6).addRule(15);
        ((RelativeLayout.LayoutParams)localObject6).setMargins(0, 0, PublicUtil.dip2px(10.0F), 0);
        localObject3 = new TextView(this.context);
        localObject4 = new TextView(this.context);
        localObject5 = new RelativeLayout(this.context);
        if (("3".equals(localDyn5001ItemVo.getStyle_inputType())) || ("1".equals(localDyn5001ItemVo.getStyle_type())))
        {
          localObject1 = new Button(this.context);
          ButtonColorFilter.setButtonFocusChanged((View)localObject1);
          ((TextView)localObject1).setBackgroundResource(2130837664);
          localObject7 = new TextView(this.context);
          ((TextView)localObject7).setBackgroundResource(2130837662);
          ((RelativeLayout)localObject5).addView((View)localObject1, (ViewGroup.LayoutParams)localObject2);
          ((RelativeLayout)localObject5).addView((View)localObject7, (ViewGroup.LayoutParams)localObject6);
          label929:
          if (FunctionPublic.str2int(localDyn5001ItemVo.getStyle_height()) <= 60) {
            break label1486;
          }
          ((TextView)localObject1).setPadding(PublicUtil.dip2px(10.0F), PublicUtil.dip2px(5.0F), 0, 0);
          ((TextView)localObject1).setGravity(48);
        }
        for (;;)
        {
          FunctionPublic.setTextStyle((TextView)localObject3, localDyn5001ItemVo.getData_label(), this.itemVo.getStyle_text3Size(), this.itemVo.getStyle_text3Color(), this.itemVo.getStyle_text3Bold());
          FunctionPublic.setTextStyle((TextView)localObject1, "", this.itemVo.getStyle_text3Size(), "000000", "0");
          if ("1".equals(localDyn5001ItemVo.getStyle_must()))
          {
            ((TextView)localObject4).setText("*");
            ((TextView)localObject4).setTextColor(-65536);
          }
          j = FunctionPublic.scaleNumber(localDyn5001ItemVo.getStyle_height());
          if (j > 0)
          {
            ((RelativeLayout.LayoutParams)localObject2).height = j;
            ((TextView)localObject1).setHeight(j);
          }
          localObject6 = new LinearLayout.LayoutParams(-1, -2);
          localObject7 = new LinearLayout(this.context);
          ((LinearLayout)localObject7).setPadding(0, PublicUtil.dip2px(5.0F), 0, PublicUtil.dip2px(5.0F));
          ((LinearLayout)localObject7).setGravity(17);
          ((LinearLayout)localObject7).setOrientation(1);
          ((LinearLayout)localObject7).setGravity(1);
          LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-2, -2);
          LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-2, -2);
          LinearLayout localLinearLayout = new LinearLayout(this.context);
          localLinearLayout.setGravity(3);
          localLinearLayout.setOrientation(0);
          localLinearLayout.addView((View)localObject3, localLayoutParams1);
          localLinearLayout.addView((View)localObject4, localLayoutParams2);
          ((LinearLayout)localObject7).addView(localLinearLayout, (ViewGroup.LayoutParams)localObject6);
          ((LinearLayout)localObject7).addView((View)localObject5, (ViewGroup.LayoutParams)localObject2);
          ((TextView)localObject1).setId(i);
          ((TextView)localObject1).setTag(localDyn5001ItemVo);
          ((TextView)localObject3).setTag("");
          this.tvList.add(localObject3);
          this.etList.add(localObject1);
          this.lin_content.addView((View)localObject7);
          if ("1".equals(localDyn5001ItemVo.getStyle_type()))
          {
            ((TextView)localObject1).setId(0);
            ((TextView)localObject1).setOnClickListener(new DynMsgSubmit5001.MyonClickListener(this, localDyn5001ItemVo.getData_options(), (TextView)localObject1, (TextView)localObject3));
          }
          if ("1".equals(localDyn5001ItemVo.getStyle_inputType())) {
            ((TextView)localObject1).setInputType(3);
          }
          if (!"3".equals(localDyn5001ItemVo.getStyle_inputType())) {
            break;
          }
          this.etTimeList.add(localObject1);
          ((TextView)localObject1).setId(this.etTimeList.size() - 1);
          ((TextView)localObject1).setText(this.year + "-" + this.month + "-" + this.day + " " + this.hour + ":" + this.minute);
          ((TextView)localObject1).setOnClickListener(new DynMsgSubmit5001.2(this));
          break;
          localObject1 = new EditText(this.context);
          ((TextView)localObject1).setBackgroundResource(2130837663);
          ((RelativeLayout)localObject5).addView((View)localObject1, (ViewGroup.LayoutParams)localObject2);
          break label929;
          label1486:
          ((TextView)localObject1).setPadding(PublicUtil.dip2px(10.0F), 0, 0, 0);
          ((TextView)localObject1).setGravity(3);
          ((TextView)localObject1).setGravity(16);
        }
      }
    }
    this.btn_sub = new Button(this.context);
    ButtonColorFilter.setButtonFocusChanged(this.btn_sub);
    localObject1 = new LinearLayout.LayoutParams((int)(FunctionPublic.str2int(this.itemVo.getStyle_commitWidth()) * YYGYContants.scaleUnite), (int)(FunctionPublic.str2int(this.itemVo.getStyle_commitHeight()) * YYGYContants.scaleUnite));
    ((LinearLayout.LayoutParams)localObject1).setMargins(0, PublicUtil.dip2px(10.0F), 0, 0);
    this.lin_content.addView(this.btn_sub, (ViewGroup.LayoutParams)localObject1);
    FunctionPublic.setBackground(this.btn_sub, this.itemVo.getStyle_commitBgType(), this.itemVo.getStyle_commitBgPic(), this.itemVo.getStyle_commitBgColor(), this.itemVo.getStyle_commitBgAlpha());
    FunctionPublic.setTextStyle(this.btn_sub, this.itemVo.getData_commitText(), this.itemVo.getStyle_text4Size(), this.itemVo.getStyle_text4Color(), this.itemVo.getStyle_text4Bold());
    switch (FunctionPublic.str2int(this.itemVo.getStyle_text4Align()))
    {
    }
    for (;;)
    {
      this.btn_sub.setOnClickListener(new DynMsgSubmit5001.3(this));
      return;
      this.btn_sub.setGravity(3);
      continue;
      this.btn_sub.setGravity(17);
      continue;
      this.btn_sub.setGravity(5);
    }
  }
  
  public boolean isCache()
  {
    return false;
  }
  
  public boolean isOnMethod()
  {
    return false;
  }
  
  public void loadSuccess(int paramInt)
  {
    if (this.loadendListener != null) {
      this.loadendListener.onLoadSuccess(paramInt);
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {}
  
  public void onDestroy() {}
  
  public void onPause() {}
  
  public void onRefresh()
  {
    loadSuccess(2);
  }
  
  public void onResume() {}
  
  public void setLoadendListener(ILoadDataEndListener paramILoadDataEndListener)
  {
    this.loadendListener = paramILoadDataEndListener;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */