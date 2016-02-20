.class public Lcn/apppark/vertify/activity/FreeViewFactory;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(ILcn/apppark/vertify/activity/FreeAct;Landroid/content/Context;Landroid/widget/ScrollView;Lcom/google/gson/JsonElement;Lcn/apppark/mcd/vo/base/FreePageVo;)Lcn/apppark/vertify/activity/ISelfView;
    .locals 7

    sget-boolean v0, Lcn/apppark/ckj10185912/HQCHApplication;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "model pagetype:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0

    :sswitch_0
    const-class v0, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/self/SelfButtonView;

    invoke-direct {v1, p2, v0, p5}, Lcn/apppark/vertify/activity/free/self/SelfButtonView;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfDefineItemVo;Lcn/apppark/mcd/vo/base/FreePageVo;)V

    move-object v0, v1

    goto :goto_0

    :sswitch_1
    const-class v0, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/self/SelfImageView;

    invoke-direct {v1, p2, v0, p5}, Lcn/apppark/vertify/activity/free/self/SelfImageView;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfDefineItemVo;Lcn/apppark/mcd/vo/base/FreePageVo;)V

    move-object v0, v1

    goto :goto_0

    :sswitch_2
    const-class v0, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/self/SelfSignLineTextView;

    invoke-direct {v1, p2, v0}, Lcn/apppark/vertify/activity/free/self/SelfSignLineTextView;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfDefineItemVo;)V

    move-object v0, v1

    goto :goto_0

    :sswitch_3
    const-class v0, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;

    invoke-direct {v1, p2, v0, p3}, Lcn/apppark/vertify/activity/free/self/SelfMultLineTextView;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfDefineItemVo;Landroid/widget/ScrollView;)V

    move-object v0, v1

    goto :goto_0

    :sswitch_4
    const-class v0, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/self/SelfMp4View;

    invoke-direct {v1, p2, v0}, Lcn/apppark/vertify/activity/free/self/SelfMp4View;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfDefineItemVo;)V

    move-object v0, v1

    goto :goto_0

    :sswitch_5
    const-class v0, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/self/SelfMp3View;

    invoke-direct {v1, p2, v0}, Lcn/apppark/vertify/activity/free/self/SelfMp3View;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfDefineItemVo;)V

    move-object v0, v1

    goto :goto_0

    :sswitch_6
    new-instance v0, Lay;

    invoke-direct {v0}, Lay;-><init>()V

    invoke-virtual {v0}, Lay;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-static {p4, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v3

    check-cast v3, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJsonElement2List(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v0, Lcn/apppark/vertify/activity/free/typelist/SelfListView4001;

    move-object v1, p2

    move-object v2, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/apppark/vertify/activity/free/typelist/SelfListView4001;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/free/SelfListViewItemVo;Ljava/util/ArrayList;Landroid/widget/ScrollView;)V

    goto :goto_0

    :sswitch_7
    new-instance v0, Lbc;

    invoke-direct {v0}, Lbc;-><init>()V

    invoke-virtual {v0}, Lbc;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;

    invoke-static {p4, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v3

    check-cast v3, Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJsonElement2List(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v0, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;

    move-object v1, p2

    move-object v2, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/apppark/vertify/activity/free/typelist/SelfMutiListView;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/free/SelfMutiListViewItemVo;Ljava/util/ArrayList;Landroid/widget/ScrollView;)V

    goto/16 :goto_0

    :sswitch_8
    const-class v0, Lcn/apppark/mcd/vo/free/SelfGridItemVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v3

    check-cast v3, Lcn/apppark/mcd/vo/free/SelfGridItemVo;

    new-instance v0, Lbd;

    invoke-direct {v0}, Lbd;-><init>()V

    invoke-virtual {v0}, Lbd;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJsonElement2List(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView;

    move-object v1, p2

    move-object v2, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/apppark/vertify/activity/free/typenine/SelfGridView;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/free/SelfGridItemVo;Ljava/util/ArrayList;Landroid/widget/ScrollView;)V

    goto/16 :goto_0

    :sswitch_9
    const-class v0, Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;

    new-instance v1, Lbe;

    invoke-direct {v1}, Lbe;-><init>()V

    invoke-virtual {v1}, Lbe;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {p4, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJsonElement2List(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v1, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;

    invoke-direct {v1, p2, p5, v0, v2}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;Ljava/util/ArrayList;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_a
    const-class v0, Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;

    new-instance v1, Lbf;

    invoke-direct {v1}, Lbf;-><init>()V

    invoke-virtual {v1}, Lbf;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {p4, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJsonElement2List(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v1, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;

    invoke-direct {v1, p2, p5, v0, v2}, Lcn/apppark/vertify/activity/free/self/SelfAnimaView;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/free/SelfAnimaItemVo;Ljava/util/ArrayList;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_b
    const-class v0, Lcn/apppark/mcd/vo/free/Self360ItemVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/Self360ItemVo;

    new-instance v1, Lbg;

    invoke-direct {v1}, Lbg;-><init>()V

    invoke-virtual {v1}, Lbg;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {p4, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJsonElement2List(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v1, Lcn/apppark/vertify/activity/free/self/Self360View;

    invoke-direct {v1, p2, v0, v2, p3}, Lcn/apppark/vertify/activity/free/self/Self360View;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/Self360ItemVo;Ljava/util/ArrayList;Landroid/widget/ScrollView;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_c
    const-class v0, Lcn/apppark/mcd/vo/free/Self720ItemVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/Self720ItemVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/self/Self720View;

    invoke-direct {v1, p2, v0, p3}, Lcn/apppark/vertify/activity/free/self/Self720View;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/Self720ItemVo;Landroid/widget/ScrollView;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_d
    const-class v0, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfDefineItemVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;

    invoke-direct {v1, p2, v0, p3}, Lcn/apppark/vertify/activity/free/self/SelfRichTextView;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfDefineItemVo;Landroid/widget/ScrollView;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_e
    const-class v0, Lcn/apppark/mcd/vo/free/SelfWebItemVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfWebItemVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/self/SelfWebView;

    invoke-direct {v1, p2, v0, p3}, Lcn/apppark/vertify/activity/free/self/SelfWebView;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/free/SelfWebItemVo;Landroid/widget/ScrollView;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_f
    new-instance v0, Lbh;

    invoke-direct {v0}, Lbh;-><init>()V

    invoke-virtual {v0}, Lbh;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-static {p4, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v3

    check-cast v3, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJsonElement2List(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v0, Lcn/apppark/vertify/activity/free/typelist/SelfListView4001;

    move-object v1, p2

    move-object v2, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/apppark/vertify/activity/free/typelist/SelfListView4001;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/free/SelfListViewItemVo;Ljava/util/ArrayList;Landroid/widget/ScrollView;)V

    goto/16 :goto_0

    :sswitch_10
    new-instance v0, Lbi;

    invoke-direct {v0}, Lbi;-><init>()V

    invoke-virtual {v0}, Lbi;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-static {p4, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v3

    check-cast v3, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJsonElement2List(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v0, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;

    move-object v1, p2

    move-object v2, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/apppark/vertify/activity/free/typelist/SelfListView4002;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/free/SelfListViewItemVo;Ljava/util/ArrayList;Landroid/widget/ScrollView;)V

    goto/16 :goto_0

    :sswitch_11
    new-instance v0, Lbj;

    invoke-direct {v0}, Lbj;-><init>()V

    invoke-virtual {v0}, Lbj;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-static {p4, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v3

    check-cast v3, Lcn/apppark/mcd/vo/free/SelfListViewItemVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJsonElement2List(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v0, Lcn/apppark/vertify/activity/free/typelist/SelfListView4003;

    move-object v1, p2

    move-object v2, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/apppark/vertify/activity/free/typelist/SelfListView4003;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/free/SelfListViewItemVo;Ljava/util/ArrayList;Landroid/widget/ScrollView;)V

    goto/16 :goto_0

    :sswitch_12
    const-class v0, Lcn/apppark/mcd/vo/free/SelfGridItemVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v3

    check-cast v3, Lcn/apppark/mcd/vo/free/SelfGridItemVo;

    new-instance v0, Laz;

    invoke-direct {v0}, Laz;-><init>()V

    invoke-virtual {v0}, Laz;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJsonElement2List(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v4

    const/16 v0, 0xfa6

    if-ne p0, v0, :cond_2

    new-instance v0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;

    move-object v1, p2

    move-object v2, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4006;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/free/SelfGridItemVo;Ljava/util/ArrayList;Landroid/widget/ScrollView;)V

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xfa7

    if-ne p0, v0, :cond_3

    new-instance v0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4007;

    move-object v1, p2

    move-object v2, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4007;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/free/SelfGridItemVo;Ljava/util/ArrayList;Landroid/widget/ScrollView;)V

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0xfa8

    if-ne p0, v0, :cond_1

    new-instance v0, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4008;

    move-object v1, p2

    move-object v2, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4008;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/free/SelfGridItemVo;Ljava/util/ArrayList;Landroid/widget/ScrollView;)V

    goto/16 :goto_0

    :sswitch_13
    const-class v0, Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;

    new-instance v2, Lba;

    invoke-direct {v2}, Lba;-><init>()V

    invoke-virtual {v2}, Lba;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {p4, v2}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJsonElement2List(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v2

    const/16 v3, 0xfab

    if-ne p0, v3, :cond_4

    new-instance v1, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;

    invoke-direct {v1, p2, p5, v0, v2}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4011;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;Ljava/util/ArrayList;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0xfac

    if-ne p0, v3, :cond_5

    new-instance v1, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;

    invoke-direct {v1, p2, p5, v0, v2}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4012;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;Ljava/util/ArrayList;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0xfad

    if-ne p0, v3, :cond_1

    new-instance v1, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;

    invoke-direct {v1, p2, p5, v0, v2}, Lcn/apppark/vertify/activity/free/typegallery/SelfGalleryView4013;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/free/SelfGalleryItemVo;Ljava/util/ArrayList;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_14
    const-class v0, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v3

    check-cast v3, Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;

    new-instance v0, Lbb;

    invoke-direct {v0}, Lbb;-><init>()V

    invoke-virtual {v0}, Lbb;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJsonElement2List(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    iget-object v5, p1, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    move-object v1, p2

    move-object v2, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/Dyn5001Vo;Ljava/util/ArrayList;Landroid/widget/ScrollView;Lcn/apppark/vertify/activity/FreeAct;)V

    goto/16 :goto_0

    :sswitch_15
    const-class v0, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynMsgList5002;

    iget-object v2, p1, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-direct {v1, p2, p5, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynMsgList5002;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynMsgListVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_16
    const-class v0, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    iget-object v2, p1, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-direct {v1, p2, p5, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynRss5003Vo;Lcn/apppark/mcd/widget/ElasticScrollView;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_17
    const-class v0, Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynProductVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynPorductList5004;

    iget-object v2, p1, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-direct {v1, p2, p5, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynPorductList5004;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynProductVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_18
    const-class v0, Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynProductVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;

    iget-object v2, p1, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-direct {v1, p2, p5, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynProductNine5005;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynProductVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_19
    const-class v0, Lcn/apppark/mcd/vo/dyn/Dyn5006Vo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5006Vo;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;

    iget-object v2, p1, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-direct {v1, p2, v0, v2, p1}, Lcn/apppark/vertify/activity/free/dyn/DynPersonCenter5006;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/Dyn5006Vo;Lcn/apppark/mcd/widget/ElasticScrollView;Lcn/apppark/vertify/activity/FreeAct;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_1a
    const-class v0, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;

    invoke-direct {v1, p2, v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/Dyn5007Vo;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_1b
    const-class v0, Lcn/apppark/mcd/vo/dyn/Dyn5008Vo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5008Vo;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;

    iget-object v2, p1, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-direct {v1, p2, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynMapUrl5008;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/dyn/Dyn5008Vo;Lcn/apppark/mcd/widget/ElasticScrollView;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_1c
    const-class v0, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;

    iget-object v2, p1, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-direct {v1, p2, p5, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynMsgGalleryText5010;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynMsgListVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_1d
    const-class v0, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;

    iget-object v2, p1, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-direct {v1, p2, p5, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynMsgCard5011;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynMsgListVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_1e
    const-class v0, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;

    iget-object v2, p1, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-direct {v1, p2, p5, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynMsgWater5012;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynMsgListVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_1f
    const-class v0, Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynProductVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;

    iget-object v2, p1, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-direct {v1, p2, p5, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynProductGalleryText5013;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynProductVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_20
    const-class v0, Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynProductVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;

    iget-object v2, p1, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-direct {v1, p2, p5, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/DynProductCard5014;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynProductVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_21
    const-class v0, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    iget-object v2, p1, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-direct {v1, p2, p5, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynMsgListVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_22
    const-class v0, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    iget-object v2, p1, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-direct {v1, p2, p5, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynMsgListVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_23
    const-class v0, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynMsgListVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;

    iget-object v2, p1, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-direct {v1, p2, p5, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/SMsgBase;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynMsgListVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_24
    const-class v0, Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynProductVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    iget-object v2, p1, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-direct {v1, p2, p5, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynProductVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_25
    const-class v0, Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynProductVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    iget-object v2, p1, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-direct {v1, p2, p5, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynProductVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_26
    const-class v0, Lcn/apppark/mcd/vo/dyn/DynProductVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/DynProductVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/SProductBase;

    iget-object v2, p1, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-direct {v1, p2, p5, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/SProductBase;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/DynProductVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V

    move-object v0, v1

    goto/16 :goto_0

    :sswitch_27
    const-class v0, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    invoke-static {p4, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->JsonElement2Obj(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/STogetherItemVo;

    new-instance v1, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    iget-object v2, p1, Lcn/apppark/vertify/activity/FreeAct;->scroll:Lcn/apppark/mcd/widget/ElasticScrollView;

    invoke-direct {v1, p2, p5, v0, v2}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;-><init>(Landroid/content/Context;Lcn/apppark/mcd/vo/base/FreePageVo;Lcn/apppark/mcd/vo/dyn/STogetherItemVo;Lcn/apppark/mcd/widget/ElasticScrollView;)V

    move-object v0, v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0xfa1 -> :sswitch_f
        0xfa2 -> :sswitch_10
        0xfa3 -> :sswitch_11
        0xfa6 -> :sswitch_12
        0xfa7 -> :sswitch_12
        0xfa8 -> :sswitch_12
        0xfab -> :sswitch_13
        0xfac -> :sswitch_13
        0xfad -> :sswitch_13
        0x1389 -> :sswitch_14
        0x138a -> :sswitch_15
        0x138b -> :sswitch_16
        0x138c -> :sswitch_17
        0x138d -> :sswitch_18
        0x138e -> :sswitch_19
        0x138f -> :sswitch_1a
        0x1390 -> :sswitch_1b
        0x1392 -> :sswitch_1c
        0x1393 -> :sswitch_1d
        0x1394 -> :sswitch_1e
        0x1395 -> :sswitch_1f
        0x1396 -> :sswitch_20
        0x139d -> :sswitch_21
        0x139e -> :sswitch_22
        0x139f -> :sswitch_23
        0x13a7 -> :sswitch_24
        0x13a8 -> :sswitch_25
        0x13a9 -> :sswitch_26
        0x13b1 -> :sswitch_27
        0x13b2 -> :sswitch_27
        0x13b3 -> :sswitch_27
    .end sparse-switch
.end method
