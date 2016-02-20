import cn.apppark.mcd.util.imge.ImgUtil;
import cn.apppark.vertify.activity.persion.PersonInfo;

public final class or
  implements Runnable
{
  public or(PersonInfo paramPersonInfo) {}
  
  public final void run()
  {
    PersonInfo.a(this.a, ImgUtil.compressImgQuality(PersonInfo.e(this.a), 30));
    PersonInfo.j(this.a).sendEmptyMessage(5004);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/or.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */