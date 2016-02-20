import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.widget.ElasticScrollView.ElasticScrollViewListener;
import cn.apppark.mcd.widget.PullDownListViewAutoLoad;
import cn.apppark.vertify.activity.free.dyn.SProductBase;

public final class lb
  implements ElasticScrollView.ElasticScrollViewListener
{
  public lb(SProductBase paramSProductBase) {}
  
  public final void onScroll(int paramInt)
  {
    if (paramInt >= YYGYContants.PRODUCT_INFO_HEIGHT)
    {
      SProductBase.a(this.a).setScroll(true);
      return;
    }
    SProductBase.a(this.a).setScroll(false);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/lb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */