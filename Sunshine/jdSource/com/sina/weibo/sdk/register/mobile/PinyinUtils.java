package com.sina.weibo.sdk.register.mobile;

import android.content.Context;
import android.text.TextUtils;

public class PinyinUtils
{
  private static final int DISTINGUISH_LEN = 10;
  private static final char FIRST_CHINA = '一';
  private static final char LAST_CHINA = '龥';
  private static final String[] PINYIN = { "a", "ai", "an", "ang", "ao", "ba", "bai", "ban", "bang", "bao", "bei", "ben", "beng", "bi", "bian", "biao", "bie", "bin", "bing", "bo", "bu", "ca", "cai", "can", "cang", "cao", "ce", "cen", "ceng", "cha", "chai", "chan", "chang", "chao", "che", "chen", "cheng", "chi", "chong", "chou", "chu", "chuai", "chuan", "chuang", "chui", "chun", "chuo", "ci", "cong", "cou", "cu", "cuan", "cui", "cun", "cuo", "da", "dai", "dan", "dang", "dao", "de", "deng", "di", "dia", "dian", "diao", "die", "ding", "diu", "dong", "dou", "du", "duan", "dui", "dun", "duo", "e", "ei", "en", "er", "fa", "fan", "fang", "fei", "fen", "feng", "fo", "fou", "fu", "ga", "gai", "gan", "gang", "gao", "ge", "gei", "gen", "geng", "gong", "gou", "gu", "gua", "guai", "guan", "guang", "gui", "gun", "guo", "ha", "hai", "han", "hang", "hao", "he", "hei", "hen", "heng", "hong", "hou", "hu", "hua", "huai", "huan", "huang", "hui", "hun", "huo", "ji", "jia", "jian", "jiang", "jiao", "jie", "jin", "jing", "jiong", "jiu", "ju", "juan", "jue", "jun", "ka", "kai", "kan", "kang", "kao", "ke", "ken", "keng", "kong", "kou", "ku", "kua", "kuai", "kuan", "kuang", "kui", "kun", "kuo", "la", "lai", "lan", "lang", "lao", "le", "lei", "leng", "li", "lia", "lian", "liang", "liao", "lie", "lin", "ling", "liu", "long", "lou", "lu", "luan", "lun", "luo", "lv", "lve", "m", "ma", "mai", "man", "mang", "mao", "me", "mei", "men", "meng", "mi", "mian", "miao", "mie", "min", "ming", "miu", "mo", "mou", "mu", "na", "nai", "nan", "nang", "nao", "ne", "nei", "nen", "neng", "ng", "ni", "nian", "niang", "niao", "nie", "nin", "ning", "niu", "none", "nong", "nou", "nu", "nuan", "nuo", "nv", "nve", "o", "ou", "pa", "pai", "pan", "pang", "pao", "pei", "pen", "peng", "pi", "pian", "piao", "pie", "pin", "ping", "po", "pou", "pu", "qi", "qia", "qian", "qiang", "qiao", "qie", "qin", "qing", "qiong", "qiu", "qu", "quan", "que", "qun", "ran", "rang", "rao", "re", "ren", "reng", "ri", "rong", "rou", "ru", "ruan", "rui", "run", "ruo", "sa", "sai", "san", "sang", "sao", "se", "sen", "seng", "sha", "shai", "shan", "shang", "shao", "she", "shei", "shen", "sheng", "shi", "shou", "shu", "shua", "shuai", "shuan", "shuang", "shui", "shun", "shuo", "si", "song", "sou", "su", "suan", "sui", "sun", "suo", "ta", "tai", "tan", "tang", "tao", "te", "teng", "ti", "tian", "tiao", "tie", "ting", "tong", "tou", "tu", "tuan", "tui", "tun", "tuo", "wa", "wai", "wan", "wang", "wei", "wen", "weng", "wo", "wu", "xi", "xia", "xian", "xiang", "xiao", "xie", "xin", "xing", "xiong", "xiu", "xu", "xuan", "xue", "xun", "ya", "yan", "yang", "yao", "ye", "yi", "yiao", "yin", "ying", "yo", "yong", "you", "yu", "yuan", "yue", "yun", "za", "zai", "zan", "zang", "zao", "ze", "zei", "zen", "zeng", "zha", "zhai", "zhan", "zhang", "zhao", "zhe", "zhei", "zhen", "zheng", "zhi", "zhong", "zhou", "zhu", "zhua", "zhuai", "zhuan", "zhuang", "zhui", "zhun", "zhuo", "zi", "zong", "zou", "zu", "zuan", "zui", "zun", "zuo" };
  private static final char SPECIAL_HANZI = '〇';
  private static final String SPECIAL_HANZI_PINYIN = "LING";
  private static volatile boolean isLoad = false;
  private static PinyinUtils sInstance;
  private static short[] sPinyinIndex;
  
  private boolean distinguish(char[] paramArrayOfChar1, char[] paramArrayOfChar2, String[] paramArrayOfString, int paramInt)
  {
    boolean bool2 = false;
    paramArrayOfChar1 = new String(paramArrayOfChar1);
    int j = 0;
    int i = 0;
    for (;;)
    {
      boolean bool1;
      if (i >= paramInt) {
        bool1 = true;
      }
      do
      {
        return bool1;
        int k = paramArrayOfChar1.indexOf(paramArrayOfString[i].charAt(0), j);
        j = k;
        if (k == -1) {
          j = paramArrayOfChar1.indexOf(paramArrayOfChar2[i], k);
        }
        bool1 = bool2;
      } while (j == -1);
      j += 1;
      i += 1;
    }
  }
  
  public static PinyinUtils getInstance(Context paramContext)
  {
    try
    {
      if (sInstance == null) {
        sInstance = new PinyinUtils();
      }
      loadData(paramContext);
      paramContext = sInstance;
      return paramContext;
    }
    finally {}
  }
  
  public static PinyinUtils getObject()
  {
    return sInstance;
  }
  
  private String getPinyin(char paramChar)
  {
    Object localObject;
    if (!isLoad) {
      localObject = "";
    }
    String str;
    do
    {
      return (String)localObject;
      if (paramChar == '〇') {
        return "LING";
      }
      if ((paramChar < '一') || (paramChar > 40869)) {
        return String.valueOf(paramChar);
      }
      str = PINYIN[sPinyinIndex[(paramChar - '一')]];
      localObject = str;
    } while (str != null);
    return "";
  }
  
  /* Error */
  private static void loadData(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 12
    //   3: aconst_null
    //   4: astore 10
    //   6: aconst_null
    //   7: astore 11
    //   9: aconst_null
    //   10: astore 8
    //   12: aconst_null
    //   13: astore 7
    //   15: aconst_null
    //   16: astore 9
    //   18: aload 11
    //   20: astore 6
    //   22: aload 12
    //   24: astore 5
    //   26: aload 7
    //   28: astore 4
    //   30: aload 10
    //   32: astore_3
    //   33: getstatic 851	com/sina/weibo/sdk/register/mobile/PinyinUtils:isLoad	Z
    //   36: istore_2
    //   37: iload_2
    //   38: ifeq +28 -> 66
    //   41: iconst_0
    //   42: ifeq +11 -> 53
    //   45: new 894	java/lang/NullPointerException
    //   48: dup
    //   49: invokespecial 895	java/lang/NullPointerException:<init>	()V
    //   52: athrow
    //   53: iconst_0
    //   54: ifeq +11 -> 65
    //   57: new 894	java/lang/NullPointerException
    //   60: dup
    //   61: invokespecial 895	java/lang/NullPointerException:<init>	()V
    //   64: athrow
    //   65: return
    //   66: aload 11
    //   68: astore 6
    //   70: aload 12
    //   72: astore 5
    //   74: aload 7
    //   76: astore 4
    //   78: aload 10
    //   80: astore_3
    //   81: aload_0
    //   82: invokevirtual 901	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   85: ldc_w 903
    //   88: invokevirtual 909	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   91: astore_0
    //   92: aload_0
    //   93: astore 6
    //   95: aload_0
    //   96: astore 5
    //   98: aload 7
    //   100: astore 4
    //   102: aload_0
    //   103: astore_3
    //   104: new 911	java/io/DataInputStream
    //   107: dup
    //   108: aload_0
    //   109: invokespecial 914	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   112: astore 7
    //   114: aload 7
    //   116: invokevirtual 918	java/io/DataInputStream:available	()I
    //   119: iconst_1
    //   120: ishr
    //   121: i2l
    //   122: l2i
    //   123: newarray <illegal type>
    //   125: putstatic 888	com/sina/weibo/sdk/register/mobile/PinyinUtils:sPinyinIndex	[S
    //   128: iconst_0
    //   129: istore_1
    //   130: iload_1
    //   131: getstatic 888	com/sina/weibo/sdk/register/mobile/PinyinUtils:sPinyinIndex	[S
    //   134: arraylength
    //   135: if_icmplt +26 -> 161
    //   138: iconst_1
    //   139: putstatic 851	com/sina/weibo/sdk/register/mobile/PinyinUtils:isLoad	Z
    //   142: aload 7
    //   144: ifnull +8 -> 152
    //   147: aload 7
    //   149: invokevirtual 921	java/io/DataInputStream:close	()V
    //   152: aload_0
    //   153: ifnull +162 -> 315
    //   156: aload_0
    //   157: invokevirtual 924	java/io/InputStream:close	()V
    //   160: return
    //   161: getstatic 888	com/sina/weibo/sdk/register/mobile/PinyinUtils:sPinyinIndex	[S
    //   164: iload_1
    //   165: aload 7
    //   167: invokevirtual 928	java/io/DataInputStream:readShort	()S
    //   170: sastore
    //   171: iload_1
    //   172: iconst_1
    //   173: iadd
    //   174: istore_1
    //   175: goto -45 -> 130
    //   178: astore_0
    //   179: aload 6
    //   181: astore_0
    //   182: aload 9
    //   184: astore 5
    //   186: aload 5
    //   188: astore 4
    //   190: aload_0
    //   191: astore_3
    //   192: iconst_0
    //   193: putstatic 851	com/sina/weibo/sdk/register/mobile/PinyinUtils:isLoad	Z
    //   196: aload 5
    //   198: ifnull +8 -> 206
    //   201: aload 5
    //   203: invokevirtual 921	java/io/DataInputStream:close	()V
    //   206: aload_0
    //   207: ifnull -142 -> 65
    //   210: aload_0
    //   211: invokevirtual 924	java/io/InputStream:close	()V
    //   214: return
    //   215: astore_0
    //   216: return
    //   217: astore_0
    //   218: aload 5
    //   220: astore_0
    //   221: aload 8
    //   223: astore 5
    //   225: aload 5
    //   227: astore 4
    //   229: aload_0
    //   230: astore_3
    //   231: iconst_0
    //   232: putstatic 851	com/sina/weibo/sdk/register/mobile/PinyinUtils:isLoad	Z
    //   235: aload 5
    //   237: ifnull +8 -> 245
    //   240: aload 5
    //   242: invokevirtual 921	java/io/DataInputStream:close	()V
    //   245: aload_0
    //   246: ifnull -181 -> 65
    //   249: aload_0
    //   250: invokevirtual 924	java/io/InputStream:close	()V
    //   253: return
    //   254: astore_0
    //   255: return
    //   256: astore_0
    //   257: aload 4
    //   259: ifnull +8 -> 267
    //   262: aload 4
    //   264: invokevirtual 921	java/io/DataInputStream:close	()V
    //   267: aload_3
    //   268: ifnull +7 -> 275
    //   271: aload_3
    //   272: invokevirtual 924	java/io/InputStream:close	()V
    //   275: aload_0
    //   276: athrow
    //   277: astore_0
    //   278: return
    //   279: astore_3
    //   280: goto -5 -> 275
    //   283: astore 5
    //   285: aload 7
    //   287: astore 4
    //   289: aload_0
    //   290: astore_3
    //   291: aload 5
    //   293: astore_0
    //   294: goto -37 -> 257
    //   297: astore_3
    //   298: aload 7
    //   300: astore 5
    //   302: goto -77 -> 225
    //   305: astore_3
    //   306: aload 7
    //   308: astore 5
    //   310: goto -124 -> 186
    //   313: astore_0
    //   314: return
    //   315: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	316	0	paramContext	Context
    //   129	46	1	i	int
    //   36	2	2	bool	boolean
    //   32	240	3	localObject1	Object
    //   279	1	3	localIOException1	java.io.IOException
    //   290	1	3	localContext	Context
    //   297	1	3	localException	Exception
    //   305	1	3	localIOException2	java.io.IOException
    //   28	260	4	localObject2	Object
    //   24	217	5	localObject3	Object
    //   283	9	5	localObject4	Object
    //   300	9	5	localDataInputStream1	java.io.DataInputStream
    //   20	160	6	localObject5	Object
    //   13	294	7	localDataInputStream2	java.io.DataInputStream
    //   10	212	8	localObject6	Object
    //   16	167	9	localObject7	Object
    //   4	75	10	localObject8	Object
    //   7	60	11	localObject9	Object
    //   1	70	12	localObject10	Object
    // Exception table:
    //   from	to	target	type
    //   33	37	178	java/io/IOException
    //   81	92	178	java/io/IOException
    //   104	114	178	java/io/IOException
    //   201	206	215	java/io/IOException
    //   210	214	215	java/io/IOException
    //   33	37	217	java/lang/Exception
    //   81	92	217	java/lang/Exception
    //   104	114	217	java/lang/Exception
    //   240	245	254	java/io/IOException
    //   249	253	254	java/io/IOException
    //   33	37	256	finally
    //   81	92	256	finally
    //   104	114	256	finally
    //   192	196	256	finally
    //   231	235	256	finally
    //   147	152	277	java/io/IOException
    //   156	160	277	java/io/IOException
    //   262	267	279	java/io/IOException
    //   271	275	279	java/io/IOException
    //   114	128	283	finally
    //   130	142	283	finally
    //   161	171	283	finally
    //   114	128	297	java/lang/Exception
    //   130	142	297	java/lang/Exception
    //   161	171	297	java/lang/Exception
    //   114	128	305	java/io/IOException
    //   130	142	305	java/io/IOException
    //   161	171	305	java/io/IOException
    //   45	53	313	java/io/IOException
    //   57	65	313	java/io/IOException
  }
  
  private char[] subCharRangeArray(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    char[] arrayOfChar = new char[paramInt2 - paramInt1 + 1];
    int i = paramInt1;
    paramInt1 = 0;
    for (;;)
    {
      if (i > paramInt2) {
        return arrayOfChar;
      }
      arrayOfChar[paramInt1] = paramArrayOfChar[i];
      i += 1;
      paramInt1 += 1;
    }
  }
  
  private String[] subStringRangeArray(String[] paramArrayOfString, int paramInt1, int paramInt2)
  {
    String[] arrayOfString = new String[paramInt2 - paramInt1 + 1];
    int i = paramInt1;
    paramInt1 = 0;
    for (;;)
    {
      if (i > paramInt2) {
        return arrayOfString;
      }
      arrayOfString[paramInt1] = paramArrayOfString[i];
      i += 1;
      paramInt1 += 1;
    }
  }
  
  public int distinguish(char[] paramArrayOfChar1, int paramInt1, char[] paramArrayOfChar2, String[] paramArrayOfString, int paramInt2, int paramInt3)
  {
    if ((paramInt1 == 0) && ((paramArrayOfChar1[0] == paramArrayOfChar2[0]) || (paramArrayOfChar1[0] == paramArrayOfString[0].charAt(0)))) {
      if (paramArrayOfChar1.length != 1) {
        paramInt1 = distinguish(paramArrayOfChar1, 1, paramArrayOfChar2, paramArrayOfString, 0, 1);
      }
    }
    do
    {
      return paramInt1;
      return 0;
      if ((paramArrayOfString[paramInt2].length() <= paramInt3) || (paramInt1 >= paramArrayOfChar1.length) || ((paramArrayOfChar1[paramInt1] != paramArrayOfChar2[paramInt2]) && (paramArrayOfChar1[paramInt1] != paramArrayOfString[paramInt2].charAt(paramInt3)))) {
        break label138;
      }
      if (paramInt1 != paramArrayOfChar1.length - 1) {
        break;
      }
      paramInt1 = paramInt2;
    } while (distinguish(paramArrayOfChar1, paramArrayOfChar2, paramArrayOfString, paramInt2));
    return -1;
    return distinguish(paramArrayOfChar1, paramInt1 + 1, paramArrayOfChar2, paramArrayOfString, paramInt2, paramInt3 + 1);
    label138:
    if ((paramArrayOfString.length > paramInt2 + 1) && (paramInt1 < paramArrayOfChar1.length) && ((paramArrayOfChar1[paramInt1] == paramArrayOfChar2[(paramInt2 + 1)]) || (paramArrayOfChar1[paramInt1] == paramArrayOfString[(paramInt2 + 1)].charAt(0))))
    {
      if (paramInt1 == paramArrayOfChar1.length - 1)
      {
        if (distinguish(paramArrayOfChar1, paramArrayOfChar2, paramArrayOfString, paramInt2)) {
          return paramInt2 + 1;
        }
        return -1;
      }
      return distinguish(paramArrayOfChar1, paramInt1 + 1, paramArrayOfChar2, paramArrayOfString, paramInt2 + 1, 1);
    }
    if (paramArrayOfString.length > paramInt2 + 1) {
      paramInt3 = 1;
    }
    for (;;)
    {
      if (paramInt3 >= paramInt1) {
        return -1;
      }
      if (distinguish(paramArrayOfChar1, paramInt1 - paramInt3, paramArrayOfChar2, paramArrayOfString, paramInt2 + 1, 0) != -1) {
        return paramInt2 + 1;
      }
      paramInt3 += 1;
    }
  }
  
  public MatchedResult getMatchedResult(String paramString1, String paramString2)
  {
    MatchedResult localMatchedResult = new MatchedResult();
    localMatchedResult.start = -1;
    localMatchedResult.end = -1;
    if (!isLoad) {}
    label312:
    label387:
    for (;;)
    {
      return localMatchedResult;
      if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2)))
      {
        Object localObject1 = paramString1.toUpperCase();
        Object localObject2 = paramString2.toUpperCase();
        paramString1 = (String)localObject1;
        paramString2 = (String)localObject2;
        if (Math.min(((String)localObject1).length(), ((String)localObject2).length()) > 10)
        {
          paramString1 = ((String)localObject1).substring(0, 10);
          paramString2 = ((String)localObject2).substring(0, 10);
        }
        int i = paramString1.indexOf(paramString2);
        if (i >= 0)
        {
          localMatchedResult.start = i;
          localMatchedResult.end = (paramString2.length() + i - 1);
        }
        localObject1 = new char[paramString2.length()];
        i = 0;
        int j;
        if (i >= paramString2.length())
        {
          paramString2 = new char[paramString1.length()];
          localObject2 = new String[paramString1.length()];
          j = paramString1.length();
          i = 0;
          if (i < j) {
            break label312;
          }
          j = localObject1[0];
          i = 0;
        }
        for (;;)
        {
          if (i >= localObject2.length) {
            break label387;
          }
          int k = localObject2[i].charAt(0);
          int m = paramString2[i];
          if ((k == j) || (m == j))
          {
            k = distinguish((char[])localObject1, 0, subCharRangeArray(paramString2, i, paramString2.length - 1), subStringRangeArray((String[])localObject2, i, localObject2.length - 1), 0, 0);
            if (k != -1)
            {
              localMatchedResult.start = i;
              localMatchedResult.end = (i + k);
              return localMatchedResult;
              localObject1[i] = paramString2.charAt(i);
              i += 1;
              break;
              char c = paramString1.charAt(i);
              paramString2[i] = c;
              String str = getPinyin(c);
              if (!TextUtils.isEmpty(str)) {
                localObject2[i] = str.toUpperCase();
              }
              for (;;)
              {
                i += 1;
                break;
                localObject2[i] = c;
              }
            }
          }
          i += 1;
        }
      }
    }
  }
  
  public String getPinyin(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "";
    }
    if (!isLoad) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramString.length();
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        return localStringBuilder.toString();
      }
      localStringBuilder.append(getPinyin(paramString.charAt(i)));
      i += 1;
    }
  }
  
  public static class MatchedResult
  {
    public int end = -1;
    public int start = -1;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/register/mobile/PinyinUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */