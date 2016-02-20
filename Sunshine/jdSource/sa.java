import android.os.Message;
import cn.apppark.mcd.widget.MyResizeLinearLayout.OnResizeListener;
import cn.apppark.vertify.activity.tieba.TEdit;

public final class sa
  implements MyResizeLinearLayout.OnResizeListener
{
  public sa(TEdit paramTEdit) {}
  
  public final void OnResize(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 = 1;
    if (paramInt2 < paramInt4) {
      paramInt1 = 2;
    }
    Message localMessage = new Message();
    localMessage.what = 3;
    localMessage.arg1 = paramInt1;
    TEdit.a(this.a).sendMessage(localMessage);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/sa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */