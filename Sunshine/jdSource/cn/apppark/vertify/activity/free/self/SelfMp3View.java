package cn.apppark.vertify.activity.free.self;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.free.SelfDefineItemVo;
import cn.apppark.vertify.activity.ISelfView;
import mq;

public class SelfMp3View
  extends LinearLayout
  implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnPreparedListener, ISelfView
{
  private Context context;
  private ImageView img_paly;
  private boolean isClickable = true;
  private boolean isPrepare = false;
  private MediaPlayer mediaPlayer;
  private SelfDefineItemVo vo;
  
  public SelfMp3View(Context paramContext, SelfDefineItemVo paramSelfDefineItemVo)
  {
    super(paramContext);
    this.vo = paramSelfDefineItemVo;
    this.context = paramContext;
    this.img_paly = new ImageView(paramContext);
    this.img_paly.setScaleType(ImageView.ScaleType.FIT_CENTER);
    paramContext = new LinearLayout.LayoutParams(-1, -1);
    paramContext.gravity = 17;
    addView(this.img_paly, paramContext);
    init();
  }
  
  private void initPlayer()
  {
    try
    {
      this.mediaPlayer = new MediaPlayer();
      this.mediaPlayer.setAudioStreamType(3);
      this.mediaPlayer.setOnBufferingUpdateListener(this);
      this.mediaPlayer.setOnPreparedListener(this);
      this.mediaPlayer.setOnCompletionListener(this);
      this.mediaPlayer.setOnErrorListener(new mq(this));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void init()
  {
    FunctionPublic.setBackground(this.vo.getStyle_bgPic(), this);
    FunctionPublic.setImageDrawable(this.vo.getStyle_startPic(), this.img_paly);
    this.img_paly.setOnClickListener(new SelfMp3View.1(this));
  }
  
  public boolean isOnMethod()
  {
    return true;
  }
  
  public void onBufferingUpdate(MediaPlayer paramMediaPlayer, int paramInt) {}
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    if (this.isPrepare) {
      pause();
    }
  }
  
  public void onDestroy()
  {
    stop();
  }
  
  public void onPause()
  {
    pause();
  }
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    this.isPrepare = true;
    paramMediaPlayer.start();
  }
  
  public void onResume() {}
  
  public void pause()
  {
    if ((this.mediaPlayer != null) && (this.mediaPlayer.isPlaying()))
    {
      this.mediaPlayer.pause();
      FunctionPublic.setImageDrawable(this.vo.getStyle_startPic(), this.img_paly);
    }
  }
  
  public void play()
  {
    this.mediaPlayer.start();
    FunctionPublic.setImageDrawable(this.vo.getStyle_pausePic(), this.img_paly);
  }
  
  public void playUrl(String paramString)
  {
    if (("".equals(paramString.trim())) || (paramString == null))
    {
      HQCHApplication.getInstance().initToast("播放地址为空", 0);
      return;
    }
    try
    {
      this.mediaPlayer.reset();
      this.mediaPlayer.setDataSource(paramString);
      this.mediaPlayer.prepareAsync();
      FunctionPublic.setImageDrawable(this.vo.getStyle_pausePic(), this.img_paly);
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public void seekTo(int paramInt)
  {
    this.mediaPlayer.seekTo(paramInt);
  }
  
  public void stop()
  {
    if (this.mediaPlayer != null)
    {
      if (this.mediaPlayer.isPlaying()) {
        this.mediaPlayer.stop();
      }
      this.mediaPlayer.release();
      this.mediaPlayer = null;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/SelfMp3View.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */