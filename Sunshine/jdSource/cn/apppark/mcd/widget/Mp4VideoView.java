package cn.apppark.mcd.widget;

import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.MediaController;
import android.widget.MediaController.MediaPlayerControl;
import java.io.IOException;
import s;
import t;
import u;
import v;
import w;
import x;

public class Mp4VideoView
  extends SurfaceView
  implements MediaController.MediaPlayerControl
{
  private String TAG = "VideoView";
  MediaPlayer.OnVideoSizeChangedListener a = new s(this);
  MediaPlayer.OnPreparedListener b = new t(this);
  SurfaceHolder.Callback c = new x(this);
  private MediaPlayer.OnBufferingUpdateListener mBufferingUpdateListener = new w(this);
  private MediaPlayer.OnCompletionListener mCompletionListener = new u(this);
  private Context mContext;
  private int mCurrentBufferPercentage;
  private int mDuration;
  private MediaPlayer.OnErrorListener mErrorListener = new v(this);
  private boolean mIsPrepared;
  private MediaController mMediaController;
  private MediaPlayer mMediaPlayer = null;
  private MySizeChangeLinstener mMyChangeLinstener;
  private MediaPlayer.OnCompletionListener mOnCompletionListener;
  private MediaPlayer.OnErrorListener mOnErrorListener;
  private MediaPlayer.OnPreparedListener mOnPreparedListener;
  private int mSeekWhenPrepared;
  private boolean mStartWhenPrepared;
  private int mSurfaceHeight;
  private SurfaceHolder mSurfaceHolder = null;
  private int mSurfaceWidth;
  private Uri mUri;
  private int mVideoHeight;
  private int mVideoWidth;
  
  public Mp4VideoView(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    initVideoView();
  }
  
  public Mp4VideoView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
    this.mContext = paramContext;
    initVideoView();
  }
  
  public Mp4VideoView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.mContext = paramContext;
    initVideoView();
  }
  
  private void attachMediaController()
  {
    if ((this.mMediaPlayer != null) && (this.mMediaController != null))
    {
      this.mMediaController.setMediaPlayer(this);
      if (!(getParent() instanceof View)) {
        break label60;
      }
    }
    label60:
    for (Object localObject = (View)getParent();; localObject = this)
    {
      this.mMediaController.setAnchorView((View)localObject);
      this.mMediaController.setEnabled(this.mIsPrepared);
      return;
    }
  }
  
  private void initVideoView()
  {
    this.mVideoWidth = 0;
    this.mVideoHeight = 0;
    getHolder().addCallback(this.c);
    getHolder().setType(3);
    setFocusable(true);
    setFocusableInTouchMode(true);
    requestFocus();
  }
  
  private void openVideo()
  {
    if ((this.mUri == null) || (this.mSurfaceHolder == null)) {
      return;
    }
    Intent localIntent = new Intent("com.android.music.musicservicecommand");
    localIntent.putExtra("command", "pause");
    this.mContext.sendBroadcast(localIntent);
    if (this.mMediaPlayer != null)
    {
      this.mMediaPlayer.reset();
      this.mMediaPlayer.release();
      this.mMediaPlayer = null;
    }
    try
    {
      this.mMediaPlayer = new MediaPlayer();
      this.mMediaPlayer.setOnPreparedListener(this.b);
      this.mMediaPlayer.setOnVideoSizeChangedListener(this.a);
      this.mIsPrepared = false;
      this.mDuration = -1;
      this.mMediaPlayer.setOnCompletionListener(this.mCompletionListener);
      this.mMediaPlayer.setOnErrorListener(this.mErrorListener);
      this.mMediaPlayer.setOnBufferingUpdateListener(this.mBufferingUpdateListener);
      this.mCurrentBufferPercentage = 0;
      this.mMediaPlayer.setDataSource(this.mContext, this.mUri);
      this.mMediaPlayer.setDisplay(this.mSurfaceHolder);
      this.mMediaPlayer.setAudioStreamType(3);
      this.mMediaPlayer.setScreenOnWhilePlaying(true);
      this.mMediaPlayer.prepareAsync();
      attachMediaController();
      return;
    }
    catch (IOException localIOException) {}catch (IllegalArgumentException localIllegalArgumentException) {}
  }
  
  private void toggleMediaControlsVisiblity()
  {
    if (this.mMediaController.isShowing())
    {
      this.mMediaController.hide();
      return;
    }
    this.mMediaController.show();
  }
  
  public boolean canPause()
  {
    return false;
  }
  
  public boolean canSeekBackward()
  {
    return false;
  }
  
  public boolean canSeekForward()
  {
    return false;
  }
  
  public int getAudioSessionId()
  {
    return 0;
  }
  
  public int getBufferPercentage()
  {
    if (this.mMediaPlayer != null) {
      return this.mCurrentBufferPercentage;
    }
    return 0;
  }
  
  public int getCurrentPosition()
  {
    if ((this.mMediaPlayer != null) && (this.mIsPrepared)) {
      return this.mMediaPlayer.getCurrentPosition();
    }
    return 0;
  }
  
  public int getDuration()
  {
    if ((this.mMediaPlayer != null) && (this.mIsPrepared))
    {
      if (this.mDuration > 0) {
        return this.mDuration;
      }
      this.mDuration = this.mMediaPlayer.getDuration();
      return this.mDuration;
    }
    this.mDuration = -1;
    return this.mDuration;
  }
  
  public int getVideoHeight()
  {
    return this.mVideoHeight;
  }
  
  public int getVideoWidth()
  {
    return this.mVideoWidth;
  }
  
  public boolean isPlaying()
  {
    if ((this.mMediaPlayer != null) && (this.mIsPrepared)) {
      return this.mMediaPlayer.isPlaying();
    }
    return false;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((this.mIsPrepared) && (paramInt != 4) && (paramInt != 24) && (paramInt != 25) && (paramInt != 82) && (paramInt != 5) && (paramInt != 6) && (this.mMediaPlayer != null) && (this.mMediaController != null))
    {
      if ((paramInt == 79) || (paramInt == 85))
      {
        if (this.mMediaPlayer.isPlaying())
        {
          pause();
          this.mMediaController.show();
        }
        for (;;)
        {
          return true;
          start();
          this.mMediaController.hide();
        }
      }
      if ((paramInt != 86) || (!this.mMediaPlayer.isPlaying())) {
        break label138;
      }
      pause();
      this.mMediaController.show();
    }
    for (;;)
    {
      return super.onKeyDown(paramInt, paramKeyEvent);
      label138:
      if (this.mMediaController.isShowing()) {
        this.mMediaController.hide();
      } else {
        this.mMediaController.show();
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(this.mVideoWidth, paramInt1), getDefaultSize(this.mVideoHeight, paramInt2));
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((this.mIsPrepared) && (this.mMediaPlayer != null) && (this.mMediaController != null))
    {
      if (!this.mMediaController.isShowing()) {
        break label40;
      }
      this.mMediaController.hide();
    }
    for (;;)
    {
      return false;
      label40:
      this.mMediaController.show();
    }
  }
  
  public boolean onTrackballEvent(MotionEvent paramMotionEvent)
  {
    if ((this.mIsPrepared) && (this.mMediaPlayer != null) && (this.mMediaController != null))
    {
      if (!this.mMediaController.isShowing()) {
        break label40;
      }
      this.mMediaController.hide();
    }
    for (;;)
    {
      return false;
      label40:
      this.mMediaController.show();
    }
  }
  
  public void pause()
  {
    if ((this.mMediaPlayer != null) && (this.mIsPrepared) && (this.mMediaPlayer.isPlaying())) {
      this.mMediaPlayer.pause();
    }
    this.mStartWhenPrepared = false;
  }
  
  public int resolveAdjustedSize(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    switch (i)
    {
    case 0: 
    default: 
      return paramInt1;
    case -2147483648: 
      return Math.min(paramInt1, paramInt2);
    }
    return paramInt2;
  }
  
  public void seekTo(int paramInt)
  {
    if ((this.mMediaPlayer != null) && (this.mIsPrepared))
    {
      this.mMediaPlayer.seekTo(paramInt);
      return;
    }
    this.mSeekWhenPrepared = paramInt;
  }
  
  public void setMediaController(MediaController paramMediaController)
  {
    if (this.mMediaController != null) {
      this.mMediaController.hide();
    }
    this.mMediaController = paramMediaController;
    attachMediaController();
  }
  
  public void setMySizeChangeLinstener(MySizeChangeLinstener paramMySizeChangeLinstener)
  {
    this.mMyChangeLinstener = paramMySizeChangeLinstener;
  }
  
  public void setOnCompletionListener(MediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
    this.mOnCompletionListener = paramOnCompletionListener;
  }
  
  public void setOnErrorListener(MediaPlayer.OnErrorListener paramOnErrorListener)
  {
    this.mOnErrorListener = paramOnErrorListener;
  }
  
  public void setOnPreparedListener(MediaPlayer.OnPreparedListener paramOnPreparedListener)
  {
    this.mOnPreparedListener = paramOnPreparedListener;
  }
  
  public void setVideoPath(String paramString)
  {
    setVideoURI(Uri.parse(paramString));
  }
  
  public void setVideoScale(int paramInt1, int paramInt2)
  {
    ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
    localLayoutParams.height = paramInt2;
    localLayoutParams.width = paramInt1;
    setLayoutParams(localLayoutParams);
  }
  
  public void setVideoURI(Uri paramUri)
  {
    this.mUri = paramUri;
    this.mStartWhenPrepared = false;
    this.mSeekWhenPrepared = 0;
    openVideo();
    requestLayout();
    invalidate();
  }
  
  public void start()
  {
    if ((this.mMediaPlayer != null) && (this.mIsPrepared))
    {
      this.mMediaPlayer.start();
      this.mStartWhenPrepared = false;
      return;
    }
    this.mStartWhenPrepared = true;
  }
  
  public void stopPlayback()
  {
    if (this.mMediaPlayer != null)
    {
      this.mMediaPlayer.stop();
      this.mMediaPlayer.release();
      this.mMediaPlayer = null;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/Mp4VideoView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */