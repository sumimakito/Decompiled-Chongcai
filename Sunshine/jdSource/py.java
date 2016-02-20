import android.os.Bundle;
import android.widget.Toast;
import cn.apppark.mcd.weibo.AccessTokenKeeper;
import cn.apppark.vertify.activity.share.SinaShareAct;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.auth.WeiboAuthListener;
import com.sina.weibo.sdk.exception.WeiboException;

public final class py
  implements WeiboAuthListener
{
  public py(SinaShareAct paramSinaShareAct) {}
  
  public final void onCancel()
  {
    Toast.makeText(this.a, "授权取消", 1).show();
  }
  
  public final void onComplete(Bundle paramBundle)
  {
    SinaShareAct.a(this.a, Oauth2AccessToken.parseAccessToken(paramBundle));
    if (SinaShareAct.e(this.a).isSessionValid())
    {
      AccessTokenKeeper.writeAccessToken(this.a, SinaShareAct.e(this.a));
      Toast.makeText(this.a, "授权成功", 0).show();
      return;
    }
    paramBundle = paramBundle.getString("code");
    Toast.makeText(this.a, "授权失败,请重试" + paramBundle, 1).show();
  }
  
  public final void onWeiboException(WeiboException paramWeiboException)
  {
    Toast.makeText(this.a, "Auth exception : " + paramWeiboException.getMessage(), 1).show();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/py.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */