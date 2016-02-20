package com.tencent.mm.sdk.message;

import com.tencent.mm.sdk.storage.MAutoDBItem;
import java.lang.reflect.Field;

public class RMsgInfo
  extends MAutoDBItem
{
  public static final String[] COLUMNS;
  public static final String COL_CONTENT = "content";
  public static final String COL_CREATE_TIME = "createTime";
  public static final String COL_ID = "msgId";
  public static final String COL_ID_SVR = "msgSvrId";
  public static final String COL_IMG_PATH = "imgPath";
  public static final String COL_IS_SEND = "isSend";
  public static final String COL_IS_SHOWTIMER = "isShowTimer";
  public static final String COL_LVBUFFER = "lvbuffer";
  public static final String COL_RESERVED = "reserved";
  public static final String COL_STATUS = "status";
  public static final String COL_TALKER = "talker";
  public static final String COL_TYPE = "type";
  protected static Field[] p;
  public String commentUrl = "";
  public String field_content = "";
  public long field_createTime;
  public String field_imgPath = "";
  public int field_isSend;
  public int field_isShowTimer;
  public byte[] field_lvBuffer;
  public long field_msgId;
  public int field_msgSvrId;
  public String field_reserved = "";
  public int field_status = 0;
  public String field_talker = "";
  public int field_type = 0;
  
  static
  {
    Field[] arrayOfField = MAutoDBItem.getValidFields(RMsgInfo.class);
    p = arrayOfField;
    COLUMNS = MAutoDBItem.getFullColumns(arrayOfField);
  }
  
  public RMsgInfo() {}
  
  public RMsgInfo(long paramLong)
  {
    this.field_msgId = paramLong;
  }
  
  public RMsgInfo(String paramString)
  {
    this.field_talker = paramString;
  }
  
  public Field[] fields()
  {
    return p;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/message/RMsgInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */