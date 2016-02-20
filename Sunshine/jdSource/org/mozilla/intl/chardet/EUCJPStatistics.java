package org.mozilla.intl.chardet;

public class EUCJPStatistics
  extends nsEUCStatistics
{
  static float[] mFirstByteFreq;
  static float mFirstByteMean;
  static float mFirstByteStdDev;
  static float mFirstByteWeight;
  static float[] mSecondByteFreq;
  static float mSecondByteMean;
  static float mSecondByteStdDev;
  static float mSecondByteWeight;
  
  public EUCJPStatistics()
  {
    mFirstByteFreq = new float[] { 0.364808F, 0.0F, 0.0F, 0.145325F, 0.304891F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.001835F, 0.010771F, 0.006462F, 0.001157F, 0.002114F, 0.003231F, 0.001356F, 0.00742F, 0.004189F, 0.003231F, 0.003032F, 0.03319F, 0.006303F, 0.006064F, 0.009973F, 0.002354F, 0.00367F, 0.009135F, 0.001675F, 0.002792F, 0.002194F, 0.01472F, 0.011928F, 8.78E-4F, 0.013124F, 0.001077F, 0.009295F, 0.003471F, 0.002872F, 0.002433F, 9.57E-4F, 0.001636F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 8.0E-5F, 2.79E-4F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 8.0E-5F, 0.0F };
    mFirstByteStdDev = 0.050407F;
    mFirstByteMean = 0.010638F;
    mFirstByteWeight = 0.640871F;
    mSecondByteFreq = new float[] { 0.002473F, 0.039134F, 0.152745F, 0.009694F, 3.59E-4F, 0.02218F, 7.58E-4F, 0.004308F, 1.6E-4F, 0.002513F, 0.003072F, 0.001316F, 0.00383F, 0.001037F, 0.00359F, 9.57E-4F, 1.6E-4F, 2.39E-4F, 0.006462F, 0.001596F, 0.031554F, 0.001316F, 0.002194F, 0.016555F, 0.003271F, 6.78E-4F, 5.98E-4F, 0.206438F, 7.18E-4F, 0.001077F, 0.00371F, 0.001356F, 0.001356F, 4.39E-4F, 0.004388F, 0.005704F, 8.78E-4F, 0.010172F, 0.007061F, 0.01468F, 6.38E-4F, 0.02573F, 0.002792F, 7.18E-4F, 0.001795F, 0.091551F, 7.58E-4F, 0.003909F, 5.58E-4F, 0.031195F, 0.007061F, 0.001316F, 0.022579F, 0.006981F, 0.00726F, 0.001117F, 2.39E-4F, 0.012127F, 8.78E-4F, 0.00379F, 0.001077F, 7.58E-4F, 0.002114F, 0.002234F, 6.78E-4F, 0.002992F, 0.003311F, 0.023416F, 0.001237F, 0.002753F, 0.005146F, 0.002194F, 0.007021F, 0.008497F, 0.013763F, 0.011768F, 0.006303F, 0.001915F, 6.38E-4F, 0.008776F, 9.18E-4F, 0.003431F, 0.057603F, 4.39E-4F, 4.39E-4F, 7.58E-4F, 0.002872F, 0.001675F, 0.01105F, 0.0F, 2.79E-4F, 0.012127F, 7.18E-4F, 0.00738F };
    mSecondByteStdDev = 0.028247F;
    mSecondByteMean = 0.010638F;
    mSecondByteWeight = 0.359129F;
  }
  
  public float[] mFirstByteFreq()
  {
    return mFirstByteFreq;
  }
  
  public float mFirstByteMean()
  {
    return mFirstByteMean;
  }
  
  public float mFirstByteStdDev()
  {
    return mFirstByteStdDev;
  }
  
  public float mFirstByteWeight()
  {
    return mFirstByteWeight;
  }
  
  public float[] mSecondByteFreq()
  {
    return mSecondByteFreq;
  }
  
  public float mSecondByteMean()
  {
    return mSecondByteMean;
  }
  
  public float mSecondByteStdDev()
  {
    return mSecondByteStdDev;
  }
  
  public float mSecondByteWeight()
  {
    return mSecondByteWeight;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/mozilla/intl/chardet/EUCJPStatistics.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */