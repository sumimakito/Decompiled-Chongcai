package com.tencent.mm.sdk.platformtools;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class Util$2
  implements View.OnTouchListener
{
  Util$2(View paramView1, View paramView2) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default: 
      return false;
    case 0: 
      this.bx.setSelected(true);
      return false;
    case 1: 
    case 3: 
    case 4: 
      this.bx.setSelected(false);
      return false;
    }
    this.bx.setSelected(this.by.isPressed());
    return false;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/Util$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */