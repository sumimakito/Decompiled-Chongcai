package cn.apppark.mcd.vo.free;

import java.util.List;

public class SelfMutiListViewItem2VoParent
  extends SelfMutiListViewItem2Vo
{
  private List<SelfMutiListViewItem2Vo> childItemList;
  
  public List<SelfMutiListViewItem2Vo> getChildItemList()
  {
    return this.childItemList;
  }
  
  public void setChildItemList(List<SelfMutiListViewItem2Vo> paramList)
  {
    this.childItemList = paramList;
  }
  
  public String toString()
  {
    return "SelfMutiListViewItem2VoParent [childItemList=" + this.childItemList + "]";
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/free/SelfMutiListViewItem2VoParent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */