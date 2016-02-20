package cn.apppark.vertify.activity.topmenu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.navigation.NavigationHistoryVo;

public class NavigationHistoryView
  extends RelativeLayout
  implements ITopView
{
  private ITopMenuViewClickListener clickListener;
  private Context context;
  private NavigationHistoryVo navItem;
  private String showName;
  
  public NavigationHistoryView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public NavigationHistoryView(Context paramContext, NavigationHistoryVo paramNavigationHistoryVo, String paramString)
  {
    super(paramContext);
    this.context = paramContext;
    this.navItem = paramNavigationHistoryVo;
    this.showName = paramString;
    init();
  }
  
  public void init()
  {
    setLayoutParams(new RelativeLayout.LayoutParams(-1, (int)(this.navItem.getSys_h() * YYGYContants.scaleUnite)));
    FunctionPublic.setBackground(this, this.navItem.getStyle_bgType(), this.navItem.getStyle_bgPic(), this.navItem.getStyle_bgColor());
    try
    {
      getBackground().setAlpha(FunctionPublic.str2int(this.navItem.getStyle_bgAlpha()) / 100 * 255);
      setPadding(PublicUtil.dip2px(5.0F), 0, PublicUtil.dip2px(5.0F), 0);
      Object localObject1 = new RelativeLayout.LayoutParams(-1, -1);
      Object localObject2 = new TextView(this.context);
      ((TextView)localObject2).setGravity(17);
      ((TextView)localObject2).setText(this.showName);
      FunctionPublic.setTextStyle((TextView)localObject2, this.navItem.getStyle_text1Size(), this.navItem.getStyle_text1Color(), this.navItem.getStyle_text1Blod());
      addView((View)localObject2, (ViewGroup.LayoutParams)localObject1);
      if ("1".equals(this.navItem.getStyle_leftBtnType()))
      {
        localObject1 = new Button(this.context);
        ((Button)localObject1).setMaxLines(1);
        ((Button)localObject1).setPadding(0, 0, 0, 0);
        ((Button)localObject1).setGravity(17);
        ButtonColorFilter.setButtonFocusChanged((View)localObject1);
        localObject2 = FunctionPublic.setViewBackByHieght((View)localObject1, this.navItem.getStyle_leftBtnPic(), this.navItem.getSys_h());
        ((Button)localObject1).setText(this.navItem.getData_leftBtnText());
        FunctionPublic.setTextStyle((Button)localObject1, this.navItem.getStyle_leftBtnTextSize(), this.navItem.getStyle_leftBtnTextColor(), this.navItem.getStyle_leftBtnTextBold());
        if ((this.navItem.getStyle_leftBtnPic() == null) || ("".equals(this.navItem.getStyle_leftBtnPic()))) {
          ((Button)localObject1).setBackgroundColor(0);
        }
        if (localObject2 != null)
        {
          ((RelativeLayout.LayoutParams)localObject2).addRule(9);
          ((RelativeLayout.LayoutParams)localObject2).addRule(15);
          ((Button)localObject1).setOnClickListener(new NavigationHistoryView.1(this));
          addView((View)localObject1, (ViewGroup.LayoutParams)localObject2);
        }
      }
      if ("1".equals(this.navItem.getStyle_rightBtnType()))
      {
        localObject1 = new Button(this.context);
        ((Button)localObject1).setMaxLines(1);
        ((Button)localObject1).setPadding(0, 0, 0, 0);
        ((Button)localObject1).setGravity(17);
        ButtonColorFilter.setButtonFocusChanged((View)localObject1);
        localObject2 = FunctionPublic.setViewBackByHieght((View)localObject1, this.navItem.getStyle_rightBtnPic(), this.navItem.getSys_h());
        ((Button)localObject1).setText(this.navItem.getData_rightBtnText());
        FunctionPublic.setTextStyle((Button)localObject1, this.navItem.getStyle_rightBtnTextSize(), this.navItem.getStyle_rightBtnTextColor(), this.navItem.getStyle_rightBtnTextBold());
        if ((this.navItem.getStyle_rightBtnPic() == null) || ("".equals(this.navItem.getStyle_rightBtnPic()))) {
          ((Button)localObject1).setBackgroundColor(0);
        }
        if (localObject2 != null)
        {
          ((RelativeLayout.LayoutParams)localObject2).addRule(11);
          ((RelativeLayout.LayoutParams)localObject2).addRule(15);
          ((Button)localObject1).setOnClickListener(new NavigationHistoryView.2(this));
          addView((View)localObject1, (ViewGroup.LayoutParams)localObject2);
        }
      }
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  public void setClickListener(ITopMenuViewClickListener paramITopMenuViewClickListener)
  {
    this.clickListener = paramITopMenuViewClickListener;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/topmenu/NavigationHistoryView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */