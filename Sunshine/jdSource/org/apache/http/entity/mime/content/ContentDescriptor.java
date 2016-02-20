package org.apache.http.entity.mime.content;

public abstract interface ContentDescriptor
{
  public abstract String getCharset();
  
  public abstract long getContentLength();
  
  public abstract String getMediaType();
  
  public abstract String getMimeType();
  
  public abstract String getSubType();
  
  public abstract String getTransferEncoding();
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/org/apache/http/entity/mime/content/ContentDescriptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */