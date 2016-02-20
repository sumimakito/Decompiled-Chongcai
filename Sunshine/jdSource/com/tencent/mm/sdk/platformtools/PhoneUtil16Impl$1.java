package com.tencent.mm.sdk.platformtools;

import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;

class PhoneUtil16Impl$1
  extends PhoneStateListener
{
  PhoneUtil16Impl$1(PhoneUtil16Impl paramPhoneUtil16Impl) {}
  
  public void onSignalStrengthChanged(int paramInt)
  {
    super.onSignalStrengthChanged(paramInt);
    PhoneUtil16Impl.b(paramInt * 2 - 113);
    if (PhoneUtil16Impl.a(this.aO) != null) {
      PhoneUtil16Impl.a(this.aO).listen(PhoneUtil16Impl.b(this.aO), 0);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/PhoneUtil16Impl$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */