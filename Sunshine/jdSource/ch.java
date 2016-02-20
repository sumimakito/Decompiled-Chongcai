import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.ckj10185912.Main;
import cn.apppark.mcd.vo.dyn.DynMsgListReturnVo;
import cn.apppark.vertify.activity.buy.BuyCollectionMsgList;
import cn.apppark.vertify.activity.free.dyn.DynMsgDetail;
import java.util.ArrayList;

public final class ch
  implements AdapterView.OnItemClickListener
{
  public ch(BuyCollectionMsgList paramBuyCollectionMsgList) {}
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = new Intent(HQCHApplication.mainActivity, DynMsgDetail.class);
    paramAdapterView.putExtra("type", 2);
    paramView = new Bundle();
    DynMsgListReturnVo localDynMsgListReturnVo = (DynMsgListReturnVo)BuyCollectionMsgList.c(this.a).get(paramInt - 1);
    localDynMsgListReturnVo.setId(localDynMsgListReturnVo.getNewsId());
    paramView.putSerializable("vo", localDynMsgListReturnVo);
    paramAdapterView.putExtra("bund", paramView);
    HQCHApplication.mainActivity.startActivity(paramAdapterView);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/ch.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */