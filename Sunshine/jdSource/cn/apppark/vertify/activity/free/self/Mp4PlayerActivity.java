package cn.apppark.vertify.activity.free.self;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.MessageQueue;
import android.view.Display;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import cn.apppark.mcd.util.MyAlphaAnima;
import cn.apppark.mcd.widget.Mp4VideoView;
import lw;
import lx;
import ly;
import lz;
import mb;
import mc;
import md;
import me;

public class Mp4PlayerActivity
  extends Activity
{
  private static final int HIDE_CONTROLER = 1;
  private static final int PROGRESS_CHANGED = 0;
  private static final int SCREEN_DEFAULT = 1;
  private static final int SCREEN_FULL = 0;
  private static final int TIME = 6868;
  private static int controlHeight = 0;
  private static int screenHeight;
  private static int screenWidth = 0;
  int a = 2000;
  public Handler b = new ly(this);
  private ImageButton bn3 = null;
  private ImageButton btn_back = null;
  private ImageButton btn_forward = null;
  private View controlView = null;
  private PopupWindow controler = null;
  private TextView durationTextView = null;
  private boolean isChangedVideo = false;
  private boolean isControllerShow = true;
  private boolean isFullScreen = false;
  private boolean isOnline = false;
  private boolean isPaused = false;
  private GestureDetector mGestureDetector = null;
  private TextView playedTextView = null;
  private int playedTime;
  private ProgressBar pro;
  private SeekBar seekBar = null;
  private String url = "";
  private Mp4VideoView videoView = null;
  
  static
  {
    screenHeight = 0;
  }
  
  private void cancelDelayHide()
  {
    this.b.removeMessages(1);
  }
  
  private void getScreenSize()
  {
    Display localDisplay = getWindowManager().getDefaultDisplay();
    screenHeight = localDisplay.getHeight();
    screenWidth = localDisplay.getWidth();
    controlHeight = screenHeight / 4;
  }
  
  private void hideController()
  {
    if (this.controler.isShowing())
    {
      this.controler.update(0, 0, 0, 0);
      this.isControllerShow = false;
    }
  }
  
  private void hideControllerDelay()
  {
    this.b.sendEmptyMessageDelayed(1, 6868L);
  }
  
  private void setVideoScale(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      this.videoView.setVideoScale(screenWidth, screenHeight);
      getWindow().addFlags(1024);
      return;
    }
    int m = this.videoView.getVideoWidth();
    int n = this.videoView.getVideoHeight();
    int j = screenWidth;
    int k = screenHeight - 25;
    paramInt = k;
    int i = j;
    if (m > 0)
    {
      paramInt = k;
      i = j;
      if (n > 0)
      {
        if (m * k <= j * n) {
          break label141;
        }
        paramInt = j * n / m;
        i = j;
      }
    }
    for (;;)
    {
      this.videoView.setVideoScale(i, paramInt);
      getWindow().clearFlags(1024);
      return;
      label141:
      paramInt = k;
      i = j;
      if (m * k < j * n)
      {
        i = k * m / n;
        paramInt = k;
      }
    }
  }
  
  private void showController()
  {
    this.controler.update(0, 0, screenWidth, controlHeight);
    this.isControllerShow = true;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    getScreenSize();
    if (this.isControllerShow)
    {
      this.b.removeMessages(1);
      if (this.controler.isShowing())
      {
        this.controler.update(0, 0, 0, 0);
        this.isControllerShow = false;
      }
      this.controler.update(0, 0, screenWidth, controlHeight);
      this.isControllerShow = true;
      this.b.sendEmptyMessageDelayed(1, 6868L);
    }
    super.onConfigurationChanged(paramConfiguration);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903129);
    this.url = getIntent().getStringExtra("videourl");
    Looper.myQueue().addIdleHandler(new lw(this));
    this.controlView = getLayoutInflater().inflate(2130903128, null);
    this.controler = new PopupWindow(this.controlView);
    this.durationTextView = ((TextView)this.controlView.findViewById(2131362428));
    this.playedTextView = ((TextView)this.controlView.findViewById(2131362426));
    this.pro = ((ProgressBar)findViewById(2131362433));
    this.bn3 = ((ImageButton)this.controlView.findViewById(2131362430));
    this.btn_back = ((ImageButton)this.controlView.findViewById(2131362429));
    this.btn_forward = ((ImageButton)this.controlView.findViewById(2131362431));
    this.btn_back.setOnTouchListener(new MyAlphaAnima());
    this.btn_forward.setOnTouchListener(new MyAlphaAnima());
    this.videoView = ((Mp4VideoView)findViewById(2131362432));
    this.videoView.setOnErrorListener(new lz(this));
    paramBundle = getIntent().getData();
    if (paramBundle != null)
    {
      this.videoView.stopPlayback();
      this.videoView.setVideoURI(paramBundle);
      this.isOnline = true;
      this.bn3.setImageResource(2130837750);
    }
    for (;;)
    {
      this.videoView.setMySizeChangeLinstener(new mb(this));
      this.videoView.setOnCompletionListener(new mc(this));
      this.bn3.setOnClickListener(new Mp4PlayerActivity.5(this));
      this.btn_forward.setOnClickListener(new Mp4PlayerActivity.6(this));
      this.btn_back.setOnClickListener(new Mp4PlayerActivity.7(this));
      this.seekBar = ((SeekBar)this.controlView.findViewById(2131362427));
      this.seekBar.setOnSeekBarChangeListener(new md(this));
      getScreenSize();
      this.mGestureDetector = new GestureDetector(new me(this));
      this.videoView.setOnPreparedListener(new lx(this));
      this.videoView.setVideoPath(this.url);
      this.isOnline = true;
      this.isChangedVideo = true;
      return;
      this.bn3.setImageResource(2130837751);
    }
  }
  
  protected void onDestroy()
  {
    if (this.controler.isShowing()) {
      this.controler.dismiss();
    }
    this.b.removeMessages(0);
    this.b.removeMessages(1);
    if (this.videoView.isPlaying()) {
      this.videoView.stopPlayback();
    }
    super.onDestroy();
  }
  
  protected void onPause()
  {
    this.playedTime = this.videoView.getCurrentPosition();
    this.videoView.pause();
    this.bn3.setImageResource(2130837751);
    super.onPause();
  }
  
  protected void onResume()
  {
    if (!this.isChangedVideo)
    {
      this.videoView.seekTo(this.playedTime);
      this.videoView.start();
    }
    for (;;)
    {
      if (this.videoView.isPlaying())
      {
        this.bn3.setImageResource(2130837750);
        this.b.sendEmptyMessageDelayed(1, 6868L);
      }
      if (getRequestedOrientation() != 0) {
        setRequestedOrientation(0);
      }
      super.onResume();
      return;
      this.isChangedVideo = false;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = this.mGestureDetector.onTouchEvent(paramMotionEvent);
    boolean bool1 = bool2;
    if (!bool2) {
      bool1 = super.onTouchEvent(paramMotionEvent);
    }
    return bool1;
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/free/self/Mp4PlayerActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */