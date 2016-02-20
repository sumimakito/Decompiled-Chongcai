package com.tencent.mm.sdk.platformtools;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;

public class SensorController
  extends BroadcastReceiver
  implements SensorEventListener
{
  private static float aR = 4.2949673E9F;
  private static float aU = 0.5F;
  private SensorManager aS;
  private float aT;
  private SensorEventCallBack aV;
  private Sensor aW;
  private final boolean aX;
  private boolean aY = false;
  private boolean aZ = false;
  
  public SensorController(Context paramContext)
  {
    this.aS = ((SensorManager)paramContext.getSystemService("sensor"));
    this.aW = this.aS.getDefaultSensor(8);
    if (this.aW != null) {}
    for (boolean bool = true;; bool = false)
    {
      this.aX = bool;
      this.aT = (aU + 1.0F);
      return;
    }
  }
  
  public boolean isSensorEnable()
  {
    return this.aX;
  }
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.intent.action.HEADSET_PLUG"))
    {
      int i = paramIntent.getIntExtra("state", 0);
      if (i == 1) {
        this.aY = true;
      }
      if (i == 0) {
        this.aY = false;
      }
    }
  }
  
  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    if (this.aY) {
      return;
    }
    float f = paramSensorEvent.values[0];
    switch (paramSensorEvent.sensor.getType())
    {
    default: 
      return;
    }
    if (f < aR)
    {
      aR = f;
      aU = 0.5F + f;
    }
    if ((this.aT >= aU) && (f < aU)) {
      if (this.aV != null)
      {
        Log.v("MicroMsg.SensorController", "sensor event false");
        this.aV.onSensorEvent(false);
      }
    }
    for (;;)
    {
      this.aT = f;
      return;
      if ((this.aT <= aU) && (f > aU) && (this.aV != null))
      {
        Log.v("MicroMsg.SensorController", "sensor event true");
        this.aV.onSensorEvent(true);
      }
    }
  }
  
  public void removeSensorCallBack()
  {
    Log.v("MicroMsg.SensorController", "sensor callback removed");
    this.aS.unregisterListener(this, this.aW);
    this.aS.unregisterListener(this);
    this.aZ = false;
    this.aV = null;
  }
  
  public void setSensorCallBack(SensorEventCallBack paramSensorEventCallBack)
  {
    Log.v("MicroMsg.SensorController", "sensor callback set");
    if (!this.aZ)
    {
      this.aS.registerListener(this, this.aW, 2);
      this.aZ = true;
    }
    this.aV = paramSensorEventCallBack;
  }
  
  public static abstract interface SensorEventCallBack
  {
    public abstract void onSensorEvent(boolean paramBoolean);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/SensorController.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */