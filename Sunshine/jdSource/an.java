import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.HorizontalScrollView;
import cn.apppark.mcd.widget.TCellLinearLayout;

public final class an
  implements View.OnTouchListener
{
  private an(TCellLinearLayout paramTCellLinearLayout) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default: 
    case 0: 
    case 2: 
      do
      {
        return false;
        this.a.lastX = ((int)paramMotionEvent.getRawX());
        this.a.lastPositionX = paramView.getLeft();
        return false;
      } while (!this.a.isMove);
      int m = (int)paramMotionEvent.getRawX() - this.a.lastX;
      int k = paramView.getLeft() + m;
      int j = paramView.getRight() + m;
      int i = k;
      if (k < 0)
      {
        j = paramView.getWidth() + 0;
        i = 0;
      }
      this.a.lastX = ((int)paramMotionEvent.getRawX());
      if (m > 0) {
        if (this.a.lastX > this.a.rightScrollPos)
        {
          TCellLinearLayout.a(this.a).smoothScrollBy(this.a.MIN_MOVE_DIS, 0);
          TCellLinearLayout.a(this.a, paramView, i + this.a.MIN_MOVE_DIS, 0, j + this.a.MIN_MOVE_DIS, paramView.getBottom());
        }
      }
      for (;;)
      {
        TCellLinearLayout.a(this.a, paramView, paramView.getLeft());
        return false;
        TCellLinearLayout.a(this.a, paramView, i, 0, j, paramView.getBottom());
        continue;
        if ((TCellLinearLayout.a(this.a).getScrollX() > 0) && (this.a.lastX < this.a.leftScrollPos))
        {
          TCellLinearLayout.a(this.a).smoothScrollBy(-this.a.MIN_MOVE_DIS, 0);
          TCellLinearLayout.a(this.a, paramView, i - this.a.MIN_MOVE_DIS, 0, j - this.a.MIN_MOVE_DIS, paramView.getBottom());
        }
        else
        {
          TCellLinearLayout.a(this.a, paramView, i, 0, j, paramView.getBottom());
        }
      }
    }
    TCellLinearLayout.a(this.a, true, TCellLinearLayout.a(this.a));
    TCellLinearLayout.b(this.a, paramView, this.a.lastPositionX);
    this.a.isMove = false;
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/an.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */