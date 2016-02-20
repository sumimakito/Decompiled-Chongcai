package com.alipay.sdk.sys;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.data.MspConfig;
import com.alipay.sdk.util.Utils;
import com.ta.utdid2.device.UTDevice;
import java.io.File;

public class GlobalContext
{
  private static GlobalContext a;
  private Context b;
  private MspConfig c;
  
  public static GlobalContext a()
  {
    if (a == null) {
      a = new GlobalContext();
    }
    return a;
  }
  
  /* Error */
  private static String a(String[] paramArrayOfString)
  {
    // Byte code:
    //   0: new 24	java/lang/ProcessBuilder
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 27	java/lang/ProcessBuilder:<init>	([Ljava/lang/String;)V
    //   8: astore_0
    //   9: aload_0
    //   10: iconst_0
    //   11: invokevirtual 31	java/lang/ProcessBuilder:redirectErrorStream	(Z)Ljava/lang/ProcessBuilder;
    //   14: pop
    //   15: aload_0
    //   16: invokevirtual 35	java/lang/ProcessBuilder:start	()Ljava/lang/Process;
    //   19: astore_0
    //   20: new 37	java/io/DataOutputStream
    //   23: dup
    //   24: aload_0
    //   25: invokevirtual 43	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   28: invokespecial 46	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   31: astore_2
    //   32: new 48	java/io/DataInputStream
    //   35: dup
    //   36: aload_0
    //   37: invokevirtual 52	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   40: invokespecial 55	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   43: invokevirtual 59	java/io/DataInputStream:readLine	()Ljava/lang/String;
    //   46: astore_1
    //   47: aload_2
    //   48: ldc 61
    //   50: invokevirtual 65	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   53: aload_2
    //   54: invokevirtual 68	java/io/DataOutputStream:flush	()V
    //   57: aload_0
    //   58: invokevirtual 72	java/lang/Process:waitFor	()I
    //   61: pop
    //   62: aload_0
    //   63: invokevirtual 75	java/lang/Process:destroy	()V
    //   66: aload_1
    //   67: areturn
    //   68: astore_0
    //   69: aconst_null
    //   70: astore_0
    //   71: ldc 77
    //   73: astore_1
    //   74: aload_0
    //   75: invokevirtual 75	java/lang/Process:destroy	()V
    //   78: aload_1
    //   79: areturn
    //   80: astore_0
    //   81: aload_1
    //   82: areturn
    //   83: astore_1
    //   84: aconst_null
    //   85: astore_0
    //   86: aload_0
    //   87: invokevirtual 75	java/lang/Process:destroy	()V
    //   90: aload_1
    //   91: athrow
    //   92: astore_0
    //   93: aload_1
    //   94: areturn
    //   95: astore_0
    //   96: goto -6 -> 90
    //   99: astore_1
    //   100: goto -14 -> 86
    //   103: astore_1
    //   104: ldc 77
    //   106: astore_1
    //   107: goto -33 -> 74
    //   110: astore_2
    //   111: goto -37 -> 74
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	114	0	paramArrayOfString	String[]
    //   46	36	1	str1	String
    //   83	11	1	str2	String
    //   99	1	1	localObject	Object
    //   103	1	1	localException1	Exception
    //   106	1	1	str3	String
    //   31	23	2	localDataOutputStream	java.io.DataOutputStream
    //   110	1	2	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	20	68	java/lang/Exception
    //   74	78	80	java/lang/Exception
    //   0	20	83	finally
    //   62	66	92	java/lang/Exception
    //   86	90	95	java/lang/Exception
    //   20	47	99	finally
    //   47	62	99	finally
    //   20	47	103	java/lang/Exception
    //   47	62	110	java/lang/Exception
  }
  
  private static boolean a(String paramString)
  {
    char[] arrayOfChar = new char[65];
    char[] tmp8_6 = arrayOfChar;
    tmp8_6[0] = 65;
    char[] tmp13_8 = tmp8_6;
    tmp13_8[1] = 66;
    char[] tmp18_13 = tmp13_8;
    tmp18_13[2] = 67;
    char[] tmp23_18 = tmp18_13;
    tmp23_18[3] = 68;
    char[] tmp28_23 = tmp23_18;
    tmp28_23[4] = 69;
    char[] tmp33_28 = tmp28_23;
    tmp33_28[5] = 70;
    char[] tmp38_33 = tmp33_28;
    tmp38_33[6] = 71;
    char[] tmp44_38 = tmp38_33;
    tmp44_38[7] = 72;
    char[] tmp50_44 = tmp44_38;
    tmp50_44[8] = 73;
    char[] tmp56_50 = tmp50_44;
    tmp56_50[9] = 74;
    char[] tmp62_56 = tmp56_50;
    tmp62_56[10] = 75;
    char[] tmp68_62 = tmp62_56;
    tmp68_62[11] = 76;
    char[] tmp74_68 = tmp68_62;
    tmp74_68[12] = 77;
    char[] tmp80_74 = tmp74_68;
    tmp80_74[13] = 78;
    char[] tmp86_80 = tmp80_74;
    tmp86_80[14] = 79;
    char[] tmp92_86 = tmp86_80;
    tmp92_86[15] = 80;
    char[] tmp98_92 = tmp92_86;
    tmp98_92[16] = 81;
    char[] tmp104_98 = tmp98_92;
    tmp104_98[17] = 82;
    char[] tmp110_104 = tmp104_98;
    tmp110_104[18] = 83;
    char[] tmp116_110 = tmp110_104;
    tmp116_110[19] = 84;
    char[] tmp122_116 = tmp116_110;
    tmp122_116[20] = 85;
    char[] tmp128_122 = tmp122_116;
    tmp128_122[21] = 86;
    char[] tmp134_128 = tmp128_122;
    tmp134_128[22] = 87;
    char[] tmp140_134 = tmp134_128;
    tmp140_134[23] = 88;
    char[] tmp146_140 = tmp140_134;
    tmp146_140[24] = 89;
    char[] tmp152_146 = tmp146_140;
    tmp152_146[25] = 90;
    char[] tmp158_152 = tmp152_146;
    tmp158_152[26] = 97;
    char[] tmp164_158 = tmp158_152;
    tmp164_158[27] = 98;
    char[] tmp170_164 = tmp164_158;
    tmp170_164[28] = 99;
    char[] tmp176_170 = tmp170_164;
    tmp176_170[29] = 100;
    char[] tmp182_176 = tmp176_170;
    tmp182_176[30] = 101;
    char[] tmp188_182 = tmp182_176;
    tmp188_182[31] = 102;
    char[] tmp194_188 = tmp188_182;
    tmp194_188[32] = 103;
    char[] tmp200_194 = tmp194_188;
    tmp200_194[33] = 104;
    char[] tmp206_200 = tmp200_194;
    tmp206_200[34] = 105;
    char[] tmp212_206 = tmp206_200;
    tmp212_206[35] = 106;
    char[] tmp218_212 = tmp212_206;
    tmp218_212[36] = 107;
    char[] tmp224_218 = tmp218_212;
    tmp224_218[37] = 108;
    char[] tmp230_224 = tmp224_218;
    tmp230_224[38] = 109;
    char[] tmp236_230 = tmp230_224;
    tmp236_230[39] = 110;
    char[] tmp242_236 = tmp236_230;
    tmp242_236[40] = 111;
    char[] tmp248_242 = tmp242_236;
    tmp248_242[41] = 112;
    char[] tmp254_248 = tmp248_242;
    tmp254_248[42] = 113;
    char[] tmp260_254 = tmp254_248;
    tmp260_254[43] = 114;
    char[] tmp266_260 = tmp260_254;
    tmp266_260[44] = 115;
    char[] tmp272_266 = tmp266_260;
    tmp272_266[45] = 116;
    char[] tmp278_272 = tmp272_266;
    tmp278_272[46] = 117;
    char[] tmp284_278 = tmp278_272;
    tmp284_278[47] = 118;
    char[] tmp290_284 = tmp284_278;
    tmp290_284[48] = 119;
    char[] tmp296_290 = tmp290_284;
    tmp296_290[49] = 120;
    char[] tmp302_296 = tmp296_290;
    tmp302_296[50] = 121;
    char[] tmp308_302 = tmp302_296;
    tmp308_302[51] = 122;
    char[] tmp314_308 = tmp308_302;
    tmp314_308[52] = 48;
    char[] tmp320_314 = tmp314_308;
    tmp320_314[53] = 49;
    char[] tmp326_320 = tmp320_314;
    tmp326_320[54] = 50;
    char[] tmp332_326 = tmp326_320;
    tmp332_326[55] = 51;
    char[] tmp338_332 = tmp332_326;
    tmp338_332[56] = 52;
    char[] tmp344_338 = tmp338_332;
    tmp344_338[57] = 53;
    char[] tmp350_344 = tmp344_338;
    tmp350_344[58] = 54;
    char[] tmp356_350 = tmp350_344;
    tmp356_350[59] = 55;
    char[] tmp362_356 = tmp356_350;
    tmp362_356[60] = 56;
    char[] tmp368_362 = tmp362_356;
    tmp368_362[61] = 57;
    char[] tmp374_368 = tmp368_362;
    tmp374_368[62] = 43;
    char[] tmp380_374 = tmp374_368;
    tmp380_374[63] = 47;
    char[] tmp386_380 = tmp380_374;
    tmp386_380[64] = 61;
    tmp386_380;
    paramString = paramString.toCharArray();
    int k = paramString.length;
    int i = 0;
    boolean bool1 = false;
    boolean bool2;
    for (;;)
    {
      bool2 = bool1;
      if (i >= k) {
        break;
      }
      int m = paramString[i];
      int n = arrayOfChar.length;
      int j = 0;
      bool1 = false;
      while (j < n)
      {
        if (m == arrayOfChar[j]) {
          bool1 = true;
        }
        j += 1;
      }
      bool2 = bool1;
      if (!bool1) {
        break;
      }
      i += 1;
    }
    return bool2;
  }
  
  public static boolean d()
  {
    return false;
  }
  
  public static boolean e()
  {
    boolean bool = true;
    Object localObject = new String[5];
    localObject[0] = "/system/xbin/";
    localObject[1] = "/system/bin/";
    localObject[2] = "/system/sbin/";
    localObject[3] = "/sbin/";
    localObject[4] = "/vendor/bin/";
    int i = 0;
    try
    {
      while (i < localObject.length)
      {
        String str = localObject[i] + "su";
        if (new File(str).exists())
        {
          localObject = a(new String[] { "ls", "-l", str });
          if (!TextUtils.isEmpty((CharSequence)localObject))
          {
            i = ((String)localObject).indexOf("root");
            int j = ((String)localObject).lastIndexOf("root");
            if (i != j) {}
          }
          else
          {
            bool = false;
          }
          return bool;
        }
        i += 1;
      }
      return false;
    }
    catch (Exception localException) {}
  }
  
  public static String f()
  {
    return Utils.d();
  }
  
  public final void a(Context paramContext, MspConfig paramMspConfig)
  {
    this.b = paramContext.getApplicationContext();
    this.c = paramMspConfig;
  }
  
  public final Context b()
  {
    return this.b;
  }
  
  public final MspConfig c()
  {
    return this.c;
  }
  
  public final String g()
  {
    String str = UTDevice.getUtdid(this.b);
    if (!TextUtils.isEmpty(str))
    {
      char[] arrayOfChar1 = new char[65];
      char[] tmp25_23 = arrayOfChar1;
      tmp25_23[0] = 65;
      char[] tmp30_25 = tmp25_23;
      tmp30_25[1] = 66;
      char[] tmp35_30 = tmp30_25;
      tmp35_30[2] = 67;
      char[] tmp40_35 = tmp35_30;
      tmp40_35[3] = 68;
      char[] tmp45_40 = tmp40_35;
      tmp45_40[4] = 69;
      char[] tmp50_45 = tmp45_40;
      tmp50_45[5] = 70;
      char[] tmp55_50 = tmp50_45;
      tmp55_50[6] = 71;
      char[] tmp61_55 = tmp55_50;
      tmp61_55[7] = 72;
      char[] tmp67_61 = tmp61_55;
      tmp67_61[8] = 73;
      char[] tmp73_67 = tmp67_61;
      tmp73_67[9] = 74;
      char[] tmp79_73 = tmp73_67;
      tmp79_73[10] = 75;
      char[] tmp85_79 = tmp79_73;
      tmp85_79[11] = 76;
      char[] tmp91_85 = tmp85_79;
      tmp91_85[12] = 77;
      char[] tmp97_91 = tmp91_85;
      tmp97_91[13] = 78;
      char[] tmp103_97 = tmp97_91;
      tmp103_97[14] = 79;
      char[] tmp109_103 = tmp103_97;
      tmp109_103[15] = 80;
      char[] tmp115_109 = tmp109_103;
      tmp115_109[16] = 81;
      char[] tmp121_115 = tmp115_109;
      tmp121_115[17] = 82;
      char[] tmp127_121 = tmp121_115;
      tmp127_121[18] = 83;
      char[] tmp133_127 = tmp127_121;
      tmp133_127[19] = 84;
      char[] tmp139_133 = tmp133_127;
      tmp139_133[20] = 85;
      char[] tmp145_139 = tmp139_133;
      tmp145_139[21] = 86;
      char[] tmp151_145 = tmp145_139;
      tmp151_145[22] = 87;
      char[] tmp157_151 = tmp151_145;
      tmp157_151[23] = 88;
      char[] tmp163_157 = tmp157_151;
      tmp163_157[24] = 89;
      char[] tmp169_163 = tmp163_157;
      tmp169_163[25] = 90;
      char[] tmp175_169 = tmp169_163;
      tmp175_169[26] = 97;
      char[] tmp181_175 = tmp175_169;
      tmp181_175[27] = 98;
      char[] tmp187_181 = tmp181_175;
      tmp187_181[28] = 99;
      char[] tmp193_187 = tmp187_181;
      tmp193_187[29] = 100;
      char[] tmp199_193 = tmp193_187;
      tmp199_193[30] = 101;
      char[] tmp205_199 = tmp199_193;
      tmp205_199[31] = 102;
      char[] tmp211_205 = tmp205_199;
      tmp211_205[32] = 103;
      char[] tmp217_211 = tmp211_205;
      tmp217_211[33] = 104;
      char[] tmp223_217 = tmp217_211;
      tmp223_217[34] = 105;
      char[] tmp229_223 = tmp223_217;
      tmp229_223[35] = 106;
      char[] tmp235_229 = tmp229_223;
      tmp235_229[36] = 107;
      char[] tmp241_235 = tmp235_229;
      tmp241_235[37] = 108;
      char[] tmp247_241 = tmp241_235;
      tmp247_241[38] = 109;
      char[] tmp253_247 = tmp247_241;
      tmp253_247[39] = 110;
      char[] tmp259_253 = tmp253_247;
      tmp259_253[40] = 111;
      char[] tmp265_259 = tmp259_253;
      tmp265_259[41] = 112;
      char[] tmp271_265 = tmp265_259;
      tmp271_265[42] = 113;
      char[] tmp277_271 = tmp271_265;
      tmp277_271[43] = 114;
      char[] tmp283_277 = tmp277_271;
      tmp283_277[44] = 115;
      char[] tmp289_283 = tmp283_277;
      tmp289_283[45] = 116;
      char[] tmp295_289 = tmp289_283;
      tmp295_289[46] = 117;
      char[] tmp301_295 = tmp295_289;
      tmp301_295[47] = 118;
      char[] tmp307_301 = tmp301_295;
      tmp307_301[48] = 119;
      char[] tmp313_307 = tmp307_301;
      tmp313_307[49] = 120;
      char[] tmp319_313 = tmp313_307;
      tmp319_313[50] = 121;
      char[] tmp325_319 = tmp319_313;
      tmp325_319[51] = 122;
      char[] tmp331_325 = tmp325_319;
      tmp331_325[52] = 48;
      char[] tmp337_331 = tmp331_325;
      tmp337_331[53] = 49;
      char[] tmp343_337 = tmp337_331;
      tmp343_337[54] = 50;
      char[] tmp349_343 = tmp343_337;
      tmp349_343[55] = 51;
      char[] tmp355_349 = tmp349_343;
      tmp355_349[56] = 52;
      char[] tmp361_355 = tmp355_349;
      tmp361_355[57] = 53;
      char[] tmp367_361 = tmp361_355;
      tmp367_361[58] = 54;
      char[] tmp373_367 = tmp367_361;
      tmp373_367[59] = 55;
      char[] tmp379_373 = tmp373_367;
      tmp379_373[60] = 56;
      char[] tmp385_379 = tmp379_373;
      tmp385_379[61] = 57;
      char[] tmp391_385 = tmp385_379;
      tmp391_385[62] = 43;
      char[] tmp397_391 = tmp391_385;
      tmp397_391[63] = 47;
      char[] tmp403_397 = tmp397_391;
      tmp403_397[64] = 61;
      tmp403_397;
      char[] arrayOfChar2 = str.toCharArray();
      int m = arrayOfChar2.length;
      int j = 0;
      int i = 0;
      int k;
      for (;;)
      {
        k = i;
        if (j >= m) {
          break;
        }
        int n = arrayOfChar2[j];
        int i1 = arrayOfChar1.length;
        k = 0;
        i = 0;
        while (k < i1)
        {
          if (n == arrayOfChar1[k]) {
            i = 1;
          }
          k += 1;
        }
        k = i;
        if (i == 0) {
          break;
        }
        j += 1;
      }
      if (k != 0) {
        return str;
      }
    }
    return "";
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/alipay/sdk/sys/GlobalContext.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */