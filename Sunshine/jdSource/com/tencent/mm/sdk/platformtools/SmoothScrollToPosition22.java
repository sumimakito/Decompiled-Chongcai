package com.tencent.mm.sdk.platformtools;

import android.widget.ListView;

class SmoothScrollToPosition22
  implements BackwardSupportUtil.SmoothScrollFactory.IScroll
{
  public void doScroll(ListView paramListView)
  {
    if (paramListView.getFirstVisiblePosition() > 10) {
      paramListView.setSelection(10);
    }
    paramListView.smoothScrollToPosition(0);
  }
  
  public void doScroll(ListView paramListView, int paramInt)
  {
    int i = paramListView.getFirstVisiblePosition();
    if ((i > paramInt) && (i - paramInt > 10)) {
      paramListView.setSelection(paramInt + 10);
    }
    for (;;)
    {
      paramListView.smoothScrollToPosition(paramInt);
      return;
      if ((i < paramInt) && (paramInt - i > 10)) {
        paramListView.setSelection(paramInt - 10);
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/SmoothScrollToPosition22.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */