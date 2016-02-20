package cn.apppark.mcd.vo.buy;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.io.PrintStream;
import java.lang.reflect.Type;
import java.util.ArrayList;

public class JsonParserBuy
{
  /* Error */
  public static ArrayList<? extends BuyBaseReturnVo> parseJson2ChildList(String paramString, Type paramType)
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
    //   26: ldc 27
    //   28: invokevirtual 30	com/google/gson/JsonObject:get	(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    //   31: astore_2
    //   32: aload_3
    //   33: aload 4
    //   35: ldc 32
    //   37: invokevirtual 30	com/google/gson/JsonObject:get	(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    //   40: checkcast 34	com/google/gson/JsonArray
    //   43: aload_1
    //   44: invokevirtual 38	com/google/gson/Gson:fromJson	(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    //   47: checkcast 40	java/util/ArrayList
    //   50: astore_1
    //   51: aload_1
    //   52: invokevirtual 44	java/util/ArrayList:size	()I
    //   55: ifle +18 -> 73
    //   58: aload_1
    //   59: iconst_0
    //   60: invokevirtual 47	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   63: checkcast 49	cn/apppark/mcd/vo/buy/BuyBaseReturnVo
    //   66: aload_2
    //   67: invokevirtual 54	com/google/gson/JsonElement:getAsInt	()I
    //   70: invokevirtual 58	cn/apppark/mcd/vo/buy/BuyBaseReturnVo:setCount	(I)V
    //   73: aload_1
    //   74: areturn
    //   75: astore_2
    //   76: aconst_null
    //   77: astore_1
    //   78: aload_2
    //   79: invokevirtual 61	java/lang/Exception:printStackTrace	()V
    //   82: getstatic 67	java/lang/System:out	Ljava/io/PrintStream;
    //   85: new 69	java/lang/StringBuilder
    //   88: dup
    //   89: ldc 71
    //   91: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   94: aload_0
    //   95: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: invokevirtual 82	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   101: invokevirtual 87	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   104: aload_1
    //   105: areturn
    //   106: astore_2
    //   107: goto -29 -> 78
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	110	0	paramString	String
    //   0	110	1	paramType	Type
    //   31	36	2	localJsonElement	com.google.gson.JsonElement
    //   75	4	2	localException1	Exception
    //   106	1	2	localException2	Exception
    //   7	26	3	localGson	Gson
    //   22	12	4	localJsonObject	JsonObject
    // Exception table:
    //   from	to	target	type
    //   0	51	75	java/lang/Exception
    //   51	73	106	java/lang/Exception
  }
  
  /* Error */
  public static ArrayList<? extends BuyBaseReturnVo> parseJson2List(String paramString, Type paramType)
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
    //   26: ldc 27
    //   28: invokevirtual 30	com/google/gson/JsonObject:get	(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    //   31: astore_2
    //   32: aload_3
    //   33: aload 4
    //   35: ldc 32
    //   37: invokevirtual 30	com/google/gson/JsonObject:get	(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    //   40: checkcast 34	com/google/gson/JsonArray
    //   43: aload_1
    //   44: invokevirtual 38	com/google/gson/Gson:fromJson	(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    //   47: checkcast 40	java/util/ArrayList
    //   50: astore_1
    //   51: aload_1
    //   52: ifnull +25 -> 77
    //   55: aload_1
    //   56: invokevirtual 44	java/util/ArrayList:size	()I
    //   59: ifle +18 -> 77
    //   62: aload_1
    //   63: iconst_0
    //   64: invokevirtual 47	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   67: checkcast 49	cn/apppark/mcd/vo/buy/BuyBaseReturnVo
    //   70: aload_2
    //   71: invokevirtual 54	com/google/gson/JsonElement:getAsInt	()I
    //   74: invokevirtual 58	cn/apppark/mcd/vo/buy/BuyBaseReturnVo:setCount	(I)V
    //   77: aload_1
    //   78: areturn
    //   79: astore_2
    //   80: aconst_null
    //   81: astore_1
    //   82: aload_2
    //   83: invokevirtual 61	java/lang/Exception:printStackTrace	()V
    //   86: getstatic 67	java/lang/System:out	Ljava/io/PrintStream;
    //   89: new 69	java/lang/StringBuilder
    //   92: dup
    //   93: ldc 71
    //   95: invokespecial 74	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   98: aload_0
    //   99: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   102: invokevirtual 82	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   105: invokevirtual 87	java/io/PrintStream:println	(Ljava/lang/String;)V
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
  
  public static ArrayList<? extends BuyBaseReturnVo> parseJson2ListNoItem(String paramString, Type paramType)
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
  
  public static BuyBaseReturnVo parseJson2Vo(String paramString, Class<? extends BuyBaseReturnVo> paramClass)
  {
    try
    {
      paramClass = (BuyBaseReturnVo)new Gson().fromJson((JsonObject)new JsonParser().parse(paramString), paramClass);
      return paramClass;
    }
    catch (Exception paramClass)
    {
      paramClass.printStackTrace();
      System.out.println("json解析失败 " + paramString);
    }
    return null;
  }
  
  public static BuyBaseReturnVo parseJson2VoByNode(String paramString1, Class<? extends BuyBaseReturnVo> paramClass, String paramString2)
  {
    try
    {
      paramClass = (BuyBaseReturnVo)new Gson().fromJson(((JsonObject)new JsonParser().parse(paramString1)).getAsJsonObject(paramString2), paramClass);
      return paramClass;
    }
    catch (Exception paramClass)
    {
      paramClass.printStackTrace();
      System.out.println("json解析失败 " + paramString1);
    }
    return null;
  }
  
  public static ArrayList<? extends BuyBaseReturnVo> parseToListByNode(String paramString1, Type paramType, String paramString2)
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
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/buy/JsonParserBuy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */