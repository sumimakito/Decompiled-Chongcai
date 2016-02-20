import android.annotation.SuppressLint;
import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.EditText;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.vo.dyn.DynCommentReturnVo;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView3;
import cn.apppark.vertify.activity.free.dyn.DynSubComment;
import cn.apppark.vertify.adapter.DynCommentAdapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import java.util.ArrayList;

@SuppressLint({"HandlerLeak"})
public final class kl
  extends Handler
{
  private kl(DynSubComment paramDynSubComment) {}
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    paramMessage.getData();
    Bundle localBundle = paramMessage.getData();
    String str = localBundle.getString("soresult");
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
              return;
              DynSubComment.j(this.a).onFootRefreshComplete();
              if ((DynSubComment.k(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
              {
                DynSubComment.l(this.a).show(2131230757, true, false, "255");
                DynSubComment.l(this.a).setInterfaceRef(new km(this));
                return;
              }
              DynSubComment.l(this.a).hidden();
              paramMessage = new kn(this).getType();
              DynSubComment.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
              if ((DynSubComment.m(this.a) != null) && (DynSubComment.m(this.a).size() > 0))
              {
                if (DynSubComment.a(this.a) == null) {
                  DynSubComment.b(this.a, new ArrayList());
                }
                DynSubComment.a(this.a).addAll(DynSubComment.m(this.a));
                DynSubComment.n(this.a);
              }
              if (DynSubComment.k(this.a) == null)
              {
                DynSubComment.a(this.a, new DynCommentAdapter(DynSubComment.h(this.a), DynSubComment.a(this.a)));
                DynSubComment.j(this.a).setAdapter(DynSubComment.k(this.a));
                DynSubComment.k(this.a).setMyClickGood(new ko(this));
              }
              for (;;)
              {
                DynSubComment.a(this.a, DynSubComment.j(this.a), DynSubComment.a(this.a));
                return;
                DynSubComment.k(this.a).notifyDataSetChanged();
              }
              DynSubComment.j(this.a).onHeadRefreshComplete();
            } while ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)));
            paramMessage = new kp(this).getType();
            DynSubComment.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
            DynSubComment.a(this.a).clear();
            if ((DynSubComment.m(this.a) != null) && (DynSubComment.m(this.a).size() > 0))
            {
              DynSubComment.n(this.a);
              DynSubComment.a(this.a).addAll(DynSubComment.m(this.a));
            }
            DynSubComment.k(this.a).notifyDataSetChanged();
            DynSubComment.a(this.a, DynSubComment.j(this.a), DynSubComment.a(this.a));
            return;
            DynSubComment.g(this.a).dismiss();
          } while (!DynSubComment.a(this.a, str, "评论提交失败", "评论提交成功"));
          DynSubComment.a(this.a, null);
          DynSubComment.j(this.a).autoHeadRefresh();
          DynSubComment.a(this.a, 1);
          DynSubComment.a(this.a, DynSubComment.e(this.a), 3, "commentList");
          DynSubComment.b(this.a).setText("");
          DynSubComment.b(this.a).setHint("评论");
          DynSubComment.e(this.a, "评论提交成功", 0);
          DynSubComment.j(this.a).setSelection(0);
          return;
          DynSubComment.g(this.a).dismiss();
        } while (!DynSubComment.b(this.a, str, "删除失败", "删除成功"));
        DynSubComment.a(this.a).remove(DynSubComment.o(this.a));
        DynSubComment.k(this.a).notifyDataSetChanged();
        return;
        DynSubComment.g(this.a).dismiss();
      } while (!DynSubComment.c(this.a, str, null, null));
      paramMessage = localBundle.getString("position");
    } while (paramMessage == null);
    int i = FunctionPublic.str2int(paramMessage);
    int j = ((DynCommentReturnVo)DynSubComment.a(this.a).get(i)).getPraiseCount();
    ((DynCommentReturnVo)DynSubComment.a(this.a).get(i)).setPraiseCount(j + 1);
    DynSubComment.k(this.a).notifyDataSetChanged();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/kl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */