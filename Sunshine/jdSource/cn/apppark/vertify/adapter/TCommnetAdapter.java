package cn.apppark.vertify.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.tieba.ImgVo;
import cn.apppark.mcd.vo.tieba.TCommentVo;
import cn.apppark.mcd.vo.tieba.TReplayVo;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.tieba.TBaseParam;
import cn.apppark.vertify.base.ClientPersionInfo;
import java.util.ArrayList;
import vc;
import vd;

public class TCommnetAdapter
  extends TempBaseAdapter
{
  private Button btn_comment;
  private Button btn_delete;
  private Context context;
  private TCommentVo currentCommentVo;
  private int currentPosition;
  private ClientPersionInfo info;
  private ArrayList<TCommentVo> itemList;
  private LayoutInflater mInflater;
  private TCommnetAdapter.OnDeleteListener onDeleteListener;
  private TCommnetAdapter.OnPicClickListener onPicClickListener;
  private vd popMenu;
  private String topicId;
  private String topicUserId;
  
  public TCommnetAdapter(Context paramContext, ArrayList<TCommentVo> paramArrayList, String paramString1, String paramString2)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.itemList = paramArrayList;
    this.context = paramContext;
    this.topicId = paramString1;
    this.topicUserId = paramString2;
    if (this.popMenu == null) {
      this.popMenu = new vd(this);
    }
    this.info = new ClientPersionInfo(paramContext);
  }
  
  public void destroyPop()
  {
    if (this.popMenu != null)
    {
      this.popMenu.dismiss();
      this.popMenu = null;
    }
  }
  
  public int getCount()
  {
    return this.itemList.size();
  }
  
  public Object getItem(int paramInt)
  {
    return this.itemList.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    TCommentVo localTCommentVo;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903236, null);
      paramViewGroup = new vc();
      paramViewGroup.a = ((RemoteImageView)paramView.findViewById(2131362967));
      paramViewGroup.c = ((ImageView)paramView.findViewById(2131362969));
      paramViewGroup.b = ((ImageView)paramView.findViewById(2131362974));
      paramViewGroup.d = ((TextView)paramView.findViewById(2131362968));
      paramViewGroup.e = ((TextView)paramView.findViewById(2131362970));
      paramViewGroup.f = ((TextView)paramView.findViewById(2131362972));
      paramViewGroup.g = ((LinearLayout)paramView.findViewById(2131362975));
      paramViewGroup.h = ((LinearLayout)paramView.findViewById(2131362978));
      paramViewGroup.k = ((ImageView)paramView.findViewById(2131362977));
      paramViewGroup.l = ((ImageView)paramView.findViewById(2131362980));
      paramViewGroup.i = ((TextView)paramView.findViewById(2131362976));
      paramViewGroup.j = ((TextView)paramView.findViewById(2131362979));
      paramViewGroup.m = ((TextView)paramView.findViewById(2131362981));
      paramViewGroup.n = ((Button)paramView.findViewById(2131362955));
      paramViewGroup.p = ((LinearLayout)paramView.findViewById(2131362954));
      paramViewGroup.o = ((LinearLayout)paramView.findViewById(2131362973));
      ButtonColorFilter.setButtonFocusChanged(paramViewGroup.n);
      paramView.setTag(paramViewGroup);
      localTCommentVo = (TCommentVo)this.itemList.get(paramInt);
      if (localTCommentVo == null) {
        break label1217;
      }
      paramViewGroup.a.setImageUrl(localTCommentVo.getHeadUrl());
      paramViewGroup.d.setText(localTCommentVo.getUserName());
      paramViewGroup.e.setText("第" + localTCommentVo.getFloorNum() + "楼, " + localTCommentVo.getSubTime());
      if ((this.topicUserId == null) || (!this.topicUserId.equals(localTCommentVo.getUserId()))) {
        break label607;
      }
      paramViewGroup.c.setVisibility(0);
    }
    for (;;)
    {
      if (paramViewGroup.f != null) {
        paramViewGroup.f.setText(TBaseParam.getSpanStr(this.context, localTCommentVo.getContent(), -16777216));
      }
      paramViewGroup.g.setVisibility(8);
      paramViewGroup.h.setVisibility(8);
      paramViewGroup.i.setText(null);
      paramViewGroup.j.setText(null);
      paramViewGroup.m.setVisibility(8);
      paramViewGroup.b.setVisibility(8);
      paramViewGroup.o.removeAllViews();
      if (localTCommentVo.getImgUrlItem() == null) {
        break label619;
      }
      paramViewGroup.o.setVisibility(0);
      int i = 0;
      while (i < localTCommentVo.getImgUrlItem().size())
      {
        RemoteImageView localRemoteImageView = new RemoteImageView(this.context);
        localRemoteImageView.setImageUrl(((ImgVo)localTCommentVo.getImgUrlItem().get(i)).getImgUrl());
        localRemoteImageView.setTag(((ImgVo)localTCommentVo.getImgUrlItem().get(i)).getImgUrl());
        localRemoteImageView.setDefaultImage(Integer.valueOf(2130837617));
        localRemoteImageView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        localRemoteImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        paramViewGroup.o.addView(localRemoteImageView);
        localRemoteImageView.setOnClickListener(new TCommnetAdapter.1(this));
        i += 1;
      }
      paramViewGroup = (vc)paramView.getTag();
      break;
      label607:
      paramViewGroup.c.setVisibility(8);
    }
    label619:
    paramViewGroup.o.setVisibility(8);
    paramViewGroup.m.setOnClickListener(new TCommnetAdapter.MyonClickListener(this, localTCommentVo));
    paramViewGroup.n.setOnClickListener(new TCommnetAdapter.MyonClickListener(this, localTCommentVo, paramInt));
    if ((localTCommentVo.getSonItem() != null) && (localTCommentVo.getSonItem().size() > 0))
    {
      paramViewGroup.b.setVisibility(0);
      paramViewGroup.g.setVisibility(0);
      if ((this.topicUserId == null) || (!this.topicUserId.equals(((TReplayVo)localTCommentVo.getSonItem().get(0)).getUserId()))) {
        break label1219;
      }
      paramViewGroup.i.append(TBaseParam.getSpanStrEndPic(this.context, ((TReplayVo)localTCommentVo.getSonItem().get(0)).getUserName(), 2130837875, this.context.getResources().getColor(2131165207)));
      paramViewGroup.k.setVisibility(0);
      paramViewGroup.k.setOnClickListener(new TCommnetAdapter.MyonClickListener(this, localTCommentVo, paramInt, 0, ((TReplayVo)localTCommentVo.getSonItem().get(0)).getReplyId()));
      paramViewGroup.i.append(TBaseParam.getSpanStr(this.context, ((TReplayVo)localTCommentVo.getSonItem().get(0)).getContent(), -16777216));
      paramViewGroup.i.append(FunctionPublic.getSpannerStyle("    " + ((TReplayVo)localTCommentVo.getSonItem().get(0)).getSubTime(), this.context.getResources().getColor(2131165208), 12));
      paramViewGroup.i.setOnClickListener(new TCommnetAdapter.MyonClickListener(this, localTCommentVo));
      if (localTCommentVo.getSonItem().size() >= 2)
      {
        paramViewGroup.h.setVisibility(0);
        if ((this.topicUserId == null) || (!this.topicUserId.equals(((TReplayVo)localTCommentVo.getSonItem().get(1)).getUserId()))) {
          break label1290;
        }
        paramViewGroup.j.append(TBaseParam.getSpanStrEndPic(this.context, ((TReplayVo)localTCommentVo.getSonItem().get(1)).getUserName(), 2130837875, this.context.getResources().getColor(2131165207)));
        paramViewGroup.l.setVisibility(0);
        paramViewGroup.l.setOnClickListener(new TCommnetAdapter.MyonClickListener(this, localTCommentVo, paramInt, 1, ((TReplayVo)localTCommentVo.getSonItem().get(1)).getReplyId()));
      }
    }
    for (;;)
    {
      paramViewGroup.j.append(TBaseParam.getSpanStr(this.context, ((TReplayVo)localTCommentVo.getSonItem().get(1)).getContent(), -16777216));
      paramViewGroup.j.append(FunctionPublic.getSpannerStyle("    " + ((TReplayVo)localTCommentVo.getSonItem().get(1)).getSubTime(), this.context.getResources().getColor(2131165208), 12));
      paramViewGroup.j.setOnClickListener(new TCommnetAdapter.MyonClickListener(this, localTCommentVo));
      if (localTCommentVo.getCount() > 2)
      {
        paramViewGroup.m.setVisibility(0);
        paramViewGroup.m.setText("更多" + localTCommentVo.getCount() + "条回复...");
      }
      label1217:
      return paramView;
      label1219:
      paramViewGroup.i.append(FunctionPublic.getSpannerStyle(((TReplayVo)localTCommentVo.getSonItem().get(0)).getUserName() + " : ", this.context.getResources().getColor(2131165207), 14));
      paramViewGroup.k.setVisibility(8);
      break;
      label1290:
      paramViewGroup.j.append(FunctionPublic.getSpannerStyle(((TReplayVo)localTCommentVo.getSonItem().get(1)).getUserName() + " : ", this.context.getResources().getColor(2131165207), 14));
      paramViewGroup.l.setVisibility(8);
    }
  }
  
  public void setOnDeleteListener(TCommnetAdapter.OnDeleteListener paramOnDeleteListener)
  {
    this.onDeleteListener = paramOnDeleteListener;
  }
  
  public void setOnPicClickListener(TCommnetAdapter.OnPicClickListener paramOnPicClickListener)
  {
    this.onPicClickListener = paramOnPicClickListener;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/TCommnetAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */