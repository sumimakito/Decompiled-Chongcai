package cn.apppark.mcd.util.imge;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore.Audio.Media;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video.Media;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.widget.RemoteImageView;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class ImgUtil
{
  public static final int COMPRESS_IMAGE = 5004;
  public static final int CROP_IMAGE = 5003;
  public static final int GET_IMAGE_BY_CAMERA = 5001;
  public static final int GET_IMAGE_FROM_PHONE = 5002;
  public static Uri cropImageUri;
  public static Uri imageUriFromCamera;
  
  public static Bitmap compressBywidth(String paramString, int paramInt1, int paramInt2)
  {
    int i = 1;
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, localOptions);
    localOptions.inJustDecodeBounds = false;
    int j = localOptions.outWidth;
    float f = paramInt1;
    if (j > paramInt1) {
      i = (int)Math.ceil(j / f);
    }
    localOptions.inSampleSize = i;
    localOptions.inPreferredConfig = Bitmap.Config.RGB_565;
    return compressImgQuality(BitmapFactory.decodeFile(paramString, localOptions), paramInt2);
  }
  
  public static Bitmap compressImgQuality(Bitmap paramBitmap, int paramInt)
  {
    int i = 90;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, 90, localByteArrayOutputStream);
    while ((localByteArrayOutputStream.toByteArray().length / 1024 > paramInt) && (i > 10))
    {
      localByteArrayOutputStream.reset();
      paramBitmap.compress(Bitmap.CompressFormat.JPEG, i, localByteArrayOutputStream);
      i -= 10;
    }
    return BitmapFactory.decodeStream(new ByteArrayInputStream(localByteArrayOutputStream.toByteArray()), null, null);
  }
  
  private static Uri createImagePathUri(Context paramContext)
  {
    String str = Environment.getExternalStorageState();
    Object localObject = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.CHINA);
    long l = System.currentTimeMillis();
    localObject = ((SimpleDateFormat)localObject).format(new Date(l));
    ContentValues localContentValues = new ContentValues(3);
    localContentValues.put("_display_name", (String)localObject);
    localContentValues.put("datetaken", Long.valueOf(l));
    localContentValues.put("mime_type", "image/jpeg");
    if (str.equals("mounted")) {
      return paramContext.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, localContentValues);
    }
    return paramContext.getContentResolver().insert(MediaStore.Images.Media.INTERNAL_CONTENT_URI, localContentValues);
  }
  
  public static void cropImage(Activity paramActivity, Uri paramUri)
  {
    cropImageUri = createImagePathUri(paramActivity);
    Intent localIntent = new Intent("com.android.camera.action.CROP");
    localIntent.setDataAndType(paramUri, "image/*");
    localIntent.putExtra("crop", "true");
    localIntent.putExtra("aspectX", 1);
    localIntent.putExtra("aspectY", 1);
    localIntent.putExtra("outputX", 100);
    localIntent.putExtra("outputY", 100);
    localIntent.putExtra("output", cropImageUri);
    localIntent.putExtra("return-data", false);
    paramActivity.startActivityForResult(localIntent, 5003);
  }
  
  public static Intent cropPhotoIntent(Uri paramUri, int paramInt1, int paramInt2)
  {
    Intent localIntent = new Intent("com.android.camera.action.CROP");
    localIntent.setDataAndType(paramUri, "image/*");
    localIntent.putExtra("crop", "true");
    localIntent.putExtra("aspectX", 1);
    localIntent.putExtra("aspectY", 1);
    localIntent.putExtra("outputX", paramInt1);
    localIntent.putExtra("outputY", paramInt2);
    localIntent.putExtra("scale", true);
    localIntent.putExtra("return-data", false);
    localIntent.putExtra("outputFormat", Bitmap.CompressFormat.JPEG.toString());
    localIntent.putExtra("noFaceDetection", true);
    return localIntent;
  }
  
  public static Bitmap drawableToBitmap(Drawable paramDrawable)
  {
    int i = paramDrawable.getIntrinsicWidth();
    int j = paramDrawable.getIntrinsicHeight();
    if (paramDrawable.getOpacity() != -1) {}
    for (Object localObject = Bitmap.Config.ARGB_8888;; localObject = Bitmap.Config.RGB_565)
    {
      localObject = Bitmap.createBitmap(i, j, (Bitmap.Config)localObject);
      Canvas localCanvas = new Canvas((Bitmap)localObject);
      paramDrawable.setBounds(0, 0, paramDrawable.getIntrinsicWidth(), paramDrawable.getIntrinsicHeight());
      paramDrawable.draw(localCanvas);
      return (Bitmap)localObject;
    }
  }
  
  public static Bitmap getBitmapFromUri(Uri paramUri, Activity paramActivity)
  {
    try
    {
      paramUri = MediaStore.Images.Media.getBitmap(paramActivity.getContentResolver(), paramUri);
      return paramUri;
    }
    catch (Exception paramUri)
    {
      paramUri.printStackTrace();
    }
    return null;
  }
  
  public static Bitmap getCroppedRoundBitmap(Bitmap paramBitmap, int paramInt)
  {
    paramInt *= 2;
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    Bitmap localBitmap;
    if (j > i) {
      localBitmap = Bitmap.createBitmap(paramBitmap, 0, (j - i) / 2, i, i);
    }
    for (;;)
    {
      if (localBitmap.getWidth() == paramInt)
      {
        paramBitmap = localBitmap;
        if (localBitmap.getHeight() == paramInt) {}
      }
      else
      {
        paramBitmap = Bitmap.createScaledBitmap(localBitmap, paramInt, paramInt, true);
      }
      localBitmap = Bitmap.createBitmap(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
      Canvas localCanvas = new Canvas(localBitmap);
      Paint localPaint = new Paint();
      Rect localRect = new Rect(0, 0, paramBitmap.getWidth(), paramBitmap.getHeight());
      localPaint.setAntiAlias(true);
      localPaint.setFilterBitmap(true);
      localPaint.setDither(true);
      localCanvas.drawARGB(0, 0, 0, 0);
      localCanvas.drawCircle(paramBitmap.getWidth() / 2, paramBitmap.getHeight() / 2, paramBitmap.getWidth() / 2, localPaint);
      localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
      localCanvas.drawBitmap(paramBitmap, localRect, localRect, localPaint);
      return localBitmap;
      localBitmap = paramBitmap;
      if (j < i) {
        localBitmap = Bitmap.createBitmap(paramBitmap, (i - j) / 2, 0, j, j);
      }
    }
  }
  
  /* Error */
  public static String getDataColumn(Context paramContext, Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: invokevirtual 168	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   7: aload_1
    //   8: iconst_1
    //   9: anewarray 158	java/lang/String
    //   12: dup
    //   13: iconst_0
    //   14: ldc_w 354
    //   17: aastore
    //   18: aload_2
    //   19: aload_3
    //   20: aconst_null
    //   21: invokevirtual 358	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   24: astore_1
    //   25: aload_1
    //   26: ifnull +40 -> 66
    //   29: aload_1
    //   30: invokeinterface 364 1 0
    //   35: ifeq +31 -> 66
    //   38: aload_1
    //   39: aload_1
    //   40: ldc_w 354
    //   43: invokeinterface 368 2 0
    //   48: invokeinterface 372 2 0
    //   53: astore_0
    //   54: aload_1
    //   55: ifnull +9 -> 64
    //   58: aload_1
    //   59: invokeinterface 375 1 0
    //   64: aload_0
    //   65: areturn
    //   66: aload_1
    //   67: ifnull +9 -> 76
    //   70: aload_1
    //   71: invokeinterface 375 1 0
    //   76: aconst_null
    //   77: areturn
    //   78: astore_0
    //   79: aload 4
    //   81: astore_1
    //   82: aload_1
    //   83: ifnull +9 -> 92
    //   86: aload_1
    //   87: invokeinterface 375 1 0
    //   92: aload_0
    //   93: athrow
    //   94: astore_0
    //   95: goto -13 -> 82
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	paramContext	Context
    //   0	98	1	paramUri	Uri
    //   0	98	2	paramString	String
    //   0	98	3	paramArrayOfString	String[]
    //   1	79	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	25	78	finally
    //   29	54	94	finally
  }
  
  @SuppressLint({"NewApi"})
  public static String getPath(Context paramContext, Uri paramUri)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    int i;
    if (Build.VERSION.SDK_INT >= 19)
    {
      i = 1;
      if ((i == 0) || (!DocumentsContract.isDocumentUri(paramContext, paramUri))) {
        break label224;
      }
      if (!isExternalStorageDocument(paramUri)) {
        break label93;
      }
      paramContext = DocumentsContract.getDocumentId(paramUri).split(":");
      if ("primary".equalsIgnoreCase(paramContext[0])) {
        localObject1 = Environment.getExternalStorageDirectory() + "/" + paramContext[1];
      }
    }
    label93:
    label224:
    do
    {
      do
      {
        return (String)localObject1;
        i = 0;
        break;
        if (isDownloadsDocument(paramUri))
        {
          paramUri = DocumentsContract.getDocumentId(paramUri);
          return getDataColumn(paramContext, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(paramUri).longValue()), null, null);
        }
      } while (!isMediaDocument(paramUri));
      localObject1 = DocumentsContract.getDocumentId(paramUri).split(":");
      Object localObject3 = localObject1[0];
      if ("image".equals(localObject3)) {
        paramUri = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
      }
      for (;;)
      {
        return getDataColumn(paramContext, paramUri, "_id=?", new String[] { localObject1[1] });
        if ("video".equals(localObject3))
        {
          paramUri = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
        }
        else
        {
          paramUri = (Uri)localObject2;
          if ("audio".equals(localObject3)) {
            paramUri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
          }
        }
      }
      if ("content".equalsIgnoreCase(paramUri.getScheme()))
      {
        if (isGooglePhotosUri(paramUri)) {
          return paramUri.getLastPathSegment();
        }
        return getDataColumn(paramContext, paramUri, null, null);
      }
    } while (!"file".equalsIgnoreCase(paramUri.getScheme()));
    return paramUri.getPath();
  }
  
  public static Intent getPicFromSDIntent(File paramFile, int paramInt1, int paramInt2)
  {
    Intent localIntent = new Intent("android.intent.action.GET_CONTENT");
    localIntent.setType("image/*");
    localIntent.putExtra("crop", "true");
    localIntent.putExtra("output", Uri.fromFile(paramFile));
    localIntent.putExtra("outputFormat", "JPEG");
    localIntent.putExtra("outputX", paramInt1);
    localIntent.putExtra("outputY", paramInt2);
    return localIntent;
  }
  
  public static GradientDrawable getRoundColorBg(String paramString)
  {
    int i = FunctionPublic.convertColor(paramString);
    int j = FunctionPublic.convertColor(paramString);
    paramString = new GradientDrawable();
    paramString.setColor(j);
    paramString.setCornerRadius(5.0F);
    paramString.setStroke(0, i);
    return paramString;
  }
  
  public static boolean isDownloadsDocument(Uri paramUri)
  {
    return "com.android.providers.downloads.documents".equals(paramUri.getAuthority());
  }
  
  public static boolean isExternalStorageDocument(Uri paramUri)
  {
    return "com.android.externalstorage.documents".equals(paramUri.getAuthority());
  }
  
  public static boolean isGooglePhotosUri(Uri paramUri)
  {
    return "com.google.android.apps.photos.content".equals(paramUri.getAuthority());
  }
  
  public static boolean isMediaDocument(Uri paramUri)
  {
    return "com.android.providers.media.documents".equals(paramUri.getAuthority());
  }
  
  public static void openCameraImage(Activity paramActivity)
  {
    imageUriFromCamera = createImagePathUri(paramActivity);
    Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
    localIntent.putExtra("output", imageUriFromCamera);
    paramActivity.startActivityForResult(localIntent, 5001);
  }
  
  public static void openLocalImage(Activity paramActivity)
  {
    Intent localIntent = new Intent();
    localIntent.setType("image/*");
    localIntent.setAction("android.intent.action.GET_CONTENT");
    paramActivity.startActivityForResult(localIntent, 5002);
  }
  
  public static String pic2String(Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      return "";
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 80, localByteArrayOutputStream);
    return MYBase64.encode(localByteArrayOutputStream.toByteArray());
  }
  
  public static void releaseImageViewResouce(RemoteImageView paramRemoteImageView)
  {
    if (paramRemoteImageView == null) {}
    do
    {
      do
      {
        return;
        paramRemoteImageView = paramRemoteImageView.getDrawable();
      } while ((paramRemoteImageView == null) || (!(paramRemoteImageView instanceof BitmapDrawable)));
      paramRemoteImageView = ((BitmapDrawable)paramRemoteImageView).getBitmap();
    } while ((paramRemoteImageView == null) || (paramRemoteImageView.isRecycled()));
    paramRemoteImageView.recycle();
  }
  
  public static String saveMyBitmap(Bitmap paramBitmap, String paramString1, String paramString2, String paramString3)
  {
    File localFile = new File(paramString1 + File.separator);
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
    paramString2 = new File(paramString1 + File.separator + paramString2);
    if (paramString2.exists()) {
      return paramString2.getAbsolutePath();
    }
    paramString2.createNewFile();
    try
    {
      paramString1 = new FileOutputStream(paramString2);
      if (paramString3.endsWith(".jpg")) {
        paramBitmap.compress(Bitmap.CompressFormat.JPEG, 90, paramString1);
      }
    }
    catch (FileNotFoundException paramBitmap)
    {
      try
      {
        paramString1.flush();
      }
      catch (IOException paramBitmap)
      {
        try
        {
          for (;;)
          {
            paramString1.close();
            return paramString2.getAbsolutePath();
            paramString1 = paramString1;
            paramString1.printStackTrace();
            paramString1 = null;
            continue;
            paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, paramString1);
            continue;
            paramBitmap = paramBitmap;
            paramBitmap.printStackTrace();
          }
        }
        catch (IOException paramBitmap)
        {
          for (;;)
          {
            paramBitmap.printStackTrace();
          }
        }
      }
    }
  }
  
  public static void saveMyBitmap(Bitmap paramBitmap, String paramString1, String paramString2)
  {
    File localFile = new File(paramString1 + File.separator);
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
    paramString1 = new File(paramString1 + File.separator + paramString2);
    if (paramString1.exists()) {
      return;
    }
    paramString1.createNewFile();
    try
    {
      paramString1 = new FileOutputStream(paramString1);
      paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, paramString1);
    }
    catch (FileNotFoundException paramString1)
    {
      try
      {
        paramString1.flush();
        try
        {
          paramString1.close();
          return;
        }
        catch (IOException paramBitmap)
        {
          paramBitmap.printStackTrace();
          return;
        }
        paramString1 = paramString1;
        paramString1.printStackTrace();
        paramString1 = null;
      }
      catch (IOException paramBitmap)
      {
        for (;;)
        {
          paramBitmap.printStackTrace();
        }
      }
    }
  }
  
  public static void saveMyDrawable(Drawable paramDrawable, String paramString1, String paramString2)
  {
    Bitmap localBitmap = drawableToBitmap(paramDrawable);
    paramDrawable = new File(paramString1 + File.separator);
    if (!paramDrawable.exists()) {
      paramDrawable.mkdirs();
    }
    paramDrawable = new File(paramString1 + File.separator + paramString2);
    if (paramDrawable.exists()) {
      return;
    }
    paramDrawable.createNewFile();
    try
    {
      paramDrawable = new FileOutputStream(paramDrawable);
      localBitmap.compress(Bitmap.CompressFormat.PNG, 100, paramDrawable);
    }
    catch (FileNotFoundException paramDrawable)
    {
      try
      {
        paramDrawable.flush();
        try
        {
          paramDrawable.close();
          return;
        }
        catch (IOException paramDrawable)
        {
          paramDrawable.printStackTrace();
          return;
        }
        paramDrawable = paramDrawable;
        paramDrawable.printStackTrace();
        paramDrawable = null;
      }
      catch (IOException paramString1)
      {
        for (;;)
        {
          paramString1.printStackTrace();
        }
      }
    }
  }
  
  public static String selectImage(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramIntent.getData();
    if (paramIntent != null)
    {
      localObject = paramIntent.toString();
      if (((String)localObject).substring(10, ((String)localObject).length()).startsWith("com.sec.android.gallery3d")) {
        return null;
      }
    }
    Object localObject = new String[1];
    localObject[0] = "_data";
    paramContext = paramContext.getContentResolver().query(paramIntent, (String[])localObject, null, null, null);
    paramContext.moveToFirst();
    paramIntent = paramContext.getString(paramContext.getColumnIndex(localObject[0]));
    paramContext.close();
    return paramIntent;
  }
  
  public static Intent takePhotoIntent(Uri paramUri)
  {
    Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
    localIntent.putExtra("output", paramUri);
    return localIntent;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/util/imge/ImgUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */