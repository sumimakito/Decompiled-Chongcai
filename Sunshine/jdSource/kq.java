import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.mcd.widget.RemoteImageView;
import cn.apppark.vertify.activity.free.dyn.PicGallery;

public final class kq
  implements AdapterView.OnItemClickListener
{
  public kq(PicGallery paramPicGallery) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    try
    {
      paramAdapterView = (RemoteImageView)paramView;
      if ((paramAdapterView.getDrawable() instanceof BitmapDrawable))
      {
        PicGallery.a(this.a, ((BitmapDrawable)paramAdapterView.getDrawable()).getBitmap());
        PicGallery.a(this.a, paramInt);
        if (PicGallery.a(this.a).isShowing())
        {
          PicGallery.a(this.a).dismiss();
          return;
        }
        PicGallery.a(this.a).showAtLocation(PicGallery.b(this.a), 80, 0, 0);
        return;
      }
    }
    catch (Exception paramAdapterView)
    {
      paramAdapterView.printStackTrace();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/kq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */