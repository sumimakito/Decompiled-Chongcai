package cn.apppark.ckj10185912;

import a;
import android.app.Activity;
import android.app.ActivityGroup;
import android.app.LocalActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.Signature;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.Toast;
import b;
import c;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.util.PublicUtil;
import cn.apppark.mcd.util.file.SDFileUtils;
import cn.apppark.mcd.util.jsonparse.JsonParserUtil;
import cn.apppark.mcd.util.more.StringUtil;
import cn.apppark.mcd.vo.base.BasePageItemVo;
import cn.apppark.mcd.vo.base.ClientBaseVo;
import cn.apppark.mcd.vo.navigation.NavigationHistoryVo;
import cn.apppark.mcd.widget.DialogOneBtn;
import cn.apppark.mcd.widget.DialogOneBtn.Builder;
import cn.apppark.mcd.widget.MyFloatView;
import cn.apppark.vertify.PageGroup;
import cn.apppark.vertify.activity.bottommenu.NavigationTab2;
import cn.apppark.vertify.activity.service.LBSService;
import cn.apppark.vertify.base.ClientInitInfoHelpler;
import cn.apppark.vertify.base.InitClient;
import cn.apppark.vertify.base.SetAct;
import cn.apppark.vertify.base.YygyResourceDirGenerator;
import cn.apppark.vertify.network.FileUpdater;
import cn.apppark.vertify.network.PublicRequest;
import d;
import java.io.File;
import java.io.FileInputStream;

public class Main
  extends ActivityGroup
  implements View.OnClickListener
{
  private static final int BITS_PER_UNIT = 8;
  public ClientBaseVo clientBaseVo;
  private FileUpdater fileUpdater;
  public boolean finish = false;
  private ImageView img;
  private LinearLayout linearLayoutBottom;
  public LinearLayout linearLayoutMain;
  private LinearLayout linearLayoutMiddle;
  private LinearLayout ll_checkupdate;
  private LinearLayout ll_exit;
  private LinearLayout ll_more;
  private LinearLayout ll_setting;
  private LocalActivityManager locationManager;
  public boolean manualCheckUpdate = false;
  private MyFloatView myFV = null;
  private d myMenu;
  public PageGroup pageGroup;
  private String sdcardPath;
  private boolean windowIsShow = false;
  private WindowManager wm = null;
  public WindowManager.LayoutParams wmParams = new WindowManager.LayoutParams();
  
  private boolean checkCilentBase(File paramFile)
  {
    if (!paramFile.exists())
    {
      Toast.makeText(this, " 初始化文件不存在,请检测更新 ", 1).show();
      this.img.setVisibility(0);
      new a(this).start();
      return false;
    }
    return true;
  }
  
  private void createView()
  {
    this.wm = ((WindowManager)getApplicationContext().getSystemService("window"));
    this.myFV = new MyFloatView(getApplicationContext(), this.wmParams, this.wm);
    this.wmParams.type = 2002;
    this.wmParams.format = 1;
    this.wmParams.flags = 40;
    this.wmParams.gravity = 51;
    this.wmParams.x = 0;
    this.wmParams.y = (YYGYContants.screenHeight - PublicUtil.dip2px(150.0F));
    this.wmParams.width = PublicUtil.dip2px(38.0F);
    this.wmParams.height = PublicUtil.dip2px(87.0F);
  }
  
  private void getLocation()
  {
    new PublicRequest().getLocation();
  }
  
  private void initClinetFromRecource()
  {
    Intent localIntent = new Intent(this, InitClient.class);
    localIntent.putExtra("sdcardPath", this.sdcardPath);
    startActivityForResult(localIntent, 1);
  }
  
  private static int postion(int paramInt)
  {
    return 1 << 7 - paramInt % 8;
  }
  
  private void showSDCardErrorMessage()
  {
    DialogOneBtn localDialogOneBtn = new DialogOneBtn.Builder(this).setTitle(2131230724).setMessage(2131230725).setPositiveButton(2131230727, new b(this)).create();
    localDialogOneBtn.setOnCancelListener(new c(this));
    localDialogOneBtn.show();
  }
  
  public int createBottom(String paramString1, String paramString2, String paramString3)
  {
    if ("0".equals(paramString1))
    {
      this.linearLayoutBottom.setVisibility(8);
      return 0;
    }
    this.linearLayoutBottom.setVisibility(0);
    paramString2 = "foot_" + String.valueOf(paramString2) + ".json";
    File localFile = new File(this.sdcardPath + paramString2);
    if (!localFile.exists())
    {
      Toast.makeText(this, paramString2 + " 不存在", 1).show();
      return 0;
    }
    paramString1 = (BasePageItemVo)JsonParserUtil.parseJson2Vo(SDFileUtils.readFileSD(localFile), NavigationHistoryVo.class);
    int i = (int)(paramString1.getSys_h() * YYGYContants.scaleUnite);
    switch (paramString1.getSys_moduleType())
    {
    default: 
      paramString1 = null;
    }
    for (;;)
    {
      if (paramString1 != null) {
        startBottomActivity(paramString2, paramString1);
      }
      return i;
      if (this.locationManager.getActivity(paramString2) != null)
      {
        paramString1 = this.locationManager.getActivity(paramString2).getIntent();
        paramString1.putExtra("fPageid", paramString3);
      }
      else
      {
        paramString1 = new Intent(this, NavigationTab2.class);
        paramString1.putExtra("navJson", localFile.getAbsolutePath());
        paramString1.putExtra("fPageid", paramString3);
      }
    }
  }
  
  protected void createPageGroup()
  {
    Object localObject = new Intent(this, PageGroup.class);
    this.linearLayoutMiddle.removeAllViews();
    localObject = this.locationManager.startActivity("PageGroup", (Intent)localObject).getDecorView();
    this.linearLayoutMiddle.addView((View)localObject, new LinearLayout.LayoutParams(-1, -1));
    this.pageGroup = ((PageGroup)this.locationManager.getActivity("PageGroup"));
    this.pageGroup.goNextPage(this.clientBaseVo.getId(), this.clientBaseVo.getnPageId(), false, "", "");
  }
  
  public String getCheck(Context paramContext, String paramString)
  {
    int i = 0;
    paramContext = paramContext.getPackageManager();
    try
    {
      int j = paramContext.getPackageInfo(paramString, 64).signatures[0].hashCode();
      i = j;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
      }
    }
    return i;
  }
  
  public int getKey(Context paramContext, String paramString)
  {
    paramContext = paramContext.getPackageManager();
    try
    {
      int i = paramContext.getPackageInfo(paramString, 64).signatures[0].hashCode();
      return i;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return 0;
  }
  
  public LinearLayout getMainBg()
  {
    return this.linearLayoutMain;
  }
  
  public int getMinHeight()
  {
    return this.linearLayoutMain.getHeight();
  }
  
  public String getPKGName()
  {
    return HQCHApplication.getInstance().PKGNAME;
  }
  
  public void hiddenWall()
  {
    if ((this.wm != null) && (this.myFV != null) && (this.windowIsShow))
    {
      this.windowIsShow = false;
      this.wm.removeView(this.myFV);
    }
  }
  
  protected void initClient()
  {
    File localFile = new File(YYGYContants.mDirGenerator.getyygyPath() + "/10185912/.nomedia");
    if (!localFile.exists()) {
      localFile.mkdir();
    }
    localFile = new File(YYGYContants.mDirGenerator.getyygyPath() + ".nomedia");
    if (!localFile.exists()) {
      localFile.mkdir();
    }
    int i = YYGYContants.mHelper.getInitFlag();
    if (i == 0) {
      initClinetFromRecource();
    }
    for (;;)
    {
      return;
      if ((i != 0) && (YYGYContants.mHelper.getLastCopyTime() != null) && (!"2016-02-20 10:31:004".equals(YYGYContants.mHelper.getLastCopyTime())))
      {
        initClinetFromRecource();
        return;
      }
      try
      {
        parserClientBase();
        initClientBase();
        createPageGroup();
        if (!this.manualCheckUpdate)
        {
          new FileUpdater(this, false, 0).execute(new Void[] { null });
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        initClinetFromRecource();
      }
    }
  }
  
  protected void initClientBase()
  {
    if ("1".equals(this.clientBaseVo.getFullScreenFlag())) {
      getWindow().setFlags(1024, 1024);
    }
    setTheme(16973840);
    FunctionPublic.setBackground(this.linearLayoutMain, "1", "", "ffffff");
    String str1;
    if (YYGYContants.mHelper.getVipFlag() == 0)
    {
      YYGYContants.mHelper.updateIsShowAD(this.clientBaseVo.getIsShowAD());
      YYGYContants.mHelper.updateIsShowWall(this.clientBaseVo.getIsWall());
      YYGYContants.mHelper.updateIsShowMore(this.clientBaseVo.getIsShowMore());
      YYGYContants.mHelper.updateShowWaterMarker(this.clientBaseVo.getStartPageWatermark());
      YYGYContants.mHelper.updateIsShowDeclare(this.clientBaseVo.getDisclaimerDeclare());
      YYGYContants.mHelper.updateIsVip(this.clientBaseVo.getIsVip());
      if (this.clientBaseVo.getShareUrl() != null) {
        break label204;
      }
      str1 = "";
      if (this.clientBaseVo.getShareContent() != null) {
        break label215;
      }
    }
    label204:
    label215:
    for (String str2 = "";; str2 = this.clientBaseVo.getShareContent())
    {
      YYGYContants.mHelper.updateWeiboShareContent(str2 + " " + str1);
      YYGYContants.mHelper.updateVipFlag();
      return;
      str1 = this.clientBaseVo.getShareUrl();
      break;
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 == -1)
    {
      Toast.makeText(this, 2131230734, 0).show();
      return;
    }
    YYGYContants.mHelper.updateLastCopyTime("2016-02-20 10:31:004");
    try
    {
      parserClientBase();
      initClientBase();
      createPageGroup();
      new FileUpdater(this, false, 0).execute(new Void[] { null });
      return;
    }
    catch (Exception paramIntent)
    {
      paramIntent.printStackTrace();
    }
  }
  
  public void onClick(View paramView)
  {
    this.myMenu.dismiss();
    switch (paramView.getId())
    {
    case 2131362424: 
    default: 
    case 2131362423: 
    case 2131362422: 
      do
      {
        return;
        startActivity(new Intent(this, SetAct.class));
        return;
        this.manualCheckUpdate = true;
        if (this.fileUpdater == null) {
          this.fileUpdater = new FileUpdater(this, true, 0);
        }
      } while (this.fileUpdater.isCancelled());
      this.fileUpdater.execute(new Void[] { null });
      this.fileUpdater = null;
      return;
    }
    finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903126);
    HQCHApplication.mainActivity = this;
    this.myMenu = new d(this, this);
    paramBundle = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics(paramBundle);
    YYGYContants.screenHeight = paramBundle.heightPixels;
    int i = paramBundle.widthPixels;
    YYGYContants.screenWidth = i;
    YYGYContants.scaleUnite = ClientInitInfoHelpler.getScaleFloat(i);
    YYGYContants.dpi = paramBundle.densityDpi;
    YYGYContants.dpiScaleUnite = ClientInitInfoHelpler.getScaleDipFloat(paramBundle.densityDpi);
    YYGYContants.PRODUCT_INFO_HEIGHT = PublicUtil.dip2px(YYGYContants.PRODUCT_INFO_BASEHEIGHT);
    this.linearLayoutMain = ((LinearLayout)findViewById(2131362418));
    this.linearLayoutMiddle = ((LinearLayout)findViewById(2131362420));
    this.linearLayoutBottom = ((LinearLayout)findViewById(2131362421));
    this.img = ((ImageView)findViewById(2131362419));
    this.locationManager = getLocalActivityManager();
    if (HQCHApplication.instance.getResourceDir() == null) {
      showSDCardErrorMessage();
    }
    for (;;)
    {
      if (PreferenceManager.getDefaultSharedPreferences(this).getBoolean("lbs_on_off", HQCHApplication.isLBSopen)) {
        startService(new Intent(this, LBSService.class));
      }
      getLocation();
      createView();
      new PublicRequest().checkAppState();
      return;
      this.sdcardPath = (HQCHApplication.instance.getResourceDir() + File.separator);
      initClient();
    }
  }
  
  protected void onDestroy()
  {
    hiddenWall();
    PublicRequest.updateLogFile();
    new PublicRequest().saveUseLog("1", PublicRequest.getLogFile());
    super.onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (paramInt == 4)
    {
      this.myMenu.dismiss();
      if (this.pageGroup == null)
      {
        finish();
        bool = true;
      }
    }
    while (paramInt != 82) {
      for (;;)
      {
        return bool;
        this.pageGroup.onKeyDown(paramInt, paramKeyEvent);
      }
    }
    if (this.myMenu.isShowing())
    {
      this.myMenu.dismiss();
      return false;
    }
    this.myMenu.showAtLocation(this.linearLayoutMain, 80, 0, 0);
    return false;
  }
  
  protected void onPause()
  {
    super.onPause();
    hiddenWall();
  }
  
  protected void onResume()
  {
    HQCHApplication.mainActivity = this;
    if (("1".equals(YYGYContants.mHelper.getIsShowWall())) || (YYGYContants.VIP_0.equals(YYGYContants.mHelper.getIsVip()))) {
      HQCHApplication.mainActivity.showWall();
    }
    super.onResume();
  }
  
  protected void parserClientBase()
  {
    File localFile = new File(HQCHApplication.instance.getResourceDir(), "clientBase.json");
    if (checkCilentBase(localFile))
    {
      this.img.setVisibility(8);
      this.clientBaseVo = ((ClientBaseVo)JsonParserUtil.parseJson2Vo(new FileInputStream(localFile), ClientBaseVo.class));
      if (this.clientBaseVo != null)
      {
        if (!StringUtil.isNotNull(this.clientBaseVo.getStyle_userCenterNavBgColor())) {
          break label86;
        }
        YYGYContants.PERSIONCENTER_TOP_COLOR = this.clientBaseVo.getStyle_userCenterNavBgColor();
      }
    }
    return;
    label86:
    YYGYContants.PERSIONCENTER_TOP_COLOR = YYGYContants.PERSIONCENTER_DEFAULT_COLOR;
  }
  
  public void setWallNum(String paramString)
  {
    if (this.myFV != null)
    {
      if ((!"".equals(paramString)) && (!"0".equals(paramString)))
      {
        this.myFV.setNum(paramString);
        this.myFV.showHiddenNum(true);
      }
    }
    else {
      return;
    }
    this.myFV.showHiddenNum(false);
  }
  
  public void showWall()
  {
    if ((this.wm != null) && (this.myFV != null) && (!this.windowIsShow))
    {
      this.windowIsShow = true;
      this.wm.addView(this.myFV, this.wmParams);
    }
  }
  
  protected void startBottomActivity(String paramString, Intent paramIntent)
  {
    this.linearLayoutBottom.removeAllViews();
    paramString = this.locationManager.startActivity(paramString, paramIntent).getDecorView();
    this.linearLayoutBottom.addView(paramString, new LinearLayout.LayoutParams(-1, -1));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/ckj10185912/Main.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */