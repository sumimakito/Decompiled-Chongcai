package cn.apppark.vertify.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.mcd.vo.tieba.ImgVo;
import cn.apppark.mcd.vo.tieba.TMainVo;
import cn.apppark.vertify.activity.free.dyn.PicGallery;
import cn.apppark.vertify.activity.tieba.TMain;
import java.util.ArrayList;

class TMainAdapter$MyonClickListener
  implements View.OnClickListener
{
  private TMainVo b;
  private int c;
  
  public TMainAdapter$MyonClickListener(TMainAdapter paramTMainAdapter, TMainVo paramTMainVo, int paramInt)
  {
    this.b = paramTMainVo;
    this.c = paramInt;
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131362912: 
    default: 
      return;
    case 2131362909: 
    case 2131362910: 
    case 2131362911: 
      paramView = new Intent(TMainAdapter.a(this.a), PicGallery.class);
      ArrayList localArrayList = new ArrayList();
      int i = 0;
      while (i < this.b.getImgUrlItem().size())
      {
        localArrayList.add(((ImgVo)this.b.getImgUrlItem().get(i)).getImgUrl());
        i += 1;
      }
      paramView.putStringArrayListExtra("urls", localArrayList);
      TMainAdapter.a(this.a).startActivity(paramView);
      return;
    case 2131362913: 
    case 2131362914: 
      paramView = TMainAdapter.b(this.a);
      TMainAdapter.b(this.a).getClass();
      paramView.clickGood(2, this.b.getTopicId(), this.c);
      return;
    }
    TMainAdapter.b(this.a).topicComment(this.c);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/TMainAdapter$MyonClickListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */