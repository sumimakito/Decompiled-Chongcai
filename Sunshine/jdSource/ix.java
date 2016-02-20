import android.app.Dialog;
import cn.apppark.mcd.widget.MyEditText;
import cn.apppark.mcd.widget.MyEditText.MyEditTextClickListener;
import cn.apppark.vertify.activity.free.dyn.DynProductGalleryText5013;

public final class ix
  implements MyEditText.MyEditTextClickListener
{
  public ix(DynProductGalleryText5013 paramDynProductGalleryText5013) {}
  
  public final void onKeyEnter()
  {
    DynProductGalleryText5013.a(this.a, DynProductGalleryText5013.a(this.a).getText().toString().trim());
    DynProductGalleryText5013.b(this.a).show();
    this.a.initData();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ix.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */