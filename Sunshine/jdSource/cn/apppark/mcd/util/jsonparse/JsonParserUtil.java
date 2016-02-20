package cn.apppark.mcd.util.jsonparse;

import cn.apppark.mcd.vo.base.BasePageItem2Vo;
import cn.apppark.mcd.vo.base.BaseVo;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.lang.reflect.Type;
import java.util.ArrayList;

public class JsonParserUtil
{
  public static BaseVo JsonElement2Obj(JsonElement paramJsonElement, Class<? extends BaseVo> paramClass)
  {
    return (BaseVo)new Gson().fromJson(paramJsonElement, paramClass);
  }
  
  public static ArrayList<? extends BasePageItem2Vo> parseElement2ListDirect(JsonElement paramJsonElement, Type paramType)
  {
    try
    {
      paramJsonElement = (ArrayList)new Gson().fromJson(paramJsonElement.getAsJsonArray(), paramType);
      return paramJsonElement;
    }
    catch (Exception paramJsonElement)
    {
      paramJsonElement.printStackTrace();
      System.out.println("parseJsonElement2List 解析失败" + paramJsonElement.getMessage());
    }
    return null;
  }
  
  public static JsonArray parseJson2JsonArray(String paramString)
  {
    try
    {
      paramString = (JsonArray)((JsonObject)new JsonParser().parse(paramString)).get("item");
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
      System.out.println("parseJson2JsonArray 解析失败" + paramString.getMessage());
    }
    return null;
  }
  
  public static ArrayList<? extends BaseVo> parseJson2List(String paramString1, Type paramType, String paramString2)
  {
    try
    {
      paramString1 = (ArrayList)new Gson().fromJson((JsonArray)((JsonObject)new JsonParser().parse(paramString1)).get(paramString2), paramType);
      return paramString1;
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
      System.out.println("parseListViewJsonElement2List 解析失败 " + paramString1.getMessage());
    }
    return null;
  }
  
  public static BaseVo parseJson2Vo(InputStream paramInputStream, Class<? extends BaseVo> paramClass)
  {
    try
    {
      paramInputStream = (BaseVo)new Gson().fromJson(new InputStreamReader(paramInputStream), paramClass);
      return paramInputStream;
    }
    catch (Exception paramInputStream)
    {
      paramInputStream.printStackTrace();
      System.out.println("parseJson2Vo json解析失败" + paramInputStream.getMessage());
    }
    return null;
  }
  
  public static BaseVo parseJson2Vo(String paramString, Class<? extends BaseVo> paramClass)
  {
    try
    {
      paramString = (BaseVo)new Gson().fromJson((JsonObject)new JsonParser().parse(paramString), paramClass);
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
      System.out.println("parseJson2Vo json解析失败" + paramString.getMessage());
    }
    return null;
  }
  
  public static BaseVo parseJson2Vo(String paramString1, Class<? extends BaseVo> paramClass, String paramString2)
  {
    try
    {
      paramClass = (BaseVo)new Gson().fromJson(((JsonObject)new JsonParser().parse(paramString1)).get(paramString2), paramClass);
      return paramClass;
    }
    catch (Exception paramClass)
    {
      paramClass.printStackTrace();
      System.out.println("json解析失败 " + paramString1);
    }
    return null;
  }
  
  public static ArrayList<? extends BasePageItem2Vo> parseJsonElement2List(JsonElement paramJsonElement, Type paramType)
  {
    try
    {
      paramJsonElement = (ArrayList)new Gson().fromJson((JsonArray)((JsonObject)paramJsonElement).get("item"), paramType);
      return paramJsonElement;
    }
    catch (Exception paramJsonElement)
    {
      paramJsonElement.printStackTrace();
      System.out.println("parseJsonElement2List 解析失败" + paramJsonElement.getMessage());
    }
    return null;
  }
  
  public static ArrayList<? extends BasePageItem2Vo> parseJsonElement2ListByNode(JsonElement paramJsonElement, Type paramType, String paramString)
  {
    try
    {
      paramJsonElement = (ArrayList)new Gson().fromJson((JsonArray)((JsonObject)paramJsonElement).get(paramString), paramType);
      return paramJsonElement;
    }
    catch (Exception paramJsonElement)
    {
      paramJsonElement.printStackTrace();
      System.out.println("parseJsonElement2List 解析失败" + paramJsonElement.getMessage());
    }
    return null;
  }
  
  public static ArrayList<String> parseJsonStr2List(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    paramString = (JsonArray)((JsonObject)new JsonParser().parse(paramString)).get("items");
    int i = 0;
    while (i < paramString.size())
    {
      localArrayList.add(paramString.get(i).getAsString());
      i += 1;
    }
    return localArrayList;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/jsonparse/JsonParserUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */