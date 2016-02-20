package cn.apppark.vertify.activity.tieba;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.ColorDrawable;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.vertify.adapter.TEmojiCellAdapter;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import rp;

public class TBaseParam
{
  public static final String TB_DOMAIN = "http://ws.ckj.hqch.com";
  public static String TB_ID;
  public static final String TB_IP = "http://www.apppark.cn";
  public static final String TB_SENDCOMMENT = "http://www.apppark.cn/servlet/sendComment";
  public static final String TB_SENDREPORT = "http://www.apppark.cn/servlet/sendReport";
  public static final String TB_SENDTOPIC = "http://www.apppark.cn/servlet/sendTopic";
  public static final String TB_WS = "http://www.apppark.cn/tieba.ws";
  public static String TOPMENU_BGCOLOR = "5046f8";
  public static String[] emojiStrs = { "#(呵呵)", "#(哈哈)", "#(吐舌)", "#(啊)", "#(酷)", "#(怒)", "#(吐)", "#(汗)", "#(泪)", "#(黑线)", "#(鄙视)", "#(不高兴)", "#(真棒)", "#(钱)", "#(疑问)", "#(阴险)", "#(吐)", "#(咦)", "#(委屈)", "#(花心)", "#(呼~)", "#(笑眼)", "#(冷)", "#(太开心)", "#(滑稽)", "#(勉强)", "#(狂汗)", "#(乖)", "#(睡觉)", "#(惊哭)", "#(升起)", "#(惊讶)", "#(喷)", "#(爱心)", "#(心碎)", "#(玫瑰)", "#(礼物)", "#(彩虹)", "#(星星月亮)", "#(太阳)", "#(钱币)", "#(灯泡)", "#(茶杯)", "#(蛋糕)", "#(音乐)", "#(haha)", "#(胜利)", "#(大拇指)", "#(弱)", "#(OK)" };
  public static int[] emojis;
  
  static
  {
    TB_ID = "1";
    emojis = new int[] { 2130837680, 2130837691, 2130837702, 2130837713, 2130837724, 2130837726, 2130837727, 2130837728, 2130837729, 2130837681, 2130837682, 2130837683, 2130837684, 2130837685, 2130837686, 2130837687, 2130837688, 2130837689, 2130837690, 2130837692, 2130837693, 2130837694, 2130837695, 2130837696, 2130837697, 2130837698, 2130837699, 2130837700, 2130837701, 2130837703, 2130837704, 2130837705, 2130837706, 2130837707, 2130837708, 2130837709, 2130837710, 2130837711, 2130837712, 2130837714, 2130837715, 2130837716, 2130837717, 2130837718, 2130837719, 2130837720, 2130837721, 2130837722, 2130837723 };
  }
  
  public static void changePoint(int paramInt, ArrayList<ImageView> paramArrayList)
  {
    int i = 0;
    if (i < paramArrayList.size())
    {
      if (paramInt == i) {
        ((ImageView)paramArrayList.get(i)).setBackgroundResource(2130837791);
      }
      for (;;)
      {
        i += 1;
        break;
        ((ImageView)paramArrayList.get(i)).setBackgroundResource(2130837790);
      }
    }
  }
  
  public static void delEmjo(EditText paramEditText)
  {
    int i = paramEditText.getSelectionStart();
    String str;
    if (i > 0)
    {
      str = paramEditText.getText().toString();
      if (!TextUtils.isEmpty(str))
      {
        str = str.substring(0, i);
        int j = str.lastIndexOf("#(");
        if (j == -1) {
          break label91;
        }
        if (!str.subSequence(j, i).toString().endsWith(")")) {
          break label73;
        }
        paramEditText.getEditableText().delete(j, i);
      }
    }
    return;
    label73:
    paramEditText.getEditableText().delete(str.length() - 1, i);
    return;
    label91:
    paramEditText.getEditableText().delete(str.length() - 1, i);
  }
  
  public static int[] getEmoji(int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = new int[paramInt2];
    int j = paramInt1 * paramInt2;
    int i = 0;
    paramInt1 = j;
    while ((paramInt1 < j + paramInt2) && (paramInt1 < emojis.length))
    {
      arrayOfInt[i] = emojis[paramInt1];
      i += 1;
      paramInt1 += 1;
    }
    return arrayOfInt;
  }
  
  public static String[] getEmojiStr(int paramInt1, int paramInt2)
  {
    String[] arrayOfString = new String[paramInt2];
    int j = paramInt1 * paramInt2;
    int i = 0;
    paramInt1 = j;
    while ((paramInt1 < j + paramInt2) && (paramInt1 < emojiStrs.length))
    {
      arrayOfString[i] = emojiStrs[paramInt1];
      i += 1;
      paramInt1 += 1;
    }
    return arrayOfString;
  }
  
  public static ImageSpan getFaceImgSpan(Context paramContext, int paramInt1, int paramInt2, int paramInt3)
  {
    return new ImageSpan(paramContext, Bitmap.createScaledBitmap(BitmapFactory.decodeResource(paramContext.getResources(), paramInt1), PublicUtil.dip2px(paramInt2), PublicUtil.dip2px(paramInt3), true), 1);
  }
  
  public static SpannableString getSpanStr(Context paramContext, String paramString, int paramInt)
  {
    if (paramString == null) {
      return new SpannableString("");
    }
    SpannableString localSpannableString = new SpannableString(paramString);
    localSpannableString.setSpan(new ForegroundColorSpan(paramInt), 0, paramString.length(), 33);
    paramString = Pattern.compile("#\\((.)*?\\)", 2).matcher(paramString);
    label143:
    while (paramString.find())
    {
      int i = paramString.start();
      int j = paramString.start();
      int k = paramString.group().length();
      paramInt = 0;
      for (;;)
      {
        if (paramInt >= emojiStrs.length) {
          break label143;
        }
        if (emojiStrs[paramInt].equals(paramString.group()))
        {
          localSpannableString.setSpan(getFaceImgSpan(paramContext, emojis[paramInt], 20, 20), i, k + j, 17);
          break;
        }
        paramInt += 1;
      }
    }
    return localSpannableString;
  }
  
  public static SpannableString getSpanStrEndPic(Context paramContext, String paramString, int paramInt1, int paramInt2)
  {
    paramContext = getFaceImgSpan(paramContext, paramInt1, 25, 16);
    paramString = paramString + "  floor:";
    SpannableString localSpannableString = new SpannableString(paramString);
    localSpannableString.setSpan(new ForegroundColorSpan(paramInt2), 0, paramString.length(), 33);
    localSpannableString.setSpan(paramContext, paramString.length() - 6, paramString.length() - 1, 33);
    return localSpannableString;
  }
  
  public static SpannableString getSpanStrStartPic(Context paramContext, String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramContext = getFaceImgSpan(paramContext, paramInt1, paramInt3, paramInt4);
    paramString = "# " + paramString;
    SpannableString localSpannableString = new SpannableString(paramString);
    localSpannableString.setSpan(new ForegroundColorSpan(paramInt2), 0, paramString.length(), 17);
    localSpannableString.setSpan(paramContext, 0, 1, 33);
    return localSpannableString;
  }
  
  public static ArrayList<View> initFaceData(Context paramContext, EditText paramEditText)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    int i = 0;
    while (i < 3)
    {
      GridView localGridView = new GridView(paramContext);
      TEmojiCellAdapter localTEmojiCellAdapter = new TEmojiCellAdapter(paramContext, getEmoji(i, 21), getEmojiStr(i, 21));
      localGridView.setAdapter(localTEmojiCellAdapter);
      localArrayList2.add(localTEmojiCellAdapter);
      localGridView.setNumColumns(7);
      localGridView.setBackgroundColor(0);
      localGridView.setHorizontalSpacing(1);
      localGridView.setVerticalSpacing(1);
      localGridView.setStretchMode(2);
      localGridView.setCacheColorHint(0);
      localGridView.setPadding(5, 0, 5, 0);
      localGridView.setSelector(new ColorDrawable(0));
      localGridView.setOnItemClickListener(new rp(paramContext, paramEditText, localTEmojiCellAdapter));
      localArrayList1.add(localGridView);
      i += 1;
    }
    return localArrayList1;
  }
  
  public static ArrayList<ImageView> initPoint(Context paramContext, LinearLayout paramLinearLayout, ArrayList<View> paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramArrayList.size())
    {
      ImageView localImageView = new ImageView(paramContext);
      localImageView.setBackgroundResource(2130837790);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(new ViewGroup.LayoutParams(-2, -2));
      localLayoutParams.leftMargin = 10;
      localLayoutParams.rightMargin = 10;
      localLayoutParams.width = 10;
      localLayoutParams.height = 10;
      paramLinearLayout.addView(localImageView, localLayoutParams);
      if (i == 0) {
        localImageView.setBackgroundResource(2130837791);
      }
      localArrayList.add(localImageView);
      i += 1;
    }
    return localArrayList;
  }
  
  public static void setFace(Context paramContext, TextView paramTextView, int paramInt, String paramString)
  {
    try
    {
      paramContext = getFaceImgSpan(paramContext, paramInt, 20, 20);
      SpannableString localSpannableString = new SpannableString(paramString);
      localSpannableString.setSpan(paramContext, 0, paramString.length(), 33);
      paramTextView.append(localSpannableString);
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/tieba/TBaseParam.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */