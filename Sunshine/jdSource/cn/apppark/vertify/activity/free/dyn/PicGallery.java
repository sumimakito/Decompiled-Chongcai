package cn.apppark.vertify.activity.free.dyn;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.Gallery;
import cn.apppark.mcd.util.file.StorageAllocator;
import cn.apppark.mcd.util.imge.ImgUtil;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.BaseAct;
import java.io.IOException;
import java.util.ArrayList;
import kq;
import kr;
import ks;
import ku;

public class PicGallery
  extends BaseAct
  implements View.OnClickListener
{
  private Button btn_cancel;
  private Button btn_save;
  private RemoteImageView currentImage;
  private int currentPosition;
  private Gallery gallery;
  private ks imgAdapter;
  private ArrayList<String> imgUrls;
  private int jumpPosition;
  private Bitmap mBitmap;
  private ku myMenu;
  
  protected void initWidget()
  {
    this.myMenu = new ku(this, this);
    this.gallery = ((Gallery)findViewById(2131362561));
    this.imgAdapter = new ks(this, this);
    this.gallery.setAdapter(this.imgAdapter);
    this.gallery.setSelection(this.jumpPosition);
    this.gallery.setOnItemClickListener(new kq(this));
    this.gallery.setOnItemSelectedListener(new kr(this));
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131362409: 
      this.myMenu.dismiss();
      if (this.mBitmap != null)
      {
        paramView = StorageAllocator.getExternalStoragePath() + "/apppark" + System.currentTimeMillis() + ".png";
        try
        {
          ImgUtil.saveMyBitmap(this.mBitmap, StorageAllocator.getExternalStoragePath(), "apppark" + System.currentTimeMillis() + ".png");
          initToast("保存成功:" + paramView, 0);
          return;
        }
        catch (IOException paramView)
        {
          initToast("保存失败,请稍后重试", 0);
          paramView.printStackTrace();
          return;
        }
      }
      initToast("保存失败,请稍后重试", 0);
      return;
    }
    this.myMenu.dismiss();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903153);
    this.imgUrls = getIntent().getStringArrayListExtra("urls");
    this.jumpPosition = getIntent().getIntExtra("position", 0);
    if (this.imgUrls != null)
    {
      initWidget();
      return;
    }
    finish();
  }
  
  protected void onDestroy()
  {
    if ((this.mBitmap != null) && (!this.mBitmap.isRecycled()))
    {
      this.mBitmap.recycle();
      this.mBitmap = null;
    }
    super.onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (paramInt == 4)
    {
      if (this.myMenu.isShowing()) {
        this.myMenu.dismiss();
      }
    }
    else if (paramInt == 82)
    {
      if (!this.myMenu.isShowing()) {
        break label58;
      }
      this.myMenu.dismiss();
    }
    for (;;)
    {
      bool = true;
      return bool;
      finish();
      break;
      label58:
      this.myMenu.showAtLocation(this.gallery, 80, 0, 0);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/PicGallery.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */