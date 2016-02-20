package cn.apppark.vertify.activity.buy;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.widget.Button;
import android.widget.ListView;
import android.widget.RelativeLayout;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.YYGYContants;
import cn.apppark.mcd.util.ButtonColorFilter;
import cn.apppark.mcd.util.FunctionPublic;
import cn.apppark.mcd.vo.buy.BuyBaseAreaVo;
import cn.apppark.vertify.activity.buy.adapter.BuySelAreaListAdapter;
import fs;
import ft;
import fu;
import java.io.File;
import java.util.ArrayList;

public class BuySelProvience
  extends Activity
{
  private static final int GET_WHAT = 1;
  public static String province_id;
  public static String province_name;
  public static BuySelArea selArea = null;
  public static BuySelCity selCity;
  public static BuySelProvience selProvience = null;
  private BuySelAreaListAdapter adapter;
  private Button btn_back;
  private Context context = this;
  private File f;
  private fu handler;
  private ListView listView;
  private RelativeLayout ll_topmenubg;
  private ArrayList<BuyBaseAreaVo> provinctList = new ArrayList();
  
  static
  {
    selCity = null;
  }
  
  private void getData()
  {
    new Thread(new ft(this)).start();
  }
  
  private void initWidget()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131361793);
    FunctionPublic.setBackgroundColor(YYGYContants.PERSIONCENTER_TOP_COLOR, localRelativeLayout);
    this.btn_back = ((Button)findViewById(2131362084));
    ButtonColorFilter.setButtonFocusChanged(this.btn_back);
    this.btn_back.setOnClickListener(new BuySelProvience.1(this));
    this.listView = ((ListView)findViewById(2131362085));
    this.listView.setOnItemClickListener(new fs(this));
  }
  
  public void getProSet(ArrayList<BuyBaseAreaVo> paramArrayList)
  {
    SQLiteDatabase localSQLiteDatabase = SQLiteDatabase.openOrCreateDatabase(this.f, null);
    Cursor localCursor = localSQLiteDatabase.query("proviences", null, null, null, null, null, null);
    while (localCursor.moveToNext())
    {
      BuyBaseAreaVo localBuyBaseAreaVo = new BuyBaseAreaVo();
      localBuyBaseAreaVo.setName(localCursor.getString(localCursor.getColumnIndexOrThrow("province")));
      localBuyBaseAreaVo.setId(localCursor.getInt(localCursor.getColumnIndexOrThrow("id")));
      localBuyBaseAreaVo.setProvience_id(localCursor.getString(localCursor.getColumnIndexOrThrow("province_id")));
      localBuyBaseAreaVo.setNext(true);
      paramArrayList.add(localBuyBaseAreaVo);
    }
    localCursor.close();
    localSQLiteDatabase.close();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == 1)
    {
      setResult(1, paramIntent);
      finish();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903074);
    this.handler = new fu(this);
    initWidget();
    this.f = new File(HQCHApplication.getInstance().generatePath("db_city.db"));
    if (this.f.exists())
    {
      getData();
      return;
    }
    HQCHApplication.getInstance().initToast("地区加载失败", 0);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/buy/BuySelProvience.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */