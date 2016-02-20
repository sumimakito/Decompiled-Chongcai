package cn.apppark.mcd.util.jsonparse;

import cn.apppark.mcd.vo.base.BaseReturnVo;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.io.PrintStream;
import java.lang.reflect.Type;
import java.util.ArrayList;

public class JsonParserDyn
{
  public static ArrayList<? extends BaseReturnVo> parseItem2Vo(String paramString1, Type paramType, String paramString2)
  {
    try
    {
      paramString1 = (ArrayList)new Gson().fromJson((JsonArray)((JsonObject)new JsonParser().parse(paramString1)).get(paramString2), paramType);
      return paramString1;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
      System.out.println("json解析失败");
    }
    return null;
  }
  
  /* Error */
  public static ArrayList<? extends BaseReturnVo> parseJson2List(String paramString, Type paramType)
  {
    // Byte code:
    //   0: new 15	com/google/gson/Gson
    //   3: dup
    //   4: invokespecial 16	com/google/gson/Gson:<init>	()V
    //   7: astore_3
    //   8: new 18	com/google/gson/JsonParser
    //   11: dup
    //   12: invokespecial 19	com/google/gson/JsonParser:<init>	()V
    //   15: aload_0
    //   16: invokevirtual 23	com/google/gson/JsonParser:parse	(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    //   19: checkcast 25	com/google/gson/JsonObject
    //   22: astore 4
    //   24: aload 4
    //   26: ldc 59
    //   28: invokevirtual 28	com/google/gson/JsonObject:get	(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    //   31: astore_2
    //   32: aload_3
    //   33: aload 4
    //   35: ldc 61
    //   37: invokevirtual 28	com/google/gson/JsonObject:get	(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    //   40: checkcast 30	com/google/gson/JsonArray
    //   43: aload_1
    //   44: invokevirtual 34	com/google/gson/Gson:fromJson	(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    //   47: checkcast 36	java/util/ArrayList
    //   50: astore_1
    //   51: aload_1
    //   52: ifnull +25 -> 77
    //   55: aload_1
    //   56: invokevirtual 65	java/util/ArrayList:size	()I
    //   59: ifle +18 -> 77
    //   62: aload_1
    //   63: iconst_0
    //   64: invokevirtual 68	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   67: checkcast 70	cn/apppark/mcd/vo/base/BaseReturnVo
    //   70: aload_2
    //   71: invokevirtual 75	com/google/gson/JsonElement:getAsInt	()I
    //   74: invokevirtual 79	cn/apppark/mcd/vo/base/BaseReturnVo:setCount	(I)V
    //   77: aload_1
    //   78: areturn
    //   79: astore_2
    //   80: aconst_null
    //   81: astore_1
    //   82: aload_2
    //   83: invokevirtual 39	java/lang/Exception:printStackTrace	()V
    //   86: getstatic 45	java/lang/System:out	Ljava/io/PrintStream;
    //   89: new 81	java/lang/StringBuilder
    //   92: dup
    //   93: ldc 47
    //   95: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   98: aload_0
    //   99: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   102: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   105: invokevirtual 53	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   108: aload_1
    //   109: areturn
    //   110: astore_2
    //   111: goto -29 -> 82
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	114	0	paramString	String
    //   0	114	1	paramType	Type
    //   31	40	2	localJsonElement	com.google.gson.JsonElement
    //   79	4	2	localException1	Exception
    //   110	1	2	localException2	Exception
    //   7	26	3	localGson	Gson
    //   22	12	4	localJsonObject	JsonObject
    // Exception table:
    //   from	to	target	type
    //   0	51	79	java/lang/Exception
    //   55	77	110	java/lang/Exception
  }
  
  /* Error */
  public static ArrayList<? extends BaseReturnVo> parseJson2List(String paramString1, Type paramType, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: new 15	com/google/gson/Gson
    //   3: dup
    //   4: invokespecial 16	com/google/gson/Gson:<init>	()V
    //   7: astore 4
    //   9: new 18	com/google/gson/JsonParser
    //   12: dup
    //   13: invokespecial 19	com/google/gson/JsonParser:<init>	()V
    //   16: aload_0
    //   17: invokevirtual 23	com/google/gson/JsonParser:parse	(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    //   20: checkcast 25	com/google/gson/JsonObject
    //   23: astore_0
    //   24: aload_0
    //   25: aload_3
    //   26: invokevirtual 28	com/google/gson/JsonObject:get	(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    //   29: astore_3
    //   30: aload 4
    //   32: aload_0
    //   33: aload_2
    //   34: invokevirtual 28	com/google/gson/JsonObject:get	(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    //   37: checkcast 30	com/google/gson/JsonArray
    //   40: aload_1
    //   41: invokevirtual 34	com/google/gson/Gson:fromJson	(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    //   44: checkcast 36	java/util/ArrayList
    //   47: astore_0
    //   48: aload_0
    //   49: ifnull +25 -> 74
    //   52: aload_0
    //   53: invokevirtual 65	java/util/ArrayList:size	()I
    //   56: ifle +18 -> 74
    //   59: aload_0
    //   60: iconst_0
    //   61: invokevirtual 68	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   64: checkcast 70	cn/apppark/mcd/vo/base/BaseReturnVo
    //   67: aload_3
    //   68: invokevirtual 75	com/google/gson/JsonElement:getAsInt	()I
    //   71: invokevirtual 79	cn/apppark/mcd/vo/base/BaseReturnVo:setCount	(I)V
    //   74: aload_0
    //   75: areturn
    //   76: astore_1
    //   77: aconst_null
    //   78: astore_0
    //   79: aload_1
    //   80: invokevirtual 39	java/lang/Exception:printStackTrace	()V
    //   83: getstatic 45	java/lang/System:out	Ljava/io/PrintStream;
    //   86: ldc 47
    //   88: invokevirtual 53	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   91: aload_0
    //   92: areturn
    //   93: astore_1
    //   94: goto -15 -> 79
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	97	0	paramString1	String
    //   0	97	1	paramType	Type
    //   0	97	2	paramString2	String
    //   0	97	3	paramString3	String
    //   7	24	4	localGson	Gson
    // Exception table:
    //   from	to	target	type
    //   0	48	76	java/lang/Exception
    //   52	74	93	java/lang/Exception
  }
  
  public static BaseReturnVo parseJson2Vo(String paramString, Class<? extends BaseReturnVo> paramClass)
  {
    try
    {
      paramClass = (BaseReturnVo)new Gson().fromJson((JsonObject)new JsonParser().parse(paramString), paramClass);
      return paramClass;
    }
    catch (Exception paramClass)
    {
      paramClass.printStackTrace();
      System.out.println("json解析失败 " + paramString);
    }
    return null;
  }
  
  public static BaseReturnVo parseJson2Vo(String paramString1, Class<? extends BaseReturnVo> paramClass, String paramString2)
  {
    try
    {
      paramClass = (BaseReturnVo)new Gson().fromJson(((JsonObject)new JsonParser().parse(paramString1)).get(paramString2), paramClass);
      return paramClass;
    }
    catch (Exception paramClass)
    {
      paramClass.printStackTrace();
      System.out.println("json解析失败 " + paramString1);
    }
    return null;
  }
  
  public static BaseReturnVo parseJson2Vo(String paramString1, Class<? extends BaseReturnVo> paramClass, String paramString2, String paramString3)
  {
    try
    {
      paramClass = (BaseReturnVo)new Gson().fromJson(((JsonObject)new JsonParser().parse(paramString1)).getAsJsonObject(paramString2).get(paramString3), paramClass);
      return paramClass;
    }
    catch (Exception paramClass)
    {
      paramClass.printStackTrace();
      System.out.println("json解析失败 " + paramString1);
    }
    return null;
  }
  
  /* Error */
  public ArrayList<? extends BaseReturnVo> parseJson2ChildList(String paramString, Type paramType)
  {
    // Byte code:
    //   0: new 15	com/google/gson/Gson
    //   3: dup
    //   4: invokespecial 16	com/google/gson/Gson:<init>	()V
    //   7: astore 4
    //   9: new 18	com/google/gson/JsonParser
    //   12: dup
    //   13: invokespecial 19	com/google/gson/JsonParser:<init>	()V
    //   16: aload_1
    //   17: invokevirtual 23	com/google/gson/JsonParser:parse	(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    //   20: checkcast 25	com/google/gson/JsonObject
    //   23: astore 5
    //   25: aload 5
    //   27: ldc 59
    //   29: invokevirtual 28	com/google/gson/JsonObject:get	(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    //   32: astore_3
    //   33: aload 4
    //   35: aload 5
    //   37: ldc 61
    //   39: invokevirtual 28	com/google/gson/JsonObject:get	(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    //   42: checkcast 30	com/google/gson/JsonArray
    //   45: aload_2
    //   46: invokevirtual 34	com/google/gson/Gson:fromJson	(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    //   49: checkcast 36	java/util/ArrayList
    //   52: astore_2
    //   53: aload_2
    //   54: invokevirtual 65	java/util/ArrayList:size	()I
    //   57: ifle +18 -> 75
    //   60: aload_2
    //   61: iconst_0
    //   62: invokevirtual 68	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   65: checkcast 70	cn/apppark/mcd/vo/base/BaseReturnVo
    //   68: aload_3
    //   69: invokevirtual 75	com/google/gson/JsonElement:getAsInt	()I
    //   72: invokevirtual 79	cn/apppark/mcd/vo/base/BaseReturnVo:setCount	(I)V
    //   75: aload_2
    //   76: areturn
    //   77: astore_3
    //   78: aconst_null
    //   79: astore_2
    //   80: aload_3
    //   81: invokevirtual 39	java/lang/Exception:printStackTrace	()V
    //   84: getstatic 45	java/lang/System:out	Ljava/io/PrintStream;
    //   87: new 81	java/lang/StringBuilder
    //   90: dup
    //   91: ldc 47
    //   93: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   96: aload_1
    //   97: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   103: invokevirtual 53	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   106: aload_2
    //   107: areturn
    //   108: astore_3
    //   109: goto -29 -> 80
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	112	0	this	JsonParserDyn
    //   0	112	1	paramString	String
    //   0	112	2	paramType	Type
    //   32	37	3	localJsonElement	com.google.gson.JsonElement
    //   77	4	3	localException1	Exception
    //   108	1	3	localException2	Exception
    //   7	27	4	localGson	Gson
    //   23	13	5	localJsonObject	JsonObject
    // Exception table:
    //   from	to	target	type
    //   0	53	77	java/lang/Exception
    //   53	75	108	java/lang/Exception
  }
  
  public ArrayList<? extends BaseReturnVo> parseJson2ListNoItem(String paramString, Type paramType)
  {
    try
    {
      paramType = (ArrayList)new Gson().fromJson(paramString, paramType);
      return paramType;
    }
    catch (Exception paramType)
    {
      paramType.printStackTrace();
      System.out.println("json解析失败" + paramString);
    }
    return null;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/jsonparse/JsonParserDyn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */