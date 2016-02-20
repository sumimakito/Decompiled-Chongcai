package cn.apppark.vertify.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.tieba.TReplayVo;
import cn.apppark.vertify.activity.tieba.TBaseParam;
import java.util.ArrayList;
import vk;

public class TReplayAdapter
  extends TempBaseAdapter
{
  private Context context;
  private ArrayList<TReplayVo> itemList;
  private String loginUserId;
  private LayoutInflater mInflater;
  private TReplayAdapter.OnReplayDeleteListener onReplayDeleteListener;
  private String replayId;
  private String topicUserId;
  
  public TReplayAdapter(Context paramContext, ArrayList<TReplayVo> paramArrayList, String paramString1, String paramString2, String paramString3)
  {
    this.mInflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.itemList = paramArrayList;
    this.context = paramContext;
    this.topicUserId = paramString1;
    this.loginUserId = paramString2;
    this.replayId = paramString3;
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
    String str = null;
    TReplayVo localTReplayVo;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903214, null);
      paramViewGroup = new vk();
      paramViewGroup.a = ((TextView)paramView.findViewById(2131362852));
      paramViewGroup.b = ((Button)paramView.findViewById(2131362853));
      ButtonColorFilter.setButtonFocusChanged(paramViewGroup.b);
      paramView.setTag(paramViewGroup);
      localTReplayVo = (TReplayVo)this.itemList.get(paramInt);
      if (localTReplayVo != null)
      {
        paramViewGroup.a.setText("");
        if ((!localTReplayVo.getUserId().equals(this.loginUserId)) || (localTReplayVo.getReplyId() == null)) {
          break label334;
        }
        paramViewGroup.b.setVisibility(0);
        paramViewGroup.b.setOnClickListener(new TReplayAdapter.MyonClickListener(this, localTReplayVo, paramInt));
        label140:
        if ((localTReplayVo.getUserId() == null) || (!localTReplayVo.getUserId().equals(this.topicUserId))) {
          break label346;
        }
        paramViewGroup.a.append(TBaseParam.getSpanStrEndPic(this.context, localTReplayVo.getUserName(), 2130837875, this.context.getResources().getColor(2131165207)));
      }
    }
    for (;;)
    {
      paramViewGroup.a.append(FunctionPublic.getSpannerStyle(str, this.context.getResources().getColor(2131165207), 14));
      paramViewGroup.a.append(TBaseParam.getSpanStr(this.context, localTReplayVo.getContent(), -16777216));
      paramViewGroup.a.append(FunctionPublic.getSpannerStyle("    " + localTReplayVo.getSubTime(), this.context.getResources().getColor(2131165208), 12));
      if ((!StringUtil.isNotNull(this.replayId)) || (!this.replayId.equals(localTReplayVo.getReplyId()))) {
        break label374;
      }
      paramViewGroup.a.setBackgroundResource(2130837940);
      return paramView;
      paramViewGroup = (vk)paramView.getTag();
      break;
      label334:
      paramViewGroup.b.setVisibility(8);
      break label140;
      label346:
      str = localTReplayVo.getUserName() + " : ";
    }
    label374:
    paramViewGroup.a.setBackgroundResource(2130837931);
    return paramView;
  }
  
  public void setOnDeleteListener(TReplayAdapter.OnReplayDeleteListener paramOnReplayDeleteListener)
  {
    this.onReplayDeleteListener = paramOnReplayDeleteListener;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/adapter/TReplayAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */