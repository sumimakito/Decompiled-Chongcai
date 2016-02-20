package cn.apppark.mcd.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.preference.DialogPreference;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TimePicker;

public class TimePreference
  extends DialogPreference
{
  private Context context;
  private TimePicker mPicker;
  
  public TimePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
    setDialogLayoutResource(2130903239);
  }
  
  public TimePicker getTimePicker()
  {
    return this.mPicker;
  }
  
  public void initValue(int paramInt1, int paramInt2)
  {
    this.mPicker.setCurrentHour(Integer.valueOf(paramInt1));
    this.mPicker.setCurrentMinute(Integer.valueOf(paramInt2));
  }
  
  protected void onBindDialogView(View paramView)
  {
    super.onBindDialogView(paramView);
    this.mPicker = ((TimePicker)paramView.findViewById(2131363009));
    if (this.mPicker != null)
    {
      this.mPicker.setIs24HourView(Boolean.valueOf(true));
      paramView = findPreferenceInHierarchy(getKey()).getSummary().toString();
      int i = Integer.parseInt(paramView.split(":")[0]);
      int j = Integer.parseInt(paramView.split(":")[1]);
      this.mPicker.setCurrentHour(Integer.valueOf(i));
      this.mPicker.setCurrentMinute(Integer.valueOf(j));
    }
  }
  
  protected void onDialogClosed(boolean paramBoolean)
  {
    super.onDialogClosed(paramBoolean);
    if (paramBoolean) {
      if (this.mPicker.getCurrentMinute().intValue() >= 10) {
        break label74;
      }
    }
    label74:
    for (String str = this.mPicker.getCurrentHour() + ":0" + this.mPicker.getCurrentMinute();; str = this.mPicker.getCurrentHour() + ":" + this.mPicker.getCurrentMinute())
    {
      if (callChangeListener(str)) {
        setValue(str);
      }
      return;
    }
  }
  
  protected Object onGetDefaultValue(TypedArray paramTypedArray, int paramInt)
  {
    return paramTypedArray.getString(paramInt);
  }
  
  protected void onSetInitialValue(boolean paramBoolean, Object paramObject) {}
  
  public void setValue(String paramString)
  {
    boolean bool1 = shouldDisableDependents();
    persistString(paramString);
    boolean bool2 = shouldDisableDependents();
    if (bool2 != bool1) {
      notifyDependencyChange(bool2);
    }
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/widget/TimePreference.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */