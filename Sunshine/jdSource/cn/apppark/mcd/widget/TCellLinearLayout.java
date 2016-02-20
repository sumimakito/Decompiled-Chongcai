package cn.apppark.mcd.widget;

import ak;
import al;
import am;
import an;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.Handler;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.imge.ImgUtil;
import cn.apppark.vertify.activity.tieba.TPicCellInfo;
import java.io.File;
import java.util.ArrayList;

public class TCellLinearLayout
  extends LinearLayout
{
  public static final int REQUEST_CAMERA = 2;
  public static final int SELECT_PICTURE_SHARE = 0;
  public static final int SELECT_PICTURE_SHARE_KIT = 1;
  public int MIN_MOVE_DIS = 10;
  public int MaxPicNum = 9;
  private Button btn_add;
  public int cellHeight = 130;
  public int cellWidth = 90;
  public int childNum;
  public boolean isMove = false;
  public int lastPositionX;
  public int lastX;
  public int leftScrollPos = YYGYContants.screenWidth / 4;
  public int[] locationX = new int[this.MaxPicNum];
  public LayoutInflater mInflater;
  public Vibrator mVibrator;
  private Activity parentAct;
  private HorizontalScrollView parentScroll;
  public Uri photoUri;
  public int rightScrollPos = YYGYContants.screenWidth * 3 / 4;
  public int screenWidth = YYGYContants.screenWidth;
  public File tempFile;
  private String tempFilePath = Environment.getExternalStorageDirectory().getPath() + "/temp.jpg";
  public TPicCellInfo tempTPicCellInfo;
  private TextView tv_number;
  public int uniqueIndex = 0;
  public ArrayList<TPicCellInfo> uniqueIndexSeq = new ArrayList();
  
  public TCellLinearLayout(Context paramContext)
  {
    super(paramContext);
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.mVibrator = ((Vibrator)paramContext.getSystemService("vibrator"));
  }
  
  public TCellLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.mVibrator = ((Vibrator)paramContext.getSystemService("vibrator"));
  }
  
  private void exchangePostion(int paramInt1, int paramInt2)
  {
    TPicCellInfo localTPicCellInfo = (TPicCellInfo)this.uniqueIndexSeq.get(paramInt1);
    this.uniqueIndexSeq.set(paramInt1, this.uniqueIndexSeq.get(paramInt2));
    this.uniqueIndexSeq.set(paramInt2, localTPicCellInfo);
  }
  
  private int getCurrentLocationIndex(int paramInt)
  {
    int i = 0;
    while (i < this.uniqueIndexSeq.size())
    {
      if (paramInt == ((TPicCellInfo)this.uniqueIndexSeq.get(i)).getCid()) {
        return i;
      }
      i += 1;
    }
    return 0;
  }
  
  private void getPhoto(int paramInt)
  {
    try
    {
      this.tempFile = new File(this.tempFilePath);
      this.photoUri = Uri.fromFile(this.tempFile);
      this.parentAct.startActivityForResult(ImgUtil.takePhotoIntent(this.photoUri), paramInt);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private void getPic()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.parentAct).setTitle("选取图片");
    ak localak = new ak(this);
    localBuilder.setItems(new String[] { "相册", "拍照" }, localak).show();
  }
  
  private void getPic(int paramInt1, int paramInt2)
  {
    this.tempFile = new File(this.tempFilePath);
    Intent localIntent = new Intent("android.intent.action.GET_CONTENT");
    localIntent.addCategory("android.intent.category.OPENABLE");
    localIntent.setType("image/*");
    paramInt2 = Build.VERSION.SDK_INT;
    this.parentAct.startActivityForResult(localIntent, paramInt1);
  }
  
  private void isExchangePosition(View paramView, int paramInt)
  {
    int i = getCurrentLocationIndex(((TPicCellInfo)paramView.getTag()).getCid());
    this.lastPositionX = this.locationX[i];
    if ((i + 1 < this.childNum) && (paramInt > this.locationX[(i + 1)] - paramView.getWidth() / 3))
    {
      ((TPicCellInfo)this.uniqueIndexSeq.get(i + 1)).getRel().layout(this.locationX[i], paramView.getTop(), this.locationX[i] + paramView.getWidth(), paramView.getBottom());
      exchangePostion(i, i + 1);
      this.lastPositionX = this.locationX[(i + 1)];
    }
    while ((i - 1 < 0) || (paramInt >= this.locationX[(i - 1)] + paramView.getWidth() / 3)) {
      return;
    }
    ((TPicCellInfo)this.uniqueIndexSeq.get(i - 1)).getRel().layout(this.locationX[i], paramView.getTop(), this.locationX[i] + paramView.getWidth(), paramView.getBottom());
    exchangePostion(i, i - 1);
    this.lastPositionX = this.locationX[(i - 1)];
  }
  
  private void jumpToPosition(View paramView, int paramInt)
  {
    ((TPicCellInfo)paramView.getTag()).getImgbg().setVisibility(4);
    paramView.layout(paramInt, paramView.getTop(), paramView.getWidth() + paramInt, paramView.getBottom());
  }
  
  private void moveToPosition(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.layout(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  private void setParentScrollAble(boolean paramBoolean, HorizontalScrollView paramHorizontalScrollView)
  {
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      paramHorizontalScrollView.requestDisallowInterceptTouchEvent(paramBoolean);
      return;
    }
  }
  
  public void addCell()
  {
    removeAllViews();
    int i = 0;
    while (i < this.uniqueIndexSeq.size())
    {
      addView(((TPicCellInfo)this.uniqueIndexSeq.get(i)).getRel());
      i += 1;
    }
    if (this.childNum < this.MaxPicNum) {
      getPic();
    }
    for (;;)
    {
      setTextNum(this.tv_number, this.uniqueIndexSeq.size());
      return;
      this.btn_add.setVisibility(8);
    }
  }
  
  public void addCellToView(String paramString, Handler paramHandler)
  {
    RelativeLayout localRelativeLayout = getView();
    addView(localRelativeLayout, 0);
    this.tempTPicCellInfo = ((TPicCellInfo)localRelativeLayout.getTag());
    this.tempTPicCellInfo.setPicSDpath(paramString);
    this.tempTPicCellInfo.setPicName(paramString);
    if (paramHandler != null) {
      paramHandler.postDelayed(new am(this), 1000L);
    }
    setTextNum(this.tv_number, this.uniqueIndexSeq.size());
  }
  
  public void destroyCell() {}
  
  public Button getBtn_add()
  {
    return this.btn_add;
  }
  
  public Activity getParentAct()
  {
    return this.parentAct;
  }
  
  public HorizontalScrollView getParentScroll()
  {
    return this.parentScroll;
  }
  
  public TextView getTv_number()
  {
    return this.tv_number;
  }
  
  public RelativeLayout getView()
  {
    this.uniqueIndex += 1;
    RelativeLayout localRelativeLayout = (RelativeLayout)this.mInflater.inflate(2130903210, null);
    ImageView localImageView1 = (ImageView)localRelativeLayout.findViewById(2131362419);
    localImageView1.setScaleType(ImageView.ScaleType.CENTER_CROP);
    ImageView localImageView2 = (ImageView)localRelativeLayout.findViewById(2131362836);
    TextView localTextView = (TextView)localRelativeLayout.findViewById(2131362837);
    TPicCellInfo localTPicCellInfo = new TPicCellInfo();
    localTPicCellInfo.setCid(this.uniqueIndex);
    localTPicCellInfo.setImg(localImageView1);
    localTPicCellInfo.setImgbg(localImageView2);
    localTPicCellInfo.setRel(localRelativeLayout);
    localTPicCellInfo.setTv(localTextView);
    this.uniqueIndexSeq.add(0, localTPicCellInfo);
    localRelativeLayout.setLayoutParams(new LinearLayout.LayoutParams(PublicUtil.dip2px(this.cellWidth), PublicUtil.dip2px(this.cellHeight)));
    localRelativeLayout.setOnLongClickListener(new al(this));
    localTextView.setOnClickListener(new TCellLinearLayout.3(this));
    localRelativeLayout.setOnClickListener(new TCellLinearLayout.4(this));
    localTextView.setTag(localTPicCellInfo);
    localRelativeLayout.setTag(localTPicCellInfo);
    localRelativeLayout.setOnTouchListener(new an(this, null));
    return localRelativeLayout;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    paramInt2 = getChildCount();
    this.childNum = paramInt2;
    paramInt1 = 0;
    while (paramInt1 < paramInt2)
    {
      View localView = getChildAt(paramInt1);
      this.locationX[paramInt1] = localView.getLeft();
      paramInt1 += 1;
    }
  }
  
  public void removeAllCell()
  {
    this.uniqueIndexSeq.clear();
    removeAllViews();
    this.btn_add.setVisibility(0);
    setTextNum(this.tv_number, this.uniqueIndexSeq.size());
  }
  
  public void removeCell(View paramView)
  {
    paramView = (TPicCellInfo)paramView.getTag();
    removeView(paramView.getRel());
    this.uniqueIndexSeq.remove(paramView);
    if (this.childNum <= this.MaxPicNum) {
      this.btn_add.setVisibility(0);
    }
    setTextNum(this.tv_number, this.uniqueIndexSeq.size());
  }
  
  public void setBtn_add(Button paramButton)
  {
    this.btn_add = paramButton;
  }
  
  public void setParentAct(Activity paramActivity)
  {
    this.parentAct = paramActivity;
  }
  
  public void setParentScroll(HorizontalScrollView paramHorizontalScrollView)
  {
    this.parentScroll = paramHorizontalScrollView;
  }
  
  public void setTextNum(TextView paramTextView, int paramInt)
  {
    paramTextView.setText("已选 " + paramInt + " 张，还剩 " + (this.MaxPicNum - paramInt) + " 张可选");
  }
  
  public void setTv_number(TextView paramTextView)
  {
    this.tv_number = paramTextView;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/TCellLinearLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */