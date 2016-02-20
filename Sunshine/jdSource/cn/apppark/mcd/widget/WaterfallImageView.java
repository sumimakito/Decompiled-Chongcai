package cn.apppark.mcd.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import ao;
import aq;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.imge.CacheUtil;
import cn.apppark.mcd.util.imge.ImgUtil;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.mcd.vo.dyn.DynMsgListVo;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

public class WaterfallImageView
  extends RelativeLayout
{
  public static final int PIC_WHAT = 1;
  public ImageView a;
  TextView b;
  public Bitmap bitmap;
  TextView c;
  private int columnIndex;
  private Context context;
  TextView d;
  TextView e;
  TextView f;
  ImageView g;
  String h;
  boolean i = true;
  private DynMsgListVo itemVo;
  private DynMsgListReturnVo returnVo;
  private int rowSpace = PublicUtil.dip2px(10.0F);
  private Handler viewHandler;
  
  public WaterfallImageView(Context paramContext, DynMsgListReturnVo paramDynMsgListReturnVo, DynMsgListVo paramDynMsgListVo, String paramString)
  {
    super(paramContext);
    this.returnVo = paramDynMsgListReturnVo;
    this.context = paramContext;
    this.itemVo = paramDynMsgListVo;
    this.h = paramString;
    Init();
  }
  
  private void Init()
  {
    setPadding(0, 0, 0, this.rowSpace);
    RelativeLayout localRelativeLayout = (RelativeLayout)((LayoutInflater)this.context.getSystemService("layout_inflater")).inflate(2130903101, null);
    this.a = ((ImageView)localRelativeLayout.findViewById(2131362258));
    this.e = ((TextView)localRelativeLayout.findViewById(2131362264));
    this.f = ((TextView)localRelativeLayout.findViewById(2131362263));
    this.b = ((TextView)localRelativeLayout.findViewById(2131362260));
    this.c = ((TextView)localRelativeLayout.findViewById(2131362261));
    this.d = ((TextView)localRelativeLayout.findViewById(2131362265));
    this.g = ((ImageView)localRelativeLayout.findViewById(2131362262));
    this.g.setVisibility(8);
    if ("1".equals(this.returnVo.getType()))
    {
      this.g.setVisibility(0);
      this.g.setImageResource(2130837654);
    }
    for (;;)
    {
      FunctionPublic.setTextStyle(this.b, this.itemVo.getStyle_text1Size(), this.itemVo.getStyle_text1Color(), this.itemVo.getStyle_text1Bold());
      this.b.setText(this.returnVo.getTitle());
      this.c.setText(this.returnVo.getNote());
      this.f.setText(this.returnVo.getCommentCount());
      this.e.setText(this.returnVo.getBrowseCount());
      setOnClickListener(new WaterfallImageView.1(this));
      this.a.setAdjustViewBounds(true);
      localRelativeLayout.setBackgroundDrawable(ImgUtil.getRoundColorBg(this.itemVo.getStyle_rowBgColor()));
      addView(localRelativeLayout);
      return;
      if ("2".equals(this.returnVo.getType()))
      {
        this.g.setVisibility(0);
        this.g.setImageResource(2130837640);
      }
      else if ("3".equals(this.returnVo.getType()))
      {
        this.g.setVisibility(0);
        this.g.setImageResource(2130837658);
      }
      else
      {
        this.g.setVisibility(8);
      }
    }
  }
  
  private Bitmap downLoadPic(String paramString)
  {
    Object localObject2 = null;
    Object localObject3 = HQCHApplication.cacheUtil.findBitmapByAbPath(YYGYContants.baseImgCachePath + PublicUtil.getMD5Str(paramString));
    if (localObject3 != null) {
      return (Bitmap)localObject3;
    }
    Object localObject4;
    Object localObject1;
    try
    {
      InputStream localInputStream = new URL(paramString).openStream();
      localObject2 = localInputStream;
      localObject4 = new ByteArrayOutputStream();
      localObject2 = localInputStream;
      byte[] arrayOfByte = new byte['Ȁ'];
      for (;;)
      {
        localObject2 = localInputStream;
        int j = localInputStream.read(arrayOfByte, 0, 512);
        if (j == -1) {
          break;
        }
        localObject2 = localInputStream;
        ((ByteArrayOutputStream)localObject4).write(arrayOfByte, 0, j);
        localObject2 = localInputStream;
        ((ByteArrayOutputStream)localObject4).flush();
      }
      ((Exception)localObject3).printStackTrace();
    }
    catch (Exception localException1)
    {
      paramString = (String)localObject3;
      localObject3 = localException1;
      localObject1 = localObject2;
    }
    for (;;)
    {
      localObject3 = paramString;
      if (localObject1 == null) {
        break;
      }
      try
      {
        ((InputStream)localObject1).close();
        return paramString;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        return paramString;
      }
      localObject2 = localIOException;
      localObject4 = ((ByteArrayOutputStream)localObject4).toByteArray();
      localObject2 = localIOException;
      localObject4 = BitmapFactory.decodeByteArray((byte[])localObject4, 0, localObject4.length);
      localObject2 = localObject4;
      try
      {
        ImgUtil.saveMyBitmap((Bitmap)localObject2, YYGYContants.baseImgCachePath, PublicUtil.getMD5Str(paramString), paramString);
        paramString = (String)localObject2;
      }
      catch (Exception localException2)
      {
        paramString = (String)localObject2;
      }
    }
  }
  
  public void LoadImage()
  {
    if (getFlowTag() != null) {
      new ao(this).start();
    }
  }
  
  public void Reload()
  {
    if ((this.bitmap == null) && (getFlowTag() != null)) {
      new aq(this).start();
    }
  }
  
  public int getColumnIndex()
  {
    return this.columnIndex;
  }
  
  public DynMsgListReturnVo getFlowTag()
  {
    return this.returnVo;
  }
  
  public Handler getViewHandler()
  {
    return this.viewHandler;
  }
  
  public void recycle()
  {
    this.a.setImageBitmap(null);
    if ((this.bitmap == null) || (this.bitmap.isRecycled())) {
      return;
    }
    this.bitmap.recycle();
    this.bitmap = null;
  }
  
  public void setColumnIndex(int paramInt)
  {
    this.columnIndex = paramInt;
  }
  
  public void setDynMsgListReturnVo(DynMsgListReturnVo paramDynMsgListReturnVo)
  {
    this.returnVo = paramDynMsgListReturnVo;
  }
  
  public WaterfallImageView setViewHandler(Handler paramHandler)
  {
    this.viewHandler = paramHandler;
    return this;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/WaterfallImageView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */