import android.os.Bundle;
import android.widget.Toast;
import cn.apppark.mcd.weibo.AccessTokenKeeper;
import cn.apppark.mcd.weibo.SinaShareUtil;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.auth.WeiboAuthListener;
import com.sina.weibo.sdk.exception.WeiboException;

public final class r
  implements WeiboAuthListener
{
  public r(SinaShareUtil paramSinaShareUtil) {}
  
  public final void onCancel()
  {
    Toast.makeText(SinaShareUtil.b(this.a), "授权取消", 1).show();
  }
  
  public final void onComplete(Bundle paramBundle)
  {
    SinaShareUtil.a(this.a, Oauth2AccessToken.parseAccessToken(paramBundle));
    if (SinaShareUtil.a(this.a).isSessionValid())
    {
      AccessTokenKeeper.writeAccessToken(SinaShareUtil.b(this.a), SinaShareUtil.a(this.a));
      Toast.makeText(SinaShareUtil.b(this.a), "授权成功", 0).show();
      return;
    }
    paramBundle = paramBundle.getString("code");
    Toast.makeText(SinaShareUtil.b(this.a), "授权失败,请重试" + paramBundle, 1).show();
  }
  
  public final void onWeiboException(WeiboException paramWeiboException) {}
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */