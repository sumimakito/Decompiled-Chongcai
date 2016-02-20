package com.tencent.mm.sdk.platformtools;

import android.content.Context;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;

class PhoneUtil20Impl
{
  private static int aK = 10000;
  private static int aL = 10000;
  private TelephonyManager aM;
  private PhoneStateListener aN = new PhoneUtil20Impl.1(this);
  private int aP;
  
  /* Error */
  public java.util.List<PhoneUtil.CellInfo> getCellInfoList(Context paramContext)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc 46
    //   3: invokevirtual 52	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   6: checkcast 54	android/telephony/TelephonyManager
    //   9: astore 8
    //   11: new 56	java/util/LinkedList
    //   14: dup
    //   15: invokespecial 57	java/util/LinkedList:<init>	()V
    //   18: astore 7
    //   20: ldc 59
    //   22: astore 5
    //   24: ldc 61
    //   26: astore 6
    //   28: aload 8
    //   30: invokevirtual 65	android/telephony/TelephonyManager:getNetworkOperator	()Ljava/lang/String;
    //   33: astore 4
    //   35: aload 4
    //   37: ifnull +177 -> 214
    //   40: aload 4
    //   42: ldc 61
    //   44: invokevirtual 71	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   47: ifne +167 -> 214
    //   50: aload 4
    //   52: iconst_0
    //   53: iconst_3
    //   54: invokevirtual 75	java/lang/String:substring	(II)Ljava/lang/String;
    //   57: astore_1
    //   58: aload 4
    //   60: iconst_3
    //   61: iconst_5
    //   62: invokevirtual 75	java/lang/String:substring	(II)Ljava/lang/String;
    //   65: astore 4
    //   67: aload 8
    //   69: invokevirtual 79	android/telephony/TelephonyManager:getPhoneType	()I
    //   72: iconst_2
    //   73: if_icmpne +490 -> 563
    //   76: aload 8
    //   78: invokevirtual 83	android/telephony/TelephonyManager:getCellLocation	()Landroid/telephony/CellLocation;
    //   81: checkcast 85	android/telephony/cdma/CdmaCellLocation
    //   84: astore 6
    //   86: aload 6
    //   88: ifnull +123 -> 211
    //   91: getstatic 18	com/tencent/mm/sdk/platformtools/PhoneUtil20Impl:aL	I
    //   94: getstatic 16	com/tencent/mm/sdk/platformtools/PhoneUtil20Impl:aK	I
    //   97: if_icmpne +181 -> 278
    //   100: ldc 61
    //   102: astore 5
    //   104: aload 6
    //   106: invokevirtual 88	android/telephony/cdma/CdmaCellLocation:getBaseStationId	()I
    //   109: iconst_m1
    //   110: if_icmpeq +101 -> 211
    //   113: aload 6
    //   115: invokevirtual 91	android/telephony/cdma/CdmaCellLocation:getNetworkId	()I
    //   118: iconst_m1
    //   119: if_icmpeq +92 -> 211
    //   122: aload 6
    //   124: invokevirtual 94	android/telephony/cdma/CdmaCellLocation:getSystemId	()I
    //   127: iconst_m1
    //   128: if_icmpeq +83 -> 211
    //   131: aload 7
    //   133: new 96	com/tencent/mm/sdk/platformtools/PhoneUtil$CellInfo
    //   136: dup
    //   137: aload_1
    //   138: aload 4
    //   140: ldc 61
    //   142: ldc 61
    //   144: aload 5
    //   146: ldc 98
    //   148: new 100	java/lang/StringBuilder
    //   151: dup
    //   152: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   155: aload 6
    //   157: invokevirtual 88	android/telephony/cdma/CdmaCellLocation:getBaseStationId	()I
    //   160: invokevirtual 105	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   163: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   166: new 100	java/lang/StringBuilder
    //   169: dup
    //   170: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   173: aload 6
    //   175: invokevirtual 91	android/telephony/cdma/CdmaCellLocation:getNetworkId	()I
    //   178: invokevirtual 105	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   181: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   184: new 100	java/lang/StringBuilder
    //   187: dup
    //   188: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   191: aload 6
    //   193: invokevirtual 94	android/telephony/cdma/CdmaCellLocation:getSystemId	()I
    //   196: invokevirtual 105	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   199: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   202: invokespecial 111	com/tencent/mm/sdk/platformtools/PhoneUtil$CellInfo:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   205: invokeinterface 116 2 0
    //   210: pop
    //   211: aload 7
    //   213: areturn
    //   214: aload 8
    //   216: invokevirtual 119	android/telephony/TelephonyManager:getSimOperator	()Ljava/lang/String;
    //   219: astore 9
    //   221: aload 6
    //   223: astore 4
    //   225: aload 5
    //   227: astore_1
    //   228: aload 9
    //   230: ifnull +37 -> 267
    //   233: aload 6
    //   235: astore 4
    //   237: aload 5
    //   239: astore_1
    //   240: aload 9
    //   242: ldc 61
    //   244: invokevirtual 71	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   247: ifne +20 -> 267
    //   250: aload 9
    //   252: iconst_0
    //   253: iconst_3
    //   254: invokevirtual 75	java/lang/String:substring	(II)Ljava/lang/String;
    //   257: astore_1
    //   258: aload 9
    //   260: iconst_3
    //   261: iconst_5
    //   262: invokevirtual 75	java/lang/String:substring	(II)Ljava/lang/String;
    //   265: astore 4
    //   267: goto -200 -> 67
    //   270: astore_1
    //   271: aload_1
    //   272: invokevirtual 122	java/lang/Exception:printStackTrace	()V
    //   275: aload 7
    //   277: areturn
    //   278: new 100	java/lang/StringBuilder
    //   281: dup
    //   282: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   285: getstatic 18	com/tencent/mm/sdk/platformtools/PhoneUtil20Impl:aL	I
    //   288: invokevirtual 105	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   291: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   294: astore 5
    //   296: goto -192 -> 104
    //   299: astore 5
    //   301: aload 8
    //   303: invokevirtual 83	android/telephony/TelephonyManager:getCellLocation	()Landroid/telephony/CellLocation;
    //   306: checkcast 124	android/telephony/gsm/GsmCellLocation
    //   309: astore 5
    //   311: aload 5
    //   313: ifnull +67 -> 380
    //   316: aload 5
    //   318: invokevirtual 127	android/telephony/gsm/GsmCellLocation:getCid	()I
    //   321: istore_2
    //   322: aload 5
    //   324: invokevirtual 130	android/telephony/gsm/GsmCellLocation:getLac	()I
    //   327: istore_3
    //   328: iload_3
    //   329: ldc -125
    //   331: if_icmpge +49 -> 380
    //   334: iload_3
    //   335: iconst_m1
    //   336: if_icmpeq +44 -> 380
    //   339: iload_2
    //   340: iconst_m1
    //   341: if_icmpeq +39 -> 380
    //   344: aload 7
    //   346: new 96	com/tencent/mm/sdk/platformtools/PhoneUtil$CellInfo
    //   349: dup
    //   350: aload_1
    //   351: aload 4
    //   353: iload_3
    //   354: invokestatic 135	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   357: iload_2
    //   358: invokestatic 135	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   361: ldc 61
    //   363: ldc -119
    //   365: ldc 61
    //   367: ldc 61
    //   369: ldc 61
    //   371: invokespecial 111	com/tencent/mm/sdk/platformtools/PhoneUtil$CellInfo:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   374: invokeinterface 116 2 0
    //   379: pop
    //   380: aload 8
    //   382: invokevirtual 141	android/telephony/TelephonyManager:getNeighboringCellInfo	()Ljava/util/List;
    //   385: astore 5
    //   387: aload 5
    //   389: ifnull -178 -> 211
    //   392: aload 5
    //   394: invokeinterface 144 1 0
    //   399: ifle -188 -> 211
    //   402: aload 5
    //   404: invokeinterface 148 1 0
    //   409: astore 5
    //   411: aload 5
    //   413: invokeinterface 154 1 0
    //   418: ifeq -207 -> 211
    //   421: aload 5
    //   423: invokeinterface 158 1 0
    //   428: checkcast 160	android/telephony/NeighboringCellInfo
    //   431: astore 6
    //   433: aload 6
    //   435: invokevirtual 161	android/telephony/NeighboringCellInfo:getCid	()I
    //   438: iconst_m1
    //   439: if_icmpeq -28 -> 411
    //   442: aload 6
    //   444: invokevirtual 162	android/telephony/NeighboringCellInfo:getLac	()I
    //   447: ldc -125
    //   449: if_icmpgt -38 -> 411
    //   452: aload 6
    //   454: invokevirtual 162	android/telephony/NeighboringCellInfo:getLac	()I
    //   457: iconst_m1
    //   458: if_icmpeq -47 -> 411
    //   461: new 100	java/lang/StringBuilder
    //   464: dup
    //   465: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   468: aload 6
    //   470: invokevirtual 165	android/telephony/NeighboringCellInfo:getRssi	()I
    //   473: iconst_2
    //   474: imul
    //   475: bipush 113
    //   477: isub
    //   478: invokevirtual 105	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   481: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   484: astore 8
    //   486: aload 7
    //   488: new 96	com/tencent/mm/sdk/platformtools/PhoneUtil$CellInfo
    //   491: dup
    //   492: aload_1
    //   493: aload 4
    //   495: new 100	java/lang/StringBuilder
    //   498: dup
    //   499: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   502: aload 6
    //   504: invokevirtual 162	android/telephony/NeighboringCellInfo:getLac	()I
    //   507: invokevirtual 105	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   510: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   513: new 100	java/lang/StringBuilder
    //   516: dup
    //   517: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   520: aload 6
    //   522: invokevirtual 161	android/telephony/NeighboringCellInfo:getCid	()I
    //   525: invokevirtual 105	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   528: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   531: aload 8
    //   533: ldc -119
    //   535: ldc 61
    //   537: ldc 61
    //   539: ldc 61
    //   541: invokespecial 111	com/tencent/mm/sdk/platformtools/PhoneUtil$CellInfo:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   544: invokeinterface 116 2 0
    //   549: pop
    //   550: goto -139 -> 411
    //   553: astore 5
    //   555: aload 5
    //   557: invokevirtual 122	java/lang/Exception:printStackTrace	()V
    //   560: goto -180 -> 380
    //   563: aload 8
    //   565: invokevirtual 83	android/telephony/TelephonyManager:getCellLocation	()Landroid/telephony/CellLocation;
    //   568: checkcast 124	android/telephony/gsm/GsmCellLocation
    //   571: astore 5
    //   573: aload 5
    //   575: ifnull +80 -> 655
    //   578: aload 5
    //   580: invokevirtual 127	android/telephony/gsm/GsmCellLocation:getCid	()I
    //   583: istore_2
    //   584: aload 5
    //   586: invokevirtual 130	android/telephony/gsm/GsmCellLocation:getLac	()I
    //   589: istore_3
    //   590: iload_3
    //   591: ldc -125
    //   593: if_icmpge +62 -> 655
    //   596: iload_3
    //   597: iconst_m1
    //   598: if_icmpeq +57 -> 655
    //   601: iload_2
    //   602: iconst_m1
    //   603: if_icmpeq +52 -> 655
    //   606: getstatic 18	com/tencent/mm/sdk/platformtools/PhoneUtil20Impl:aL	I
    //   609: getstatic 16	com/tencent/mm/sdk/platformtools/PhoneUtil20Impl:aK	I
    //   612: if_icmpne +255 -> 867
    //   615: ldc 61
    //   617: astore 5
    //   619: aload 7
    //   621: new 96	com/tencent/mm/sdk/platformtools/PhoneUtil$CellInfo
    //   624: dup
    //   625: aload_1
    //   626: aload 4
    //   628: iload_3
    //   629: invokestatic 135	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   632: iload_2
    //   633: invokestatic 135	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   636: aload 5
    //   638: ldc -119
    //   640: ldc 61
    //   642: ldc 61
    //   644: ldc 61
    //   646: invokespecial 111	com/tencent/mm/sdk/platformtools/PhoneUtil$CellInfo:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   649: invokeinterface 116 2 0
    //   654: pop
    //   655: aload 8
    //   657: invokevirtual 141	android/telephony/TelephonyManager:getNeighboringCellInfo	()Ljava/util/List;
    //   660: astore 5
    //   662: aload 5
    //   664: ifnull -453 -> 211
    //   667: aload 5
    //   669: invokeinterface 144 1 0
    //   674: ifle -463 -> 211
    //   677: aload 5
    //   679: invokeinterface 148 1 0
    //   684: astore 5
    //   686: aload 5
    //   688: invokeinterface 154 1 0
    //   693: ifeq -482 -> 211
    //   696: aload 5
    //   698: invokeinterface 158 1 0
    //   703: checkcast 160	android/telephony/NeighboringCellInfo
    //   706: astore 6
    //   708: aload 6
    //   710: invokevirtual 161	android/telephony/NeighboringCellInfo:getCid	()I
    //   713: iconst_m1
    //   714: if_icmpeq -28 -> 686
    //   717: aload 6
    //   719: invokevirtual 162	android/telephony/NeighboringCellInfo:getLac	()I
    //   722: ldc -125
    //   724: if_icmpgt -38 -> 686
    //   727: new 100	java/lang/StringBuilder
    //   730: dup
    //   731: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   734: aload 6
    //   736: invokevirtual 165	android/telephony/NeighboringCellInfo:getRssi	()I
    //   739: iconst_2
    //   740: imul
    //   741: bipush 113
    //   743: isub
    //   744: invokevirtual 105	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   747: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   750: astore 8
    //   752: ldc -89
    //   754: new 100	java/lang/StringBuilder
    //   757: dup
    //   758: ldc -87
    //   760: invokespecial 172	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   763: aload 6
    //   765: invokevirtual 162	android/telephony/NeighboringCellInfo:getLac	()I
    //   768: invokevirtual 105	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   771: ldc -82
    //   773: invokevirtual 177	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   776: aload 6
    //   778: invokevirtual 161	android/telephony/NeighboringCellInfo:getCid	()I
    //   781: invokevirtual 105	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   784: ldc -77
    //   786: invokevirtual 177	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   789: aload 8
    //   791: invokevirtual 177	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   794: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   797: invokestatic 185	com/tencent/mm/sdk/platformtools/Log:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   800: aload 7
    //   802: new 96	com/tencent/mm/sdk/platformtools/PhoneUtil$CellInfo
    //   805: dup
    //   806: aload_1
    //   807: aload 4
    //   809: new 100	java/lang/StringBuilder
    //   812: dup
    //   813: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   816: aload 6
    //   818: invokevirtual 162	android/telephony/NeighboringCellInfo:getLac	()I
    //   821: invokevirtual 105	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   824: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   827: new 100	java/lang/StringBuilder
    //   830: dup
    //   831: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   834: aload 6
    //   836: invokevirtual 161	android/telephony/NeighboringCellInfo:getCid	()I
    //   839: invokevirtual 105	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   842: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   845: aload 8
    //   847: ldc -119
    //   849: ldc 61
    //   851: ldc 61
    //   853: ldc 61
    //   855: invokespecial 111	com/tencent/mm/sdk/platformtools/PhoneUtil$CellInfo:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   858: invokeinterface 116 2 0
    //   863: pop
    //   864: goto -178 -> 686
    //   867: new 100	java/lang/StringBuilder
    //   870: dup
    //   871: invokespecial 101	java/lang/StringBuilder:<init>	()V
    //   874: getstatic 18	com/tencent/mm/sdk/platformtools/PhoneUtil20Impl:aL	I
    //   877: invokevirtual 105	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   880: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   883: astore 5
    //   885: goto -266 -> 619
    //   888: astore 5
    //   890: aload 5
    //   892: invokevirtual 122	java/lang/Exception:printStackTrace	()V
    //   895: goto -240 -> 655
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	898	0	this	PhoneUtil20Impl
    //   0	898	1	paramContext	Context
    //   321	312	2	i	int
    //   327	302	3	j	int
    //   33	775	4	localObject1	Object
    //   22	273	5	str1	String
    //   299	1	5	localException1	Exception
    //   309	113	5	localObject2	Object
    //   553	3	5	localException2	Exception
    //   571	313	5	localObject3	Object
    //   888	3	5	localException3	Exception
    //   26	809	6	localObject4	Object
    //   18	783	7	localLinkedList	java.util.LinkedList
    //   9	837	8	localObject5	Object
    //   219	40	9	str2	String
    // Exception table:
    //   from	to	target	type
    //   28	35	270	java/lang/Exception
    //   40	67	270	java/lang/Exception
    //   214	221	270	java/lang/Exception
    //   240	267	270	java/lang/Exception
    //   76	86	299	java/lang/Exception
    //   91	100	299	java/lang/Exception
    //   104	211	299	java/lang/Exception
    //   278	296	299	java/lang/Exception
    //   301	311	553	java/lang/Exception
    //   316	328	553	java/lang/Exception
    //   344	380	553	java/lang/Exception
    //   563	573	888	java/lang/Exception
    //   578	590	888	java/lang/Exception
    //   606	615	888	java/lang/Exception
    //   619	655	888	java/lang/Exception
    //   867	885	888	java/lang/Exception
  }
  
  public void getSignalStrength(Context paramContext)
  {
    this.aM = ((TelephonyManager)paramContext.getSystemService("phone"));
    this.aM.listen(this.aN, 256);
    this.aP = this.aM.getPhoneType();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/PhoneUtil20Impl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */