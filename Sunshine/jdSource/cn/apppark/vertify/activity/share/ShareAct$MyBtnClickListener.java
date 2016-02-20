package cn.apppark.vertify.activity.share;

import android.text.ClipboardManager;
import android.view.View;
import android.view.View.OnClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.vo.base.ClientBaseVo;
import cn.apppark.mcd.weibo.QzoneShareUtil;
import cn.apppark.mcd.weibo.SinaShareUtil;

class ShareAct$MyBtnClickListener
  implements View.OnClickListener
{
  private ShareAct$MyBtnClickListener(ShareAct paramShareAct) {}
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return;
              } while (!ShareAct.a(this.a));
              ShareAct.a(this.a, new SinaShareUtil(this.a, HQCHApplication.mainActivity.clientBaseVo.getSinaAppKey()));
              ShareAct.d(this.a).release4Sina(ShareAct.b(this.a), ShareAct.c(this.a));
              this.a.finish();
              return;
            } while (!ShareAct.a(this.a));
            ((ClipboardManager)this.a.getSystemService("clipboard")).setText(ShareAct.b(this.a));
            ShareAct.a(this.a, "链接已复制", 0);
            this.a.finish();
            return;
          } while (!ShareAct.a(this.a));
          ShareAct.a(this.a, new QzoneShareUtil(this.a, HQCHApplication.mainActivity.clientBaseVo.getQzoneAppID()));
          ShareAct.h(this.a).sharToQzone(ShareAct.e(this.a), ShareAct.f(this.a), ShareAct.g(this.a));
          this.a.finish();
          return;
        } while (!ShareAct.a(this.a));
        ShareAct.a(this.a, false);
        this.a.finish();
        return;
      } while (!ShareAct.a(this.a));
      ShareAct.a(this.a, true);
      this.a.finish();
      return;
      ShareAct.i(this.a);
      return;
    } while (!ShareAct.a(this.a));
    PublicUtil.editSendSms(ShareAct.j(this.a), "", ShareAct.b(this.a));
    this.a.finish();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/share/ShareAct$MyBtnClickListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */