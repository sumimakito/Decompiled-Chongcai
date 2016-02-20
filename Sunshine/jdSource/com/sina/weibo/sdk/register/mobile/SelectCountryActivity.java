package com.sina.weibo.sdk.register.mobile;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.sina.weibo.sdk.component.view.TitleBar;
import com.sina.weibo.sdk.component.view.TitleBar.ListenerOnTitleBtnClicked;
import com.sina.weibo.sdk.utils.ResourceManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class SelectCountryActivity
  extends Activity
  implements LetterIndexBar.OnIndexChangeListener
{
  private static final String CHINA_CN = "中国";
  private static final String CHINA_EN = "China";
  private static final String CHINA_TW = "中國";
  public static final String EXTRA_COUNTRY_CODE = "code";
  public static final String EXTRA_COUNTRY_NAME = "name";
  private static final String INFO_CN = "常用";
  private static final String INFO_EN = "Common";
  private static final String INFO_TW = "常用";
  private static final String SELECT_COUNTRY_EN = "Region";
  private static final String SELECT_COUNTRY_ZH_CN = "选择国家";
  private static final String SELECT_COUNTRY_ZH_TW = "選擇國家";
  private List<Country>[] arrSubCountry;
  String countryStr = "";
  private List<IndexCountry> indexCountries = new ArrayList();
  private CountryAdapter mAdapter;
  private List<Country> mCountries;
  private FrameLayout mFrameLayout;
  private LetterIndexBar mLetterIndexBar;
  private ListView mListView;
  private RelativeLayout mMainLayout;
  private CountryList result;
  
  private List<IndexCountry> compose(List<Country>[] paramArrayOfList)
  {
    ArrayList localArrayList = new ArrayList();
    int i;
    if (paramArrayOfList != null)
    {
      i = 0;
      if (i < paramArrayOfList.length) {}
    }
    else
    {
      return localArrayList;
    }
    List<Country> localList = paramArrayOfList[i];
    int j;
    if ((localList != null) && (localList.size() > 0)) {
      j = 0;
    }
    for (;;)
    {
      if (j >= localList.size())
      {
        i += 1;
        break;
      }
      if (j == 0) {
        localArrayList.add(new IndexCountry(i, -1));
      }
      localArrayList.add(new IndexCountry(i, j));
      j += 1;
    }
  }
  
  private void initView()
  {
    this.mMainLayout = new RelativeLayout(this);
    Object localObject = new RelativeLayout.LayoutParams(-1, -1);
    this.mMainLayout.setLayoutParams((ViewGroup.LayoutParams)localObject);
    localObject = new TitleBar(this);
    ((TitleBar)localObject).setId(1);
    ((TitleBar)localObject).setLeftBtnBg(ResourceManager.createStateListDrawable(this, "weibosdk_navigationbar_back.png", "weibosdk_navigationbar_back_highlighted.png"));
    ((TitleBar)localObject).setTitleBarText(ResourceManager.getString(this, "Region", "选择国家", "選擇國家"));
    ((TitleBar)localObject).setTitleBarClickListener(new TitleBar.ListenerOnTitleBtnClicked()
    {
      public void onLeftBtnClicked()
      {
        SelectCountryActivity.this.setResult(0);
        SelectCountryActivity.this.finish();
      }
    });
    this.mMainLayout.addView((View)localObject);
    this.mFrameLayout = new FrameLayout(this);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams.addRule(3, ((TitleBar)localObject).getId());
    this.mFrameLayout.setLayoutParams(localLayoutParams);
    this.mMainLayout.addView(this.mFrameLayout);
    this.mListView = new ListView(this);
    localObject = new AbsListView.LayoutParams(-1, -1);
    this.mListView.setLayoutParams((ViewGroup.LayoutParams)localObject);
    this.mListView.setFadingEdgeLength(0);
    this.mListView.setSelector(new ColorDrawable(0));
    this.mListView.setDividerHeight(ResourceManager.dp2px(this, 1));
    this.mListView.setCacheColorHint(0);
    this.mListView.setDrawSelectorOnTop(false);
    this.mListView.setScrollingCacheEnabled(false);
    this.mListView.setScrollbarFadingEnabled(false);
    this.mListView.setVerticalScrollBarEnabled(false);
    this.mListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (Country)SelectCountryActivity.this.mAdapter.getItem(paramAnonymousInt);
        if (paramAnonymousAdapterView == null) {
          return;
        }
        paramAnonymousView = new Intent();
        paramAnonymousView.putExtra("code", paramAnonymousAdapterView.getCode());
        paramAnonymousView.putExtra("name", paramAnonymousAdapterView.getName());
        SelectCountryActivity.this.setResult(-1, paramAnonymousView);
        SelectCountryActivity.this.finish();
      }
    });
    this.mFrameLayout.addView(this.mListView);
    this.mAdapter = new CountryAdapter(null);
    this.mListView.setAdapter(this.mAdapter);
    this.mLetterIndexBar = new LetterIndexBar(this);
    this.mLetterIndexBar.setIndexChangeListener(this);
    localObject = new FrameLayout.LayoutParams(-2, -1);
    ((FrameLayout.LayoutParams)localObject).gravity = 5;
    this.mLetterIndexBar.setLayoutParams((ViewGroup.LayoutParams)localObject);
    this.mFrameLayout.addView(this.mLetterIndexBar);
    PinyinUtils.getInstance(this);
    localObject = ResourceManager.getLanguage();
    if (Locale.SIMPLIFIED_CHINESE.equals(localObject)) {
      this.countryStr = ResourceManager.readCountryFromAsset(this, "countryCode.txt");
    }
    for (;;)
    {
      this.result = new CountryList(this.countryStr);
      this.mCountries = this.result.countries;
      this.arrSubCountry = subCountries(this.mCountries);
      this.indexCountries = compose(this.arrSubCountry);
      this.mAdapter.notifyDataSetChanged();
      setContentView(this.mMainLayout);
      return;
      if (Locale.TRADITIONAL_CHINESE.equals(localObject)) {
        this.countryStr = ResourceManager.readCountryFromAsset(this, "countryCodeTw.txt");
      } else {
        this.countryStr = ResourceManager.readCountryFromAsset(this, "countryCodeEn.txt");
      }
    }
  }
  
  private List<Country>[] subCountries(List<Country> paramList)
  {
    ArrayList[] arrayOfArrayList = new ArrayList[27];
    Country localCountry = new Country();
    localCountry.setCode("0086");
    localCountry.setName(ResourceManager.getString(this, "China", "中国", "中國"));
    arrayOfArrayList[0] = new ArrayList();
    arrayOfArrayList[0].add(localCountry);
    int i = 0;
    if (i >= paramList.size()) {
      return arrayOfArrayList;
    }
    localCountry = (Country)paramList.get(i);
    if ((localCountry.getCode().equals("00852")) || (localCountry.getCode().equals("00853")) || (localCountry.getCode().equals("00886"))) {
      arrayOfArrayList[0].add(localCountry);
    }
    for (;;)
    {
      i += 1;
      break;
      int j = localCountry.getPinyin().charAt(0) - 'a' + 1;
      if (arrayOfArrayList[j] == null) {
        arrayOfArrayList[j] = new ArrayList();
      }
      arrayOfArrayList[j].add(localCountry);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    initView();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
  }
  
  public void onIndexChange(int paramInt)
  {
    if ((this.arrSubCountry != null) && (paramInt < this.arrSubCountry.length) && (this.arrSubCountry[paramInt] != null)) {
      this.mListView.setSelection(this.indexCountries.indexOf(new IndexCountry(paramInt, -1)));
    }
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  private class CountryAdapter
    extends BaseAdapter
  {
    private CountryAdapter() {}
    
    private SelectCountryTitleView createTitleView(int paramInt)
    {
      SelectCountryTitleView localSelectCountryTitleView = new SelectCountryTitleView(SelectCountryActivity.this.getApplicationContext());
      if (paramInt == 0)
      {
        localSelectCountryTitleView.setTitle(ResourceManager.getString(SelectCountryActivity.this, "Common", "常用", "常用"));
        return localSelectCountryTitleView;
      }
      localSelectCountryTitleView.setTitle(String.valueOf((char)(paramInt + 65 - 1)));
      return localSelectCountryTitleView;
    }
    
    public int getCount()
    {
      if (SelectCountryActivity.this.indexCountries != null) {
        return SelectCountryActivity.this.indexCountries.size();
      }
      return 0;
    }
    
    public Object getItem(int paramInt)
    {
      if ((SelectCountryActivity.this.indexCountries == null) || (SelectCountryActivity.this.indexCountries.isEmpty())) {}
      SelectCountryActivity.IndexCountry localIndexCountry;
      do
      {
        do
        {
          return null;
        } while (paramInt == SelectCountryActivity.this.indexCountries.size());
        localIndexCountry = (SelectCountryActivity.IndexCountry)SelectCountryActivity.this.indexCountries.get(paramInt);
      } while (localIndexCountry.indexInList == -1);
      return SelectCountryActivity.this.arrSubCountry[localIndexCountry.indexInListArray].get(localIndexCountry.indexInList);
    }
    
    public long getItemId(int paramInt)
    {
      return 0L;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      paramViewGroup = (SelectCountryActivity.IndexCountry)SelectCountryActivity.this.indexCountries.get(paramInt);
      if (paramView == null)
      {
        if (paramViewGroup.indexInList == -1) {
          return createTitleView(paramViewGroup.indexInListArray);
        }
        paramView = (Country)SelectCountryActivity.this.arrSubCountry[paramViewGroup.indexInListArray].get(paramViewGroup.indexInList);
        return new SelectCountryItemView(SelectCountryActivity.this, paramView.getName(), paramView.getCode());
      }
      if (paramViewGroup.indexInList == -1) {
        if ((paramView instanceof SelectCountryTitleView)) {
          if (paramViewGroup.indexInListArray == 0) {
            ((SelectCountryTitleView)paramView).update(ResourceManager.getString(SelectCountryActivity.this, "Common", "常用", "常用"));
          }
        }
      }
      for (;;)
      {
        return paramView;
        paramView = createTitleView(paramViewGroup.indexInListArray);
        continue;
        paramView = createTitleView(paramViewGroup.indexInListArray);
        continue;
        paramViewGroup = (Country)SelectCountryActivity.this.arrSubCountry[paramViewGroup.indexInListArray].get(paramViewGroup.indexInList);
        if ((paramView instanceof SelectCountryTitleView)) {
          paramView = new SelectCountryItemView(SelectCountryActivity.this, paramViewGroup.getName(), paramViewGroup.getCode());
        } else {
          ((SelectCountryItemView)paramView).updateContent(paramViewGroup.getName(), paramViewGroup.getCode());
        }
      }
    }
  }
  
  private class IndexCountry
  {
    int indexInList;
    int indexInListArray;
    
    IndexCountry(int paramInt1, int paramInt2)
    {
      this.indexInListArray = paramInt1;
      this.indexInList = paramInt2;
    }
    
    public boolean equals(Object paramObject)
    {
      if (!(paramObject instanceof IndexCountry)) {}
      do
      {
        do
        {
          return false;
        } while (this.indexInList != -1);
        paramObject = (IndexCountry)paramObject;
      } while ((this.indexInListArray != ((IndexCountry)paramObject).indexInListArray) || (this.indexInList != ((IndexCountry)paramObject).indexInList));
      return true;
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/com/sina/weibo/sdk/register/mobile/SelectCountryActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */