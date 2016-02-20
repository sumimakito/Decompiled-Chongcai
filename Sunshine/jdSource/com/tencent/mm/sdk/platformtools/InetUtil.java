package com.tencent.mm.sdk.platformtools;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class InetUtil
{
  private static final Pattern X = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");
  private static final Pattern Y = Pattern.compile("^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$");
  private static final Pattern Z = Pattern.compile("^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$");
  
  public static InetAddress getByDottedAddress(String paramString)
  {
    if (isIPv4Address(paramString)) {
      return InetAddress.getByName(paramString);
    }
    if (isIPv6Address(paramString)) {
      return InetAddress.getByName(paramString);
    }
    throw new UnknownHostException("invalid ipv4 or ipv6 dotted string");
  }
  
  public static boolean isIPv4Address(String paramString)
  {
    return X.matcher(paramString).matches();
  }
  
  public static boolean isIPv6Address(String paramString)
  {
    return (isIPv6StdAddress(paramString)) || (isIPv6HexCompressedAddress(paramString));
  }
  
  public static boolean isIPv6HexCompressedAddress(String paramString)
  {
    return Z.matcher(paramString).matches();
  }
  
  public static boolean isIPv6StdAddress(String paramString)
  {
    return Y.matcher(paramString).matches();
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/tencent/mm/sdk/platformtools/InetUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */