import cn.apppark.vertify.activity.tieba.TTopicDetail;
import cn.apppark.vertify.adapter.TCommnetAdapter.OnDeleteListener;

public final class tm
  implements TCommnetAdapter.OnDeleteListener
{
  public tm(TTopicDetail paramTTopicDetail) {}
  
  public final void onDelete(String paramString1, String paramString2, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    TTopicDetail.d(this.a, paramInt1);
    if (!paramBoolean)
    {
      TTopicDetail.b(this.a, 8, paramString1);
      return;
    }
    TTopicDetail.c(this.a, 10, paramString2);
    TTopicDetail.e(this.a, paramInt2);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/tm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */