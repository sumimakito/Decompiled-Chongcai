import cn.apppark.vertify.activity.free.self.Ball720;
import cn.apppark.vertify.activity.free.self.Self720View;

final class mh
  implements Runnable
{
  mh(mg parammg, float paramFloat1, float paramFloat2) {}
  
  public final void run()
  {
    Self720View.i(this.c.a).a.increaseX(-this.a);
    Self720View.i(this.c.a).a.increaseY(this.b);
    this.c.a.requestRender();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/mh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */