package com.tencent.mm.sdk.platformtools;

import android.widget.ListView;

class SmoothScrollToPosition21below
  implements BackwardSupportUtil.SmoothScrollFactory.IScroll
{
  public void doScroll(ListView paramListView)
  {
    paramListView.setSelection(0);
  }
  
  public void doScroll(ListView paramListView, int paramInt)
  {
    paramListView.setSelection(paramInt);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/SmoothScrollToPosition21below.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */