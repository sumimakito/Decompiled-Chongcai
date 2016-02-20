import android.annotation.SuppressLint;
import android.app.Dialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.EditText;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.widget.LoadDataProgress;
import cn.apppark.mcd.widget.PullDownListView3;
import cn.apppark.vertify.activity.buy.BuyMsgCommentRep;
import cn.apppark.vertify.activity.buy.adapter.BuyMsgCommentRepAdapter;
import cn.apppark.vertify.network.request.WebServiceRequest;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.util.ArrayList;

@SuppressLint({"HandlerLeak"})
public final class db
  extends Handler
{
  private db(BuyMsgCommentRep paramBuyMsgCommentRep) {}
  
  public final void handleMessage(Message paramMessage)
  {
    Object localObject = null;
    super.handleMessage(paramMessage);
    paramMessage.getData();
    String str = paramMessage.getData().getString("soresult");
    switch (paramMessage.what)
    {
    default: 
    case 1: 
    case 3: 
      do
      {
        return;
        BuyMsgCommentRep.i(this.a).onFootRefreshComplete();
        if ((BuyMsgCommentRep.j(this.a) == null) && ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str))))
        {
          BuyMsgCommentRep.k(this.a).show(2131230757, true, false, "255");
          BuyMsgCommentRep.k(this.a).setInterfaceRef(new dc(this));
          return;
        }
        BuyMsgCommentRep.k(this.a).hidden();
        paramMessage = new dd(this).getType();
        BuyMsgCommentRep.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
        if ((BuyMsgCommentRep.l(this.a) != null) && (BuyMsgCommentRep.l(this.a).size() > 0))
        {
          if (BuyMsgCommentRep.a(this.a) == null) {
            BuyMsgCommentRep.b(this.a, new ArrayList());
          }
          BuyMsgCommentRep.a(this.a).addAll(BuyMsgCommentRep.l(this.a));
          BuyMsgCommentRep.m(this.a);
        }
        if (BuyMsgCommentRep.j(this.a) == null)
        {
          BuyMsgCommentRep.a(this.a, new BuyMsgCommentRepAdapter(BuyMsgCommentRep.g(this.a), BuyMsgCommentRep.a(this.a)));
          BuyMsgCommentRep.i(this.a).setAdapter(BuyMsgCommentRep.j(this.a));
        }
        for (;;)
        {
          BuyMsgCommentRep.a(this.a, BuyMsgCommentRep.i(this.a), BuyMsgCommentRep.a(this.a));
          return;
          BuyMsgCommentRep.j(this.a).notifyDataSetChanged();
        }
        BuyMsgCommentRep.i(this.a).onHeadRefreshComplete();
      } while ((WebServiceRequest.NO_DATA.equals(str)) || (WebServiceRequest.WEB_ERROR.equals(str)));
      paramMessage = new de(this).getType();
      BuyMsgCommentRep.a(this.a, JsonParserDyn.parseJson2List(str, paramMessage));
      BuyMsgCommentRep.a(this.a).clear();
      if ((BuyMsgCommentRep.l(this.a) != null) && (BuyMsgCommentRep.l(this.a).size() > 0))
      {
        BuyMsgCommentRep.m(this.a);
        BuyMsgCommentRep.a(this.a).addAll(BuyMsgCommentRep.l(this.a));
      }
      BuyMsgCommentRep.j(this.a).notifyDataSetChanged();
      BuyMsgCommentRep.a(this.a, BuyMsgCommentRep.i(this.a), BuyMsgCommentRep.a(this.a));
      return;
    case 2: 
      BuyMsgCommentRep.f(this.a).dismiss();
      try
      {
        paramMessage = ((JsonObject)new JsonParser().parse(str)).get("retFlag").getAsString();
        if ("1".equals(paramMessage))
        {
          BuyMsgCommentRep.a(this.a, null);
          BuyMsgCommentRep.i(this.a).autoHeadRefresh();
          BuyMsgCommentRep.a(this.a, 1);
          BuyMsgCommentRep.a(this.a, BuyMsgCommentRep.d(this.a), 3, "replyDetail");
          BuyMsgCommentRep.b(this.a).setText("");
          BuyMsgCommentRep.b(this.a).setHint("评论");
          HQCHApplication.instance.initToast("评论提交成功", 0);
          BuyMsgCommentRep.i(this.a).setSelection(0);
          return;
        }
      }
      catch (Exception paramMessage)
      {
        for (;;)
        {
          paramMessage = null;
        }
        HQCHApplication.instance.initToast("评论提交失败", 0);
        return;
      }
    }
    BuyMsgCommentRep.f(this.a).dismiss();
    try
    {
      paramMessage = ((JsonObject)new JsonParser().parse(str)).get("retFlag").getAsString();
      if ("1".equals(paramMessage))
      {
        BuyMsgCommentRep.a(this.a).remove(BuyMsgCommentRep.n(this.a));
        BuyMsgCommentRep.j(this.a).notifyDataSetChanged();
        HQCHApplication.instance.initToast("删除成功", 0);
        return;
      }
      HQCHApplication.instance.initToast("删除失败", 0);
      return;
    }
    catch (Exception paramMessage)
    {
      for (;;)
      {
        paramMessage = (Message)localObject;
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/db.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */