import cn.apppark.vertify.activity.tieba.TTopicDetail;
import cn.apppark.vertify.adapter.TCommnetAdapter.OnPicClickListener;

public final class tn
  implements TCommnetAdapter.OnPicClickListener
{
  public tn(TTopicDetail paramTTopicDetail) {}
  
  public final void onPicClick(String paramString)
  {
    TTopicDetail.a(this.a, 0, paramString);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/tn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */