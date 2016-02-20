package com.ta.utdid2.device;

import com.ta.utdid2.android.utils.AESUtils;
import com.ta.utdid2.android.utils.Base64;
import com.ta.utdid2.android.utils.StringUtils;

public class UTUtdidHelper2
{
  private String mAESKey = "XwYp8WL8bm6S4wu6yEYmLGy4RRRdJDIhxCBdk3CiNZTwGoj1bScVZEeVp9vBiiIsgwDtqZHP8QLoFM6o6MRYjW8QqyrZBI654mqoUk5SOLDyzordzOU5QhYguEJh54q3K1KqMEXpdEQJJjs1Urqjm2s4jgPfCZ4hMuIjAMRrEQluA7FeoqWMJOwghcLcPVleQ8PLzAcaKidybmwhvNAxIyKRpbZlcDjNCcUvsJYvyzEA9VUIaHkIAJ62lpA3EE3H";
  
  public String dePack(String paramString)
  {
    return AESUtils.decrypt(this.mAESKey, paramString);
  }
  
  public String dePackWithBase64(String paramString)
  {
    paramString = AESUtils.decrypt(this.mAESKey, paramString);
    if (!StringUtils.isEmpty(paramString)) {
      try
      {
        paramString = new String(Base64.decode(paramString, 0));
        return paramString;
      }
      catch (IllegalArgumentException paramString)
      {
        return null;
      }
    }
    return null;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/ta/utdid2/device/UTUtdidHelper2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */