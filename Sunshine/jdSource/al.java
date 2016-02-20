import android.os.Vibrator;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.widget.ImageView;
import cn.apppark.mcd.widget.TCellLinearLayout;
import cn.apppark.vertify.activity.tieba.TPicCellInfo;

public final class al
  implements View.OnLongClickListener
{
  public al(TCellLinearLayout paramTCellLinearLayout) {}
  
  public final boolean onLongClick(View paramView)
  {
    TCellLinearLayout.a(this.a, false, TCellLinearLayout.a(this.a));
    this.a.mVibrator.vibrate(100L);
    this.a.isMove = true;
    ((TPicCellInfo)paramView.getTag()).getImgbg().setVisibility(0);
    return true;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */