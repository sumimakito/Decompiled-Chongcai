package cn.apppark.vertify.activity;

import android.content.Context;
import android.widget.ScrollView;
import ay;
import az;
import ba;
import bb;
import bc;
import bd;
import be;
import bf;
import bg;
import bh;
import bi;
import bj;
import cn.apppark.ckj10185912.HQCHApplication;
import cn.apppark.mcd.util.jsonparse.JsonParserUtil;
import cn.apppark.mcd.vo.base.FreePageVo;
import cn.apppark.mcd.vo.dyn.Dyn5001Vo;
import cn.apppark.mcd.vo.dyn.Dyn5006Vo;
import cn.apppark.mcd.vo.dyn.Dyn5007Vo;
import cn.apppark.mcd.vo.dyn.Dyn5008Vo;
import cn.apppark.mcd.vo.dyn.DynMsgListVo;
import cn.apppark.mcd.vo.dyn.DynProductVo;
import cn.apppark.mcd.vo.dyn.DynRss5003Vo;
import cn.apppark.mcd.vo.dyn.STogetherItemVo;
import cn.apppark.mcd.vo.free.Self360ItemVo;
import cn.apppark.mcd.vo.free.Self720ItemVo;
import cn.apppark.mcd.vo.free.SelfAnimaItemVo;
import cn.apppark.mcd.vo.free.SelfDefineItemVo;
import cn.apppark.mcd.vo.free.SelfGalleryItemVo;
import cn.apppark.mcd.vo.free.SelfGridItemVo;
import cn.apppark.mcd.vo.free.SelfListViewItemVo;
import cn.apppark.mcd.vo.free.SelfMutiListViewItemVo;
import cn.apppark.mcd.vo.free.SelfWebItemVo;
import cn.apppark.vertify.activity.free.dyn.DynMapUrl5008;
import cn.apppark.vertify.activity.free.dyn.DynMsgCard5011;
import cn.apppark.vertify.activity.free.dyn.DynMsgGalleryText5010;
import cn.apppark.vertify.activity.free.dyn.DynMsgList5002;
import cn.apppark.vertify.activity.free.dyn.DynMsgSubmit5001;
import cn.apppark.vertify.activity.free.dyn.DynMsgWater5012;
import cn.apppark.vertify.activity.free.dyn.DynPersonCenter5006;
import cn.apppark.vertify.activity.free.dyn.DynPorductList5004;
import cn.apppark.vertify.activity.free.dyn.DynProductCard5014;
import cn.apppark.vertify.activity.free.dyn.DynProductGalleryText5013;
import cn.apppark.vertify.activity.free.dyn.DynProductNine5005;
import cn.apppark.vertify.activity.free.dyn.DynRss5003;
import cn.apppark.vertify.activity.free.dyn.DynSearch5007;
import cn.apppark.vertify.activity.free.dyn.SMsgBase;
import cn.apppark.vertify.activity.free.dyn.SProductBase;
import cn.apppark.vertify.activity.free.dyn.STogetherBase;
import cn.apppark.vertify.activity.free.self.Self360View;
import cn.apppark.vertify.activity.free.self.Self720View;
import cn.apppark.vertify.activity.free.self.SelfAnimaView;
import cn.apppark.vertify.activity.free.self.SelfButtonView;
import cn.apppark.vertify.activity.free.self.SelfImageView;
import cn.apppark.vertify.activity.free.self.SelfMp3View;
import cn.apppark.vertify.activity.free.self.SelfMp4View;
import cn.apppark.vertify.activity.free.self.SelfMultLineTextView;
import cn.apppark.vertify.activity.free.self.SelfRichTextView;
import cn.apppark.vertify.activity.free.self.SelfSignLineTextView;
import cn.apppark.vertify.activity.free.self.SelfWebView;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView4011;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView4012;
import cn.apppark.vertify.activity.free.typegallery.SelfGalleryView4013;
import cn.apppark.vertify.activity.free.typelist.SelfListView4001;
import cn.apppark.vertify.activity.free.typelist.SelfListView4002;
import cn.apppark.vertify.activity.free.typelist.SelfListView4003;
import cn.apppark.vertify.activity.free.typelist.SelfMutiListView;
import cn.apppark.vertify.activity.free.typenine.SelfGridView;
import cn.apppark.vertify.activity.free.typenine.SelfGridView4006;
import cn.apppark.vertify.activity.free.typenine.SelfGridView4007;
import cn.apppark.vertify.activity.free.typenine.SelfGridView4008;
import com.google.gson.JsonElement;
import java.io.PrintStream;

public class FreeViewFactory
{
  public static ISelfView getInstance(int paramInt, FreeAct paramFreeAct, Context paramContext, ScrollView paramScrollView, JsonElement paramJsonElement, FreePageVo paramFreePageVo)
  {
    if (HQCHApplication.DEBUG) {
      System.out.println("model pagetype:" + paramInt);
    }
    switch (paramInt)
    {
    default: 
    case 1: 
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
    case 7: 
    case 8: 
    case 9: 
    case 10: 
    case 11: 
    case 12: 
    case 13: 
    case 14: 
    case 15: 
    case 4001: 
    case 4002: 
    case 4003: 
    case 4006: 
    case 4007: 
    case 4008: 
    case 4011: 
    case 4012: 
    case 4013: 
      do
      {
        do
        {
          return null;
          return new SelfButtonView(paramContext, (SelfDefineItemVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, SelfDefineItemVo.class), paramFreePageVo);
          return new SelfImageView(paramContext, (SelfDefineItemVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, SelfDefineItemVo.class), paramFreePageVo);
          return new SelfSignLineTextView(paramContext, (SelfDefineItemVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, SelfDefineItemVo.class));
          return new SelfMultLineTextView(paramContext, (SelfDefineItemVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, SelfDefineItemVo.class), paramScrollView);
          return new SelfMp4View(paramContext, (SelfDefineItemVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, SelfDefineItemVo.class));
          return new SelfMp3View(paramContext, (SelfDefineItemVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, SelfDefineItemVo.class));
          paramFreeAct = new ay().getType();
          return new SelfListView4001(paramContext, paramFreePageVo, (SelfListViewItemVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, SelfListViewItemVo.class), JsonParserUtil.parseJsonElement2List(paramJsonElement, paramFreeAct), paramScrollView);
          paramFreeAct = new bc().getType();
          return new SelfMutiListView(paramContext, paramFreePageVo, (SelfMutiListViewItemVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, SelfMutiListViewItemVo.class), JsonParserUtil.parseJsonElement2List(paramJsonElement, paramFreeAct), paramScrollView);
          return new SelfGridView(paramContext, paramFreePageVo, (SelfGridItemVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, SelfGridItemVo.class), JsonParserUtil.parseJsonElement2List(paramJsonElement, new bd().getType()), paramScrollView);
          return new SelfGalleryView(paramContext, paramFreePageVo, (SelfGalleryItemVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, SelfGalleryItemVo.class), JsonParserUtil.parseJsonElement2List(paramJsonElement, new be().getType()));
          return new SelfAnimaView(paramContext, paramFreePageVo, (SelfAnimaItemVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, SelfAnimaItemVo.class), JsonParserUtil.parseJsonElement2List(paramJsonElement, new bf().getType()));
          return new Self360View(paramContext, (Self360ItemVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, Self360ItemVo.class), JsonParserUtil.parseJsonElement2List(paramJsonElement, new bg().getType()), paramScrollView);
          return new Self720View(paramContext, (Self720ItemVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, Self720ItemVo.class), paramScrollView);
          return new SelfRichTextView(paramContext, (SelfDefineItemVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, SelfDefineItemVo.class), paramScrollView);
          return new SelfWebView(paramContext, (SelfWebItemVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, SelfWebItemVo.class), paramScrollView);
          paramFreeAct = new bh().getType();
          return new SelfListView4001(paramContext, paramFreePageVo, (SelfListViewItemVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, SelfListViewItemVo.class), JsonParserUtil.parseJsonElement2List(paramJsonElement, paramFreeAct), paramScrollView);
          paramFreeAct = new bi().getType();
          return new SelfListView4002(paramContext, paramFreePageVo, (SelfListViewItemVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, SelfListViewItemVo.class), JsonParserUtil.parseJsonElement2List(paramJsonElement, paramFreeAct), paramScrollView);
          paramFreeAct = new bj().getType();
          return new SelfListView4003(paramContext, paramFreePageVo, (SelfListViewItemVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, SelfListViewItemVo.class), JsonParserUtil.parseJsonElement2List(paramJsonElement, paramFreeAct), paramScrollView);
          paramFreeAct = (SelfGridItemVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, SelfGridItemVo.class);
          paramJsonElement = JsonParserUtil.parseJsonElement2List(paramJsonElement, new az().getType());
          if (paramInt == 4006) {
            return new SelfGridView4006(paramContext, paramFreePageVo, paramFreeAct, paramJsonElement, paramScrollView);
          }
          if (paramInt == 4007) {
            return new SelfGridView4007(paramContext, paramFreePageVo, paramFreeAct, paramJsonElement, paramScrollView);
          }
        } while (paramInt != 4008);
        return new SelfGridView4008(paramContext, paramFreePageVo, paramFreeAct, paramJsonElement, paramScrollView);
        paramFreeAct = (SelfGalleryItemVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, SelfGalleryItemVo.class);
        paramScrollView = JsonParserUtil.parseJsonElement2List(paramJsonElement, new ba().getType());
        if (paramInt == 4011) {
          return new SelfGalleryView4011(paramContext, paramFreePageVo, paramFreeAct, paramScrollView);
        }
        if (paramInt == 4012) {
          return new SelfGalleryView4012(paramContext, paramFreePageVo, paramFreeAct, paramScrollView);
        }
      } while (paramInt != 4013);
      return new SelfGalleryView4013(paramContext, paramFreePageVo, paramFreeAct, paramScrollView);
    case 5001: 
      return new DynMsgSubmit5001(paramContext, paramFreePageVo, (Dyn5001Vo)JsonParserUtil.JsonElement2Obj(paramJsonElement, Dyn5001Vo.class), JsonParserUtil.parseJsonElement2List(paramJsonElement, new bb().getType()), paramFreeAct.scroll, paramFreeAct);
    case 5002: 
      return new DynMsgList5002(paramContext, paramFreePageVo, (DynMsgListVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, DynMsgListVo.class), paramFreeAct.scroll);
    case 5003: 
      return new DynRss5003(paramContext, paramFreePageVo, (DynRss5003Vo)JsonParserUtil.JsonElement2Obj(paramJsonElement, DynRss5003Vo.class), paramFreeAct.scroll);
    case 5004: 
      return new DynPorductList5004(paramContext, paramFreePageVo, (DynProductVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, DynProductVo.class), paramFreeAct.scroll);
    case 5005: 
      return new DynProductNine5005(paramContext, paramFreePageVo, (DynProductVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, DynProductVo.class), paramFreeAct.scroll);
    case 5006: 
      return new DynPersonCenter5006(paramContext, (Dyn5006Vo)JsonParserUtil.JsonElement2Obj(paramJsonElement, Dyn5006Vo.class), paramFreeAct.scroll, paramFreeAct);
    case 5007: 
      return new DynSearch5007(paramContext, (Dyn5007Vo)JsonParserUtil.JsonElement2Obj(paramJsonElement, Dyn5007Vo.class));
    case 5008: 
      return new DynMapUrl5008(paramContext, (Dyn5008Vo)JsonParserUtil.JsonElement2Obj(paramJsonElement, Dyn5008Vo.class), paramFreeAct.scroll);
    case 5010: 
      return new DynMsgGalleryText5010(paramContext, paramFreePageVo, (DynMsgListVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, DynMsgListVo.class), paramFreeAct.scroll);
    case 5011: 
      return new DynMsgCard5011(paramContext, paramFreePageVo, (DynMsgListVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, DynMsgListVo.class), paramFreeAct.scroll);
    case 5012: 
      return new DynMsgWater5012(paramContext, paramFreePageVo, (DynMsgListVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, DynMsgListVo.class), paramFreeAct.scroll);
    case 5013: 
      return new DynProductGalleryText5013(paramContext, paramFreePageVo, (DynProductVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, DynProductVo.class), paramFreeAct.scroll);
    case 5014: 
      return new DynProductCard5014(paramContext, paramFreePageVo, (DynProductVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, DynProductVo.class), paramFreeAct.scroll);
    case 5021: 
      return new SMsgBase(paramContext, paramFreePageVo, (DynMsgListVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, DynMsgListVo.class), paramFreeAct.scroll);
    case 5022: 
      return new SMsgBase(paramContext, paramFreePageVo, (DynMsgListVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, DynMsgListVo.class), paramFreeAct.scroll);
    case 5023: 
      return new SMsgBase(paramContext, paramFreePageVo, (DynMsgListVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, DynMsgListVo.class), paramFreeAct.scroll);
    case 5031: 
      return new SProductBase(paramContext, paramFreePageVo, (DynProductVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, DynProductVo.class), paramFreeAct.scroll);
    case 5032: 
      return new SProductBase(paramContext, paramFreePageVo, (DynProductVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, DynProductVo.class), paramFreeAct.scroll);
    case 5033: 
      return new SProductBase(paramContext, paramFreePageVo, (DynProductVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, DynProductVo.class), paramFreeAct.scroll);
    }
    return new STogetherBase(paramContext, paramFreePageVo, (STogetherItemVo)JsonParserUtil.JsonElement2Obj(paramJsonElement, STogetherItemVo.class), paramFreeAct.scroll);
  }
}


/* Location:              /Users/makito/Apktool/sunshine_app.apk/classes-dex2jar.jar!/cn/apppark/vertify/activity/FreeViewFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */