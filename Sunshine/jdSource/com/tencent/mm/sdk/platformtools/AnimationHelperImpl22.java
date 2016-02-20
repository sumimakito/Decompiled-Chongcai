package com.tencent.mm.sdk.platformtools;

import android.view.View;
import android.view.animation.Animation;

class AnimationHelperImpl22
  implements BackwardSupportUtil.AnimationHelper.IHelper
{
  public void cancelAnimation(View paramView, Animation paramAnimation)
  {
    paramAnimation.cancel();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/AnimationHelperImpl22.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */