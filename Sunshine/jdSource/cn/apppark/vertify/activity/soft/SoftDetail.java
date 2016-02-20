package cn.apppark.vertify.activity.soft;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.Gallery;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RatingBar;
import android.widget.ScrollView;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.free.SoftDetailReturnVo;
import cn.apppark.mcd.vo.free.SoftReturnVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.network.request.WebServicePool;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import re;
import rf;

public class SoftDetail
  extends Activity
{
  private static final int get_what = 1;
  private static final String method = "detail";
  public SoftDetailReturnVo a;
  private RatingBar bar;
  private Button btn_back;
  private Button btn_down;
  private Button btn_open;
  private Button btn_share;
  private Context context = this;
  private Dialog dialog;
  private ArrayList<SoftReturnVo> galleryVoList;
  private ArrayList<SoftReturnVo> galleryVoList_recom;
  private Gallery gallery_big;
  private rf handler;
  private RemoteImageView img_icon;
  private boolean isOpen = false;
  private String itemId;
  private LinearLayout ll_pic;
  private LinearLayout ll_recom;
  private LoadDataProgress load;
  private ScrollView scroll_root;
  private String subjectId;
  private TextView tv_content;
  private TextView tv_detail;
  private TextView tv_name;
  private TextView tv_number;
  
  private void getData(int paramInt, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appId", "10185912");
    localHashMap.put("type", "2");
    localHashMap.put("id", this.itemId);
    localHashMap.put("subjectId", this.subjectId);
    paramString = new WebServicePool(paramInt, this.handler, "json", PublicUtil.map2Json(localHashMap), "http://ws.ckj.hqch.com", "http://www.apppark.cn/ad.ws", paramString);
    paramString.doRequest(paramString);
  }
  
  private void initData()
  {
    if (this.a != null)
    {
      this.img_icon.setImageUrl(this.a.getIconUrl());
      this.tv_name.setText(this.a.getName());
      this.tv_content.setText(this.a.getSortName() + "   " + this.a.getFileSize());
      this.tv_number.setText(this.a.getDownCount() + "次下载");
      this.tv_detail.setText(this.a.getDetail());
      this.tv_detail.setMaxLines(2);
      this.bar.setRating(this.a.getScore());
      this.bar = ((RatingBar)findViewById(2131362810));
    }
    this.ll_recom.removeAllViews();
    if (this.galleryVoList_recom != null)
    {
      int i = 0;
      while (i < this.galleryVoList_recom.size())
      {
        LinearLayout localLinearLayout = new LinearLayout(this.context);
        localLinearLayout.setPadding(5, 0, 5, 0);
        localLinearLayout.setGravity(17);
        RemoteImageView localRemoteImageView = new RemoteImageView(this.context);
        localRemoteImageView.setImageUrl(((SoftReturnVo)this.galleryVoList_recom.get(i)).getIconUrl());
        Object localObject = new TextView(this.context);
        ((TextView)localObject).setText(((SoftReturnVo)this.galleryVoList_recom.get(i)).getName());
        ((TextView)localObject).setTextColor(-1);
        FunctionPublic.setTextSize((TextView)localObject, "12");
        ((TextView)localObject).setMaxLines(1);
        ((TextView)localObject).setGravity(17);
        localLinearLayout.setOrientation(1);
        localLinearLayout.addView(localRemoteImageView, new LinearLayout.LayoutParams(PublicUtil.dip2px(50.0F), PublicUtil.dip2px(50.0F)));
        localLinearLayout.addView((View)localObject);
        localObject = new LinearLayout.LayoutParams(-1, -2);
        ((LinearLayout.LayoutParams)localObject).weight = 1.0F;
        this.ll_recom.addView(localLinearLayout, (ViewGroup.LayoutParams)localObject);
        localRemoteImageView.setOnClickListener(new SoftDetail.6(this, ((SoftReturnVo)this.galleryVoList_recom.get(i)).getId()));
        i += 1;
      }
    }
  }
  
  private void initWidget()
  {
    this.btn_back = ((Button)findViewById(2131362800));
    this.btn_share = ((Button)findViewById(2131362806));
    this.btn_down = ((Button)findViewById(2131362813));
    this.btn_open = ((Button)findViewById(2131362816));
    this.ll_pic = ((LinearLayout)findViewById(2131362815));
    this.scroll_root = ((ScrollView)findViewById(2131362807));
    this.ll_recom = ((LinearLayout)findViewById(2131362818));
    this.img_icon = ((RemoteImageView)findViewById(2131362808));
    this.tv_name = ((TextView)findViewById(2131362809));
    this.tv_content = ((TextView)findViewById(2131362811));
    this.tv_number = ((TextView)findViewById(2131362812));
    this.tv_detail = ((TextView)findViewById(2131362817));
    this.bar = ((RatingBar)findViewById(2131362810));
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.btn_back.setOnClickListener(new SoftDetail.2(this));
    this.btn_open.setOnClickListener(new SoftDetail.3(this));
    ButtonColorFilter.setButtonFocusChanged(this.btn_share);
    this.btn_share.setOnClickListener(new SoftDetail.4(this));
    ButtonColorFilter.setButtonFocusChanged(this.btn_down);
    this.btn_down.setOnClickListener(new SoftDetail.5(this));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903201);
    this.itemId = getIntent().getStringExtra("id");
    this.subjectId = getIntent().getStringExtra("subjectid");
    this.load = ((LoadDataProgress)findViewById(2131361809));
    this.load.getLayoutParams().height = (YYGYContants.screenHeight - PublicUtil.dip2px(44.0F));
    initWidget();
    this.handler = new rf(this, null);
    getData(1, "detail");
    this.dialog = new Dialog(this.context, 2131099661);
    paramBundle = getLayoutInflater().inflate(2130903202, null);
    this.dialog.setContentView(paramBundle);
    this.gallery_big = ((Gallery)paramBundle.findViewById(2131362820));
    this.gallery_big.getLayoutParams().width = YYGYContants.screenWidth;
    this.gallery_big.getLayoutParams().height = YYGYContants.screenHeight;
    this.dialog.setCanceledOnTouchOutside(true);
    this.gallery_big.setOnItemClickListener(new re(this));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/soft/SoftDetail.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */