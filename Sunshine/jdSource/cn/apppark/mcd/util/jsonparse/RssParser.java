package cn.apppark.mcd.util.jsonparse;

import android.util.Xml;
import cn.apppark.mcd.vo.dyn.DynRssItem5003Vo;
import java.io.InputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class RssParser
{
  public static ArrayList<DynRssItem5003Vo> parseRss(InputStream paramInputStream, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      XmlPullParser localXmlPullParser;
      try
      {
        localXmlPullParser = Xml.newPullParser();
        localXmlPullParser.setInput(paramInputStream, "utf-8");
        i = localXmlPullParser.getEventType();
        paramInputStream = null;
      }
      catch (XmlPullParserException paramInputStream)
      {
        System.out.println("exception:" + paramInputStream.getMessage());
        paramInputStream.printStackTrace();
        return localArrayList;
      }
      int i = localXmlPullParser.next();
      paramInputStream = paramString;
      break label326;
      if ("item".equals(localXmlPullParser.getName())) {
        paramInputStream = new DynRssItem5003Vo();
      }
      paramString = paramInputStream;
      if (paramInputStream != null) {
        if ("title".equals(localXmlPullParser.getName()))
        {
          paramInputStream.setTitle(localXmlPullParser.nextText());
          paramString = paramInputStream;
        }
        else if ("link".equals(localXmlPullParser.getName()))
        {
          paramInputStream.setLink(localXmlPullParser.nextText());
          paramString = paramInputStream;
        }
        else if ("source".equals(localXmlPullParser.getName()))
        {
          paramInputStream.setSource(localXmlPullParser.nextText());
          paramString = paramInputStream;
        }
        else if ("author".equals(localXmlPullParser.getName()))
        {
          paramInputStream.setAuthor(localXmlPullParser.nextText());
          paramString = paramInputStream;
        }
        else if ("pubDate".equals(localXmlPullParser.getName()))
        {
          paramInputStream.setPubDate(localXmlPullParser.nextText());
          paramString = paramInputStream;
        }
        else
        {
          paramString = paramInputStream;
          if ("description".equals(localXmlPullParser.getName()))
          {
            paramInputStream.setDescription(localXmlPullParser.nextText());
            paramString = paramInputStream;
            continue;
            paramString = paramInputStream;
            if ("item".equals(localXmlPullParser.getName()))
            {
              localArrayList.add(paramInputStream);
              paramString = paramInputStream;
              continue;
              label326:
              if (i != 1)
              {
                paramString = paramInputStream;
                switch (i)
                {
                }
                paramString = paramInputStream;
              }
            }
          }
        }
      }
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/jsonparse/RssParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */