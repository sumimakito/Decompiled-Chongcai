package com.tencent.mm.sdk.contact;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.platformtools.LVBuffer;
import com.tencent.mm.sdk.platformtools.Log;
import com.tencent.mm.sdk.platformtools.Util;
import com.tencent.mm.sdk.storage.MAutoDBItem;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

public class RContact
  extends MAutoDBItem
{
  public static final String[] COLUMNS;
  public static final String COL_ALIAS = "alias";
  public static final String COL_CONREMARK = "conRemark";
  public static final String COL_CONREMARK_PYFULL = "conRemarkPYFull";
  public static final String COL_CONREMARK_PYSHORT = "conRemarkPYShort";
  public static final String COL_DOMAINLIST = "domainList";
  public static final int COL_ID_INVALID_VALUE = -1;
  public static final String COL_NICKNAME = "nickname";
  public static final String COL_PYINITIAL = "pyInitial";
  public static final String COL_QUANPIN = "quanPin";
  public static final String COL_SHOWHEAD = "showHead";
  public static final String COL_TYPE = "type";
  public static final String COL_USERNAME = "username";
  public static final String COL_VERIFY_FLAG = "verifyFlag";
  public static final String COL_WEIBOFLAG = "weiboFlag";
  public static final String COL_WEIBONICKNAME = "weiboNickname";
  public static final int DEL_CONTACT_MSG = -1;
  public static final String FAVOUR_CONTACT_SHOW_HEAD_CHAR = "$";
  public static final int FAVOUR_CONTACT_SHOW_HEAD_CODE = 32;
  private static Map<String, String> M = new HashMap();
  public static final int MM_CONTACTFLAG_ALL = 127;
  public static final int MM_CONTACTFLAG_BLACKLISTCONTACT = 8;
  public static final int MM_CONTACTFLAG_CHATCONTACT = 2;
  public static final int MM_CONTACTFLAG_CHATROOMCONTACT = 4;
  public static final int MM_CONTACTFLAG_CONTACT = 1;
  public static final int MM_CONTACTFLAG_DOMAINCONTACT = 16;
  public static final int MM_CONTACTFLAG_FAVOURCONTACT = 64;
  public static final int MM_CONTACTFLAG_HIDECONTACT = 32;
  public static final int MM_CONTACTFLAG_NULL = 0;
  public static final int MM_CONTACTIMGFLAG_HAS_HEADIMG = 3;
  public static final int MM_CONTACTIMGFLAG_HAS_NO_HEADIMG = 4;
  public static final int MM_CONTACTIMGFLAG_LOCAL_EXIST = 153;
  public static final int MM_CONTACTIMGFLAG_MODIFY = 2;
  public static final int MM_CONTACTIMGFLAG_NOTMODIFY = 1;
  public static final int MM_CONTACT_BOTTLE = 5;
  public static final int MM_CONTACT_CHATROOM = 2;
  public static final int MM_CONTACT_EMAIL = 3;
  public static final int MM_CONTACT_QQ = 4;
  public static final int MM_CONTACT_QQMICROBLOG = 1;
  public static final int MM_CONTACT_WEIXIN = 0;
  public static final int MM_SEX_FEMALE = 2;
  public static final int MM_SEX_MALE = 1;
  public static final int MM_SEX_UNKNOWN = 0;
  private static Map<String, String> N = new HashMap();
  public static final int NOT_IN_CHAT_LIST = 0;
  protected static Field[] p;
  private String A;
  private int B;
  private int C;
  private String D;
  private String E;
  private String F;
  private String G;
  private int H;
  private int I;
  private String J;
  private String K;
  private String L;
  public long contactId;
  public String field_alias;
  public String field_conRemark;
  public String field_conRemarkPYFull;
  public String field_conRemarkPYShort;
  public String field_domainList;
  public byte[] field_lvbuff;
  public String field_nickname;
  public String field_pyInitial;
  public String field_quanPin;
  public int field_showHead;
  public int field_type;
  public String field_username;
  public int field_verifyFlag;
  public int field_weiboFlag;
  public String field_weiboNickname;
  private int h;
  private int q;
  private int r;
  private String s;
  private long u;
  private String v;
  private String w;
  private int x;
  private int y;
  private String z;
  
  static
  {
    Field[] arrayOfField = MAutoDBItem.getValidFields(RContact.class);
    p = arrayOfField;
    COLUMNS = MAutoDBItem.getFullColumns(arrayOfField);
  }
  
  public RContact()
  {
    reset();
  }
  
  public RContact(String paramString)
  {
    this();
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    this.field_username = str;
  }
  
  private byte[] a()
  {
    try
    {
      Object localObject = new LVBuffer();
      ((LVBuffer)localObject).initBuild();
      ((LVBuffer)localObject).putInt(this.q);
      ((LVBuffer)localObject).putInt(this.r);
      ((LVBuffer)localObject).putString(this.s);
      ((LVBuffer)localObject).putLong(this.u);
      ((LVBuffer)localObject).putInt(this.h);
      ((LVBuffer)localObject).putString(this.v);
      ((LVBuffer)localObject).putString(this.w);
      ((LVBuffer)localObject).putInt(this.x);
      ((LVBuffer)localObject).putInt(this.y);
      ((LVBuffer)localObject).putString(this.z);
      ((LVBuffer)localObject).putString(this.A);
      ((LVBuffer)localObject).putInt(this.B);
      ((LVBuffer)localObject).putInt(this.C);
      ((LVBuffer)localObject).putString(this.D);
      ((LVBuffer)localObject).putString(this.E);
      ((LVBuffer)localObject).putString(this.F);
      ((LVBuffer)localObject).putString(this.G);
      ((LVBuffer)localObject).putInt(this.H);
      ((LVBuffer)localObject).putInt(this.I);
      ((LVBuffer)localObject).putString(this.J);
      ((LVBuffer)localObject).putInt(this.field_verifyFlag);
      ((LVBuffer)localObject).putString(this.K);
      ((LVBuffer)localObject).putString(this.L);
      localObject = ((LVBuffer)localObject).buildFinish();
      return (byte[])localObject;
    }
    catch (Exception localException)
    {
      Log.e("MicroMsg.Contact", "get value failed");
      localException.printStackTrace();
    }
    return null;
  }
  
  public static String formatDisplayNick(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    do
    {
      return str;
      if (paramString.toLowerCase().endsWith("@t.qq.com")) {
        return "@" + paramString.replace("@t.qq.com", "");
      }
      str = paramString;
    } while (!paramString.toLowerCase().endsWith("@qqim"));
    return paramString.replace("@qqim", "");
  }
  
  public static int getBlackListContactBit()
  {
    return 8;
  }
  
  public static int getContactBit()
  {
    return 1;
  }
  
  public static int getDomainContactBit()
  {
    return 16;
  }
  
  public static int getHiddenContactBit()
  {
    return 32;
  }
  
  public static boolean isContact(int paramInt)
  {
    return (paramInt & 0x1) != 0;
  }
  
  private static boolean isLetter(char paramChar)
  {
    return ((paramChar >= 'A') && (paramChar <= 'Z')) || ((paramChar >= 'a') && (paramChar <= 'z'));
  }
  
  public static void setHardCodeAliasMaps(Map<String, String> paramMap)
  {
    N = paramMap;
  }
  
  public static void setHardCodeNickMaps(Map<String, String> paramMap)
  {
    M = paramMap;
  }
  
  public int calculateShowHead()
  {
    int j = 32;
    int i;
    if ((this.field_conRemarkPYShort != null) && (!this.field_conRemarkPYShort.equals("")))
    {
      i = this.field_conRemarkPYShort.charAt(0);
      if ((i < 97) || (i > 122)) {
        break label240;
      }
      j = (char)(i - 32);
    }
    label240:
    do
    {
      return j;
      if ((this.field_conRemarkPYFull != null) && (!this.field_conRemarkPYFull.equals("")))
      {
        i = this.field_conRemarkPYFull.charAt(0);
        break;
      }
      if ((this.field_pyInitial != null) && (!this.field_pyInitial.equals("")))
      {
        i = this.field_pyInitial.charAt(0);
        break;
      }
      if ((this.field_quanPin != null) && (!this.field_quanPin.equals("")))
      {
        i = this.field_quanPin.charAt(0);
        break;
      }
      if ((this.field_nickname != null) && (!this.field_nickname.equals("")) && (isLetter(this.field_nickname.charAt(0))))
      {
        i = this.field_nickname.charAt(0);
        break;
      }
      i = j;
      if (this.field_username == null) {
        break;
      }
      i = j;
      if (this.field_username.equals("")) {
        break;
      }
      i = j;
      if (!isLetter(this.field_username.charAt(0))) {
        break;
      }
      i = this.field_username.charAt(0);
      break;
      if (i < 65) {
        break label254;
      }
      j = i;
    } while (i <= 90);
    label254:
    return 123;
  }
  
  public void convertFrom(Cursor paramCursor)
  {
    super.convertFrom(paramCursor);
    this.contactId = ((int)paramCursor.getLong(paramCursor.getColumnCount() - 1));
    paramCursor = this.field_lvbuff;
    try
    {
      LVBuffer localLVBuffer = new LVBuffer();
      int i = localLVBuffer.initParse(paramCursor);
      if (i != 0)
      {
        Log.e("MicroMsg.Contact", "parse LVBuffer error:" + i);
        return;
      }
      this.q = localLVBuffer.getInt();
      this.r = localLVBuffer.getInt();
      this.s = localLVBuffer.getString();
      this.u = localLVBuffer.getLong();
      this.h = localLVBuffer.getInt();
      this.v = localLVBuffer.getString();
      this.w = localLVBuffer.getString();
      this.x = localLVBuffer.getInt();
      this.y = localLVBuffer.getInt();
      this.z = localLVBuffer.getString();
      this.A = localLVBuffer.getString();
      this.B = localLVBuffer.getInt();
      this.C = localLVBuffer.getInt();
      this.D = localLVBuffer.getString();
      this.E = localLVBuffer.getString();
      this.F = localLVBuffer.getString();
      this.G = localLVBuffer.getString();
      this.H = localLVBuffer.getInt();
      this.I = localLVBuffer.getInt();
      this.J = localLVBuffer.getString();
      this.field_verifyFlag = localLVBuffer.getInt();
      this.K = localLVBuffer.getString();
      if (!localLVBuffer.checkGetFinish())
      {
        this.L = localLVBuffer.getString();
        return;
      }
    }
    catch (Exception paramCursor)
    {
      Log.e("MicroMsg.Contact", "get value failed");
      paramCursor.printStackTrace();
    }
  }
  
  public ContentValues convertTo()
  {
    this.field_lvbuff = a();
    return super.convertTo();
  }
  
  public Field[] fields()
  {
    return p;
  }
  
  public String getAlias()
  {
    String str2 = (String)N.get(this.field_username);
    String str1 = str2;
    if (str2 == null) {
      str1 = this.field_alias;
    }
    return str1;
  }
  
  public int getChatroomNotify()
  {
    return this.B;
  }
  
  public String getCity()
  {
    return this.F;
  }
  
  public String getConQQMBlog()
  {
    return this.A;
  }
  
  public String getConRemark()
  {
    return this.field_conRemark;
  }
  
  public String getConRemarkPYFull()
  {
    return this.field_conRemarkPYFull;
  }
  
  public String getConRemarkPYShort()
  {
    return this.field_conRemarkPYShort;
  }
  
  public String getConSMBlog()
  {
    return this.z;
  }
  
  public int getConType()
  {
    return this.y;
  }
  
  public int getContactID()
  {
    return (int)this.contactId;
  }
  
  public String getDisplayNick()
  {
    String str = (String)M.get(this.field_username);
    if (str != null) {
      return str;
    }
    if ((this.field_nickname == null) || (this.field_nickname.length() <= 0)) {
      return getDisplayUser();
    }
    return this.field_nickname;
  }
  
  public String getDisplayRemark()
  {
    if ((this.field_conRemark != null) && (!this.field_conRemark.trim().equals(""))) {
      return this.field_conRemark;
    }
    return getDisplayNick();
  }
  
  public String getDisplayUser()
  {
    Object localObject = getAlias();
    if (!Util.isNullOrNil((String)localObject)) {}
    String str;
    do
    {
      return (String)localObject;
      str = formatDisplayNick(this.field_username);
      if (str == null) {
        break;
      }
      localObject = str;
    } while (str.length() != 0);
    return this.field_username;
  }
  
  public String getDistance()
  {
    return this.G;
  }
  
  public String getDomainList()
  {
    return this.field_domainList;
  }
  
  public String getEmail()
  {
    return this.v;
  }
  
  public long getFaceBookId()
  {
    return this.u;
  }
  
  public String getFaceBookUsername()
  {
    return this.s;
  }
  
  public int getFromType()
  {
    return this.H;
  }
  
  public int getImgFlag()
  {
    return this.q;
  }
  
  public String getMobile()
  {
    return this.w;
  }
  
  public String getNickname()
  {
    return this.field_nickname;
  }
  
  public int getPersonalCard()
  {
    return this.C;
  }
  
  public String getProvince()
  {
    return this.E;
  }
  
  public String getPyInitial()
  {
    if ((this.field_pyInitial == null) || (this.field_pyInitial.length() < 0)) {
      return getQuanPin();
    }
    return this.field_pyInitial;
  }
  
  public String getQuanPin()
  {
    if ((this.field_quanPin == null) || (this.field_quanPin.length() < 0)) {
      return getNickname();
    }
    return this.field_quanPin;
  }
  
  public String getRegionCode()
  {
    return this.L;
  }
  
  public int getSex()
  {
    return this.r;
  }
  
  public int getShowFlag()
  {
    return this.x;
  }
  
  public int getShowHead()
  {
    return this.field_showHead;
  }
  
  public String getSignature()
  {
    return this.D;
  }
  
  public int getSource()
  {
    return this.I;
  }
  
  public int getType()
  {
    return this.field_type;
  }
  
  public int getUin()
  {
    return this.h;
  }
  
  public String getUsername()
  {
    return this.field_username;
  }
  
  public int getVerifyFlag()
  {
    return this.field_verifyFlag;
  }
  
  public String getVerifyInfo()
  {
    return this.K;
  }
  
  public String getWeibo()
  {
    return this.J;
  }
  
  public int getWeiboFlag()
  {
    return this.field_weiboFlag;
  }
  
  public String getWeiboNickName()
  {
    return this.field_weiboNickname;
  }
  
  public boolean isBlackListContact()
  {
    return (this.field_type & 0x8) != 0;
  }
  
  public boolean isChatContact()
  {
    return (this.field_type & 0x2) != 0;
  }
  
  public boolean isChatRoomContact()
  {
    return (this.field_type & 0x4) != 0;
  }
  
  public boolean isContact()
  {
    return isContact(this.field_type);
  }
  
  public boolean isDomainContact()
  {
    return (this.field_type & 0x10) != 0;
  }
  
  public boolean isFavourContact()
  {
    return (this.field_type & 0x40) != 0;
  }
  
  public boolean isHidden()
  {
    return (this.field_type & 0x20) != 0;
  }
  
  public boolean isImgLocalExist()
  {
    return 153 == this.q;
  }
  
  public void reset()
  {
    this.field_username = "";
    this.field_nickname = "";
    this.field_pyInitial = "";
    this.field_quanPin = "";
    this.field_alias = "";
    this.field_conRemark = "";
    this.field_conRemarkPYShort = "";
    this.field_conRemarkPYFull = "";
    this.field_domainList = "";
    this.field_weiboFlag = 0;
    this.field_weiboNickname = "";
    this.field_showHead = 0;
    this.field_type = 0;
    this.field_verifyFlag = 0;
    this.r = 0;
    this.G = "";
    this.H = 0;
    this.h = 0;
    this.v = "";
    this.w = "";
    this.x = 0;
    this.y = 0;
    this.z = "";
    this.A = "";
    this.B = 1;
    this.q = 0;
    this.C = 0;
    this.D = "";
    this.E = "";
    this.F = "";
    this.I = 0;
    this.K = "";
    this.J = "";
    this.u = 0L;
    this.s = "";
    this.L = "";
  }
  
  public void setAlias(String paramString)
  {
    this.field_alias = paramString;
  }
  
  public void setBlackList()
  {
    this.field_type |= 0x8;
  }
  
  public void setChatContact()
  {
    this.field_type |= 0x2;
  }
  
  public void setChatroomContact()
  {
    this.field_type |= 0x4;
  }
  
  public void setChatroomNotify(int paramInt)
  {
    this.B = paramInt;
  }
  
  public void setCity(String paramString)
  {
    this.F = paramString;
  }
  
  public void setConQQMBlog(String paramString)
  {
    this.A = paramString;
  }
  
  public void setConRemark(String paramString)
  {
    this.field_conRemark = paramString;
  }
  
  public void setConRemarkPYFull(String paramString)
  {
    this.field_conRemarkPYFull = paramString;
  }
  
  public void setConRemarkPYShort(String paramString)
  {
    this.field_conRemarkPYShort = paramString;
  }
  
  public void setConSMBlog(String paramString)
  {
    this.z = paramString;
  }
  
  public void setConType(int paramInt)
  {
    this.y = paramInt;
  }
  
  public void setContact()
  {
    this.field_type |= 0x1;
  }
  
  public void setDistance(String paramString)
  {
    this.G = paramString;
  }
  
  public void setDomainList(String paramString)
  {
    this.field_domainList = paramString;
  }
  
  public void setEmail(String paramString)
  {
    this.v = paramString;
  }
  
  public void setFaceBookId(long paramLong)
  {
    this.u = paramLong;
  }
  
  public void setFaceBookUsername(String paramString)
  {
    this.s = paramString;
  }
  
  public void setFavour()
  {
    this.field_type |= 0x40;
  }
  
  public void setFromType(int paramInt)
  {
    this.H = paramInt;
  }
  
  public void setHidden()
  {
    this.field_type |= 0x20;
  }
  
  public void setImgFlag(int paramInt)
  {
    this.q = paramInt;
  }
  
  public void setMobile(String paramString)
  {
    this.w = paramString;
  }
  
  public void setNickname(String paramString)
  {
    this.field_nickname = paramString;
  }
  
  public void setNullContact()
  {
    this.field_type = 0;
  }
  
  public void setPersonalCard(int paramInt)
  {
    this.C = paramInt;
  }
  
  public void setProvince(String paramString)
  {
    this.E = paramString;
  }
  
  public void setPyInitial(String paramString)
  {
    this.field_pyInitial = paramString;
  }
  
  public void setQuanPin(String paramString)
  {
    this.field_quanPin = paramString;
  }
  
  public void setRegionCode(String paramString)
  {
    this.L = paramString;
  }
  
  public void setSex(int paramInt)
  {
    this.r = paramInt;
  }
  
  public void setShowFlag(int paramInt)
  {
    this.x = paramInt;
  }
  
  public void setShowHead(int paramInt)
  {
    this.field_showHead = paramInt;
  }
  
  public void setSignature(String paramString)
  {
    this.D = paramString;
  }
  
  public void setSource(int paramInt)
  {
    this.I = paramInt;
  }
  
  public void setType(int paramInt)
  {
    this.field_type = paramInt;
  }
  
  public void setUin(int paramInt)
  {
    this.h = paramInt;
  }
  
  public void setUsername(String paramString)
  {
    this.field_username = paramString;
  }
  
  public void setVerifyFlag(int paramInt)
  {
    this.field_verifyFlag = paramInt;
  }
  
  public void setVerifyInfo(String paramString)
  {
    this.K = paramString;
  }
  
  public void setWeibo(String paramString)
  {
    this.J = paramString;
  }
  
  public void setWeiboFlag(int paramInt)
  {
    this.field_weiboFlag = paramInt;
  }
  
  public void setWeiboNickName(String paramString)
  {
    this.field_weiboNickname = paramString;
  }
  
  public void unSetBlackList()
  {
    this.field_type &= 0xFFFFFFF7;
  }
  
  public void unSetChatContact()
  {
    this.field_type &= 0xFFFFFFFD;
  }
  
  public void unSetContact()
  {
    this.field_type &= 0xFFFFFFFE;
  }
  
  public void unSetFavour()
  {
    this.field_type &= 0xFFFFFFBF;
  }
  
  public void unSetHidden()
  {
    this.field_type &= 0xFFFFFFDF;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/contact/RContact.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */