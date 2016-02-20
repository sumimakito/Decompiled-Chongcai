package cn.apppark.vertify.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import au;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.jsonparse.JsonParserDyn;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.base.RetVo;
import cn.apppark.mcd.widget.DialogTwoBtn;
import cn.apppark.mcd.widget.DialogTwoBtn.Builder;
import cn.apppark.vertify.base.ClientPersionInfo;
import cn.apppark.vertify.network.request.WebServiceRequest;
import com.google.gson.Gson;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class BaseAct
  extends Activity
{
  protected Context context = this;
  private ClientPersionInfo info;
  protected Dialog loadDialog;
  protected int pageSize = 10;
  
  protected boolean checkResult(String paramString1, String paramString2)
  {
    boolean bool = true;
    if (WebServiceRequest.WEB_ERROR.equals(paramString1)) {
      initToast(paramString2, 0);
    }
    for (;;)
    {
      bool = false;
      label20:
      return bool;
      try
      {
        Object localObject = new JSONObject(paramString1);
        paramString1 = ((JSONObject)localObject).getString("retFlag");
        localObject = ((JSONObject)localObject).getString("retMsg");
        if ("1".equals(paramString1)) {
          break label20;
        }
        initToast((String)localObject, 1);
      }
      catch (JSONException paramString1)
      {
        initToast(paramString2, 0);
        paramString1.printStackTrace();
      }
    }
  }
  
  protected boolean checkResult(String paramString1, String paramString2, String paramString3)
  {
    boolean bool = true;
    if (WebServiceRequest.WEB_ERROR.equals(paramString1)) {
      initToast(paramString2, 0);
    }
    for (;;)
    {
      bool = false;
      Object localObject;
      for (;;)
      {
        return bool;
        try
        {
          localObject = new JSONObject(paramString1);
          paramString1 = ((JSONObject)localObject).getString("retFlag");
          localObject = ((JSONObject)localObject).getString("retMsg");
          if (!"1".equals(paramString1)) {
            break label87;
          }
          if (paramString3 != null)
          {
            initToast(paramString3, 0);
            return true;
          }
        }
        catch (JSONException paramString1)
        {
          initToast(paramString2, 0);
          paramString1.printStackTrace();
        }
      }
      continue;
      label87:
      initToast((String)localObject, 1);
    }
  }
  
  protected boolean checkResultRetMsg(String paramString1, String paramString2)
  {
    boolean bool = true;
    if (WebServiceRequest.WEB_ERROR.equals(paramString1)) {
      initToast(paramString2, 0);
    }
    label20:
    Object localObject1;
    for (;;)
    {
      bool = false;
      return bool;
      Object localObject2 = null;
      localObject1 = localObject2;
      try
      {
        paramString1 = new JSONObject(paramString1);
        localObject1 = localObject2;
        String str = paramString1.getString("retFlag");
        localObject1 = localObject2;
        paramString1 = paramString1.getString("retMsg");
        localObject1 = paramString1;
        if ("1".equals(str)) {
          break label20;
        }
        localObject1 = paramString1;
        initToast(paramString1, 1);
      }
      catch (JSONException paramString1)
      {
        if (!StringUtil.isNotNull((String)localObject1)) {
          break label109;
        }
      }
    }
    initToast((String)localObject1, 1);
    for (;;)
    {
      paramString1.printStackTrace();
      break;
      label109:
      initToast(paramString2, 1);
    }
  }
  
  protected boolean checkResultShowRet(String paramString1, String paramString2)
  {
    if (WebServiceRequest.WEB_ERROR.equals(paramString1)) {
      initToast(paramString2, 0);
    }
    for (;;)
    {
      return false;
      Object localObject;
      try
      {
        localObject = new JSONObject(paramString1);
        paramString1 = ((JSONObject)localObject).getString("retFlag");
        localObject = ((JSONObject)localObject).getString("retMsg");
        if (!"1".equals(paramString1)) {
          break label72;
        }
        initToast((String)localObject, 1);
        return true;
      }
      catch (JSONException paramString1)
      {
        initToast(paramString2, 0);
        paramString1.printStackTrace();
      }
      continue;
      label72:
      initToast((String)localObject, 1);
    }
  }
  
  protected Dialog createLoadingDialog(int paramInt)
  {
    Object localObject = LayoutInflater.from(this.context).inflate(2130903088, null);
    LinearLayout localLinearLayout = (LinearLayout)((View)localObject).findViewById(2131362177);
    ((TextView)((View)localObject).findViewById(2131362179)).setText(paramInt);
    localObject = new Dialog(this.context, 2131099665);
    ((Dialog)localObject).setContentView(localLinearLayout, new LinearLayout.LayoutParams(-1, -1));
    return (Dialog)localObject;
  }
  
  protected void createMsgDialog(String paramString1, String paramString2, DialogInterface.OnClickListener paramOnClickListener)
  {
    new DialogTwoBtn.Builder(this.context).setTitle(paramString1).setMessage(paramString2).setPositiveButton(2131230728, paramOnClickListener).setNegativeButton(2131230729, new au(this)).create().show();
  }
  
  protected ClientPersionInfo getInfo()
  {
    if (this.info == null) {
      this.info = new ClientPersionInfo(this.context);
    }
    return this.info;
  }
  
  protected boolean getIsLoginInfo()
  {
    this.info = getInfo();
    if (this.info.getUserId() != null) {
      return true;
    }
    startActivity(new Intent(this, YYGYContants.getLoginClass()));
    return false;
  }
  
  protected RetVo getRetResult(String paramString1, String paramString2)
  {
    if (WebServiceRequest.WEB_ERROR.equals(paramString1)) {
      initToast(paramString2, 0);
    }
    for (;;)
    {
      return null;
      try
      {
        paramString1 = (RetVo)JsonParserDyn.parseJson2Vo(paramString1, RetVo.class);
        return paramString1;
      }
      catch (Exception paramString1)
      {
        initToast(paramString2, 0);
        paramString1.printStackTrace();
      }
    }
  }
  
  protected void initToast(int paramInt1, int paramInt2)
  {
    Toast.makeText(this, paramInt1, paramInt2).show();
  }
  
  protected void initToast(String paramString, int paramInt)
  {
    Toast.makeText(this, paramString, paramInt).show();
  }
  
  protected String map2Json(Map<String, Object> paramMap)
  {
    return new Gson().toJson(paramMap);
  }
  
  public void onDestroy()
  {
    if (this.loadDialog != null) {
      this.loadDialog.dismiss();
    }
    super.onDestroy();
  }
  
  public void onResume()
  {
    super.onResume();
    if (HQCHApplication.mainActivity != null) {
      HQCHApplication.mainActivity.hiddenWall();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/BaseAct.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */