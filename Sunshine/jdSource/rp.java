import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import cn.apppark.vertify.activity.tieba.TBaseParam;
import cn.apppark.vertify.adapter.TEmojiCellAdapter;

public final class rp
  implements AdapterView.OnItemClickListener
{
  public rp(Context paramContext, EditText paramEditText, TEmojiCellAdapter paramTEmojiCellAdapter) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    TBaseParam.setFace(this.a, this.b, this.c.getFaceId(paramInt), this.c.getFaceStr(paramInt));
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/rp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */