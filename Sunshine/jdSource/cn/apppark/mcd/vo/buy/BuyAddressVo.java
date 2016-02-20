package cn.apppark.mcd.vo.buy;

public class BuyAddressVo
  extends BuyBaseReturnVo
{
  private static final long serialVersionUID = 1L;
  private String address;
  private String address1;
  private String address2;
  private String areaId;
  private String id;
  private String isDefault;
  private boolean isEdit = false;
  private String name;
  private String phone;
  private String postalcode;
  
  public static long getSerialversionuid()
  {
    return 1L;
  }
  
  public String getAddress()
  {
    return this.address;
  }
  
  public String getAddress1()
  {
    return this.address1;
  }
  
  public String getAddress2()
  {
    return this.address2;
  }
  
  public String getAreaId()
  {
    return this.areaId;
  }
  
  public String getId()
  {
    return this.id;
  }
  
  public String getIsDefault()
  {
    return this.isDefault;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getPhone()
  {
    return this.phone;
  }
  
  public String getPostalcode()
  {
    return this.postalcode;
  }
  
  public boolean isEdit()
  {
    return this.isEdit;
  }
  
  public void setAddress(String paramString)
  {
    this.address = paramString;
  }
  
  public void setAddress1(String paramString)
  {
    this.address1 = paramString;
  }
  
  public void setAddress2(String paramString)
  {
    this.address2 = paramString;
  }
  
  public void setAreaId(String paramString)
  {
    this.areaId = paramString;
  }
  
  public void setEdit(boolean paramBoolean)
  {
    this.isEdit = paramBoolean;
  }
  
  public void setId(String paramString)
  {
    this.id = paramString;
  }
  
  public void setIsDefault(String paramString)
  {
    this.isDefault = paramString;
  }
  
  public void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public void setPhone(String paramString)
  {
    this.phone = paramString;
  }
  
  public void setPostalcode(String paramString)
  {
    this.postalcode = paramString;
  }
  
  public String toString()
  {
    return "BuyAddressVo [id=" + this.id + ", name=" + this.name + ", phone=" + this.phone + ", areaId=" + this.areaId + ", address=" + this.address + ", address1=" + this.address1 + ", address2=" + this.address2 + ", postalcode=" + this.postalcode + ", isDefault=" + this.isDefault + "]";
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/mcd/vo/buy/BuyAddressVo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */