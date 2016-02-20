package cn.apppark.vertify.activity.free.dyn;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.dyn.Dyn5001ItemVo;
import java.util.List;

class DynMsgSubmit5001$3
  implements View.OnClickListener
{
  DynMsgSubmit5001$3(DynMsgSubmit5001 paramDynMsgSubmit5001) {}
  
  public void onClick(View paramView)
  {
    int i = 0;
    Object localObject;
    while (i < DynMsgSubmit5001.a(this.a).size())
    {
      paramView = (Dyn5001ItemVo)((TextView)DynMsgSubmit5001.a(this.a).get(i)).getTag();
      if ((paramView != null) && ("1".equals(paramView.getStyle_must())))
      {
        paramView = ((TextView)DynMsgSubmit5001.a(this.a).get(i)).getText().toString().trim();
        localObject = ((TextView)DynMsgSubmit5001.b(this.a).get(i)).getText().toString().trim();
        localObject = "请您填写" + (String)localObject;
        if ((paramView.equals("")) || (paramView == null))
        {
          HQCHApplication.instance.initToast((String)localObject, 0);
          return;
        }
      }
      i += 1;
    }
    i = 0;
    label161:
    if (i < DynMsgSubmit5001.c(this.a).size())
    {
      paramView = (LinearLayout)DynMsgSubmit5001.c(this.a).get(i);
      localObject = (Dyn5001ItemVo)paramView.getTag();
      int k = paramView.getChildCount();
      if ("1".equals(((Dyn5001ItemVo)localObject).getStyle_must()))
      {
        j = 0;
        label224:
        if (j >= k) {
          break label646;
        }
        if ((!(paramView.getChildAt(j) instanceof CheckBox)) || (!((CheckBox)paramView.getChildAt(j)).isChecked())) {}
      }
    }
    label634:
    label644:
    label646:
    for (int j = 1;; j = 0)
    {
      if (j == 0)
      {
        paramView = "请选择" + ((Dyn5001ItemVo)localObject).getData_label();
        HQCHApplication.instance.initToast(paramView, 0);
        return;
        j += 1;
        break label224;
      }
      i += 1;
      break label161;
      i = 0;
      if (i < DynMsgSubmit5001.a(this.a).size())
      {
        paramView = (Dyn5001ItemVo)((TextView)DynMsgSubmit5001.a(this.a).get(i)).getTag();
        if ((paramView != null) && ("1".equals(paramView.getStyle_must())) && ("1".equals(paramView.getStyle_inputType())) && ("3".equals(paramView.getStyle_type())))
        {
          if (PublicUtil.chekPhone(((TextView)DynMsgSubmit5001.a(this.a).get(i)).getText().toString().trim())) {
            break label634;
          }
          HQCHApplication.instance.initToast(paramView.getData_label() + "格式错误" + ((TextView)DynMsgSubmit5001.a(this.a).get(i)).getText().toString(), 0);
          i = 0;
        }
      }
      for (;;)
      {
        if ((i == 0) || (!DynMsgSubmit5001.d(this.a))) {
          break label644;
        }
        DynMsgSubmit5001.a(this.a, false);
        DynMsgSubmit5001.e(this.a);
        return;
        if ((paramView != null) && ("1".equals(paramView.getStyle_must())) && ("2".equals(paramView.getStyle_inputType())) && ("3".equals(paramView.getStyle_type())) && (!PublicUtil.checkEmail(((TextView)DynMsgSubmit5001.a(this.a).get(i)).getText().toString().trim())))
        {
          HQCHApplication.instance.initToast(paramView.getData_label() + "格式错误" + ((TextView)DynMsgSubmit5001.a(this.a).get(i)).getText().toString(), 0);
          i = 0;
        }
        else
        {
          i += 1;
          break;
          i = 1;
        }
      }
      break;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */