import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.apppark.mcd.vo.buy.JsonParserBuy;
import cn.apppark.mcd.vo.tieba.TCommentVo;
import cn.apppark.mcd.vo.tieba.TMainVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView4;
import cn.apppark.mcd.widget.TCellLinearLayout;
import cn.apppark.vertify.activity.tieba.TTopicDetail;
import cn.apppark.vertify.adapter.TCommnetAdapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

public final class tr
  extends Handler
{
  private tr(TTopicDetail paramTTopicDetail) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
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
                if ((TTopicDetail.d(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
                {
                  TTopicDetail.e(this.a).showError(2131230757, true, false, "255");
                  TTopicDetail.e(this.a).setInterfaceRef(new ts(this));
                  return;
                }
                if (TTopicDetail.a(this.a, str, null, "数据获取成功"))
                {
                  TTopicDetail.a(this.a, (TMainVo)JsonParserBuy.parseJson2Vo(str, TMainVo.class));
                  if (TTopicDetail.f(this.a) == null)
                  {
                    TTopicDetail.b(this.a, 2131230791, 0);
                    this.a.finish();
                  }
                  if ((TTopicDetail.g(this.a) == 1) || (TTopicDetail.g(this.a) == 2))
                  {
                    if (TTopicDetail.b(this.a, str, "帖子获取失败", null))
                    {
                      TTopicDetail.h(this.a);
                      if (TTopicDetail.g(this.a) == 1)
                      {
                        TTopicDetail.c(this.a, TTopicDetail.a(this.a), 4);
                        return;
                      }
                      TTopicDetail.a(this.a, TTopicDetail.a(this.a), 4);
                      return;
                    }
                    this.a.finish();
                    return;
                  }
                  TTopicDetail.h(this.a);
                  TTopicDetail.a(this.a, TTopicDetail.a(this.a), 4);
                  return;
                }
                this.a.finish();
                return;
                TTopicDetail.i(this.a).onFootRefreshComplete();
                if ((TTopicDetail.d(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
                {
                  TTopicDetail.e(this.a).showError(2131230757, true, false, "255");
                  TTopicDetail.e(this.a).setInterfaceRef(new tt(this));
                  return;
                }
                TTopicDetail.e(this.a).hidden();
                paramMessage = this.a.parseToList(str);
                TTopicDetail.a(this.a, paramMessage);
                TTopicDetail.j(this.a);
                return;
                TTopicDetail.k(this.a).dismiss();
              } while (!TTopicDetail.c(this.a, str, "发表评论失败", "发表评论成功"));
              TTopicDetail.l(this.a).setText("");
              TTopicDetail.m(this.a).removeAllCell();
              TTopicDetail.n(this.a).setVisibility(8);
              TTopicDetail.o(this.a).setVisibility(8);
              TTopicDetail.a(this.a, false);
              TTopicDetail.b(this.a, false);
              TTopicDetail.f(this.a).setCommentNum(TTopicDetail.f(this.a).getCommentNum() + 1);
              TTopicDetail.p(this.a).setText(TTopicDetail.f(this.a).getCommentNum() + 1);
              TTopicDetail.c(this.a, 1);
              TTopicDetail.a(this.a, TTopicDetail.a(this.a), 4);
              return;
              TTopicDetail.q(this.a).dismiss();
            } while (!TTopicDetail.d(this.a, str, "点赞失败", null));
            if ("1".equals(TTopicDetail.f(this.a).getIsGood()))
            {
              TTopicDetail.r(this.a).setText(TTopicDetail.f(this.a).getGoodNum() + 1);
              TTopicDetail.s(this.a).setBackgroundResource(2130837880);
              TTopicDetail.f(this.a).setIsGood("0");
              return;
            }
            TTopicDetail.r(this.a).setText(TTopicDetail.f(this.a).getGoodNum() + 1);
            TTopicDetail.s(this.a).setBackgroundResource(2130837881);
            TTopicDetail.f(this.a).setIsGood("1");
            return;
            TTopicDetail.t(this.a).dismiss();
          } while (!TTopicDetail.e(this.a, str, "收藏失败", null));
          if ("1".equals(TTopicDetail.f(this.a).getIsCollect()))
          {
            TTopicDetail.f(this.a).setIsCollect("0");
            return;
          }
          TTopicDetail.f(this.a).setIsCollect("1");
          return;
          TTopicDetail.u(this.a).dismiss();
        } while (!TTopicDetail.f(this.a, str, "删除失败", "删除成功"));
        TTopicDetail.w(this.a).remove(TTopicDetail.v(this.a));
        TTopicDetail.d(this.a).notifyDataSetChanged();
        return;
        TTopicDetail.x(this.a).dismiss();
      } while (!TTopicDetail.g(this.a, str, "删除失败", "删除成功"));
      ((TCommentVo)TTopicDetail.w(this.a).get(TTopicDetail.v(this.a))).getSonItem().remove(TTopicDetail.y(this.a));
      TTopicDetail.d(this.a).notifyDataSetChanged();
      return;
      if (paramMessage.arg1 == 1)
      {
        if (TTopicDetail.z(this.a)) {
          TTopicDetail.o(this.a).setVisibility(0);
        }
        while (TTopicDetail.A(this.a))
        {
          TTopicDetail.n(this.a).setVisibility(0);
          return;
          TTopicDetail.o(this.a).setVisibility(8);
        }
        TTopicDetail.n(this.a).setVisibility(8);
        return;
      }
      TTopicDetail.n(this.a).setVisibility(8);
      TTopicDetail.o(this.a).setVisibility(8);
      return;
      TTopicDetail.B(this.a).dismiss();
    } while (!TTopicDetail.h(this.a, str, "删除帖子失败", "删除帖子成功"));
    this.a.setResult(1);
    this.a.finish();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/tr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */