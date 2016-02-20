package com.tencent.mm.sdk.platformtools;

import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;

class PhoneUtil20Impl$1
  extends PhoneStateListener
{
  PhoneUtil20Impl$1(PhoneUtil20Impl paramPhoneUtil20Impl) {}
  
  public void onSignalStrengthsChanged(SignalStrength paramSignalStrength)
  {
    super.onSignalStrengthsChanged(paramSignalStrength);
    if (PhoneUtil20Impl.a(this.aQ) == 2) {
      PhoneUtil20Impl.c(paramSignalStrength.getCdmaDbm());
    }
    if (PhoneUtil20Impl.a(this.aQ) == 1) {
      PhoneUtil20Impl.c(paramSignalStrength.getGsmSignalStrength() * 2 - 113);
    }
    if (PhoneUtil20Impl.b(this.aQ) != null) {
      PhoneUtil20Impl.b(this.aQ).listen(PhoneUtil20Impl.c(this.aQ), 0);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/PhoneUtil20Impl$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */