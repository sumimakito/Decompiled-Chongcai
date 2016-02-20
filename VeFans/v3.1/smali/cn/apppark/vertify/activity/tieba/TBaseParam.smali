.class public Lcn/apppark/vertify/activity/tieba/TBaseParam;
.super Ljava/lang/Object;


# static fields
.field public static final TB_DOMAIN:Ljava/lang/String; = "http://ws.ckj.hqch.com"

.field public static TB_ID:Ljava/lang/String; = null

.field public static final TB_IP:Ljava/lang/String; = "http://www.apppark.cn"

.field public static final TB_SENDCOMMENT:Ljava/lang/String; = "http://www.apppark.cn/servlet/sendComment"

.field public static final TB_SENDREPORT:Ljava/lang/String; = "http://www.apppark.cn/servlet/sendReport"

.field public static final TB_SENDTOPIC:Ljava/lang/String; = "http://www.apppark.cn/servlet/sendTopic"

.field public static final TB_WS:Ljava/lang/String; = "http://www.apppark.cn/tieba.ws"

.field public static TOPMENU_BGCOLOR:Ljava/lang/String;

.field public static emojiStrs:[Ljava/lang/String;

.field public static emojis:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x31

    const-string v0, "5046f8"

    sput-object v0, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TOPMENU_BGCOLOR:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcn/apppark/vertify/activity/tieba/TBaseParam;->TB_ID:Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/apppark/vertify/activity/tieba/TBaseParam;->emojis:[I

    const/16 v0, 0x32

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "#(\u5475\u5475)"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "#(\u54c8\u54c8)"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "#(\u5410\u820c)"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "#(\u554a)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "#(\u9177)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "#(\u6012)"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "#(\u5410)"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "#(\u6c57)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "#(\u6cea)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "#(\u9ed1\u7ebf)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "#(\u9119\u89c6)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "#(\u4e0d\u9ad8\u5174)"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "#(\u771f\u68d2)"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "#(\u94b1)"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "#(\u7591\u95ee)"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "#(\u9634\u9669)"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "#(\u5410)"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "#(\u54a6)"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "#(\u59d4\u5c48)"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "#(\u82b1\u5fc3)"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "#(\u547c~)"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "#(\u7b11\u773c)"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "#(\u51b7)"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "#(\u592a\u5f00\u5fc3)"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "#(\u6ed1\u7a3d)"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "#(\u52c9\u5f3a)"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "#(\u72c2\u6c57)"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "#(\u4e56)"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "#(\u7761\u89c9)"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "#(\u60ca\u54ed)"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "#(\u5347\u8d77)"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "#(\u60ca\u8bb6)"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "#(\u55b7)"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "#(\u7231\u5fc3)"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "#(\u5fc3\u788e)"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "#(\u73ab\u7470)"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "#(\u793c\u7269)"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "#(\u5f69\u8679)"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "#(\u661f\u661f\u6708\u4eae)"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "#(\u592a\u9633)"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "#(\u94b1\u5e01)"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "#(\u706f\u6ce1)"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "#(\u8336\u676f)"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "#(\u86cb\u7cd5)"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "#(\u97f3\u4e50)"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "#(haha)"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "#(\u80dc\u5229)"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "#(\u5927\u62c7\u6307)"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "#(\u5f31)"

    aput-object v2, v0, v1

    const-string v1, "#(OK)"

    aput-object v1, v0, v3

    sput-object v0, Lcn/apppark/vertify/activity/tieba/TBaseParam;->emojiStrs:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x7f0200a0
        0x7f0200ab
        0x7f0200b6
        0x7f0200c1
        0x7f0200cc
        0x7f0200ce
        0x7f0200cf
        0x7f0200d0
        0x7f0200d1
        0x7f0200a1
        0x7f0200a2
        0x7f0200a3
        0x7f0200a4
        0x7f0200a5
        0x7f0200a6
        0x7f0200a7
        0x7f0200a8
        0x7f0200a9
        0x7f0200aa
        0x7f0200ac
        0x7f0200ad
        0x7f0200ae
        0x7f0200af
        0x7f0200b0
        0x7f0200b1
        0x7f0200b2
        0x7f0200b3
        0x7f0200b4
        0x7f0200b5
        0x7f0200b7
        0x7f0200b8
        0x7f0200b9
        0x7f0200ba
        0x7f0200bb
        0x7f0200bc
        0x7f0200bd
        0x7f0200be
        0x7f0200bf
        0x7f0200c0
        0x7f0200c2
        0x7f0200c3
        0x7f0200c4
        0x7f0200c5
        0x7f0200c6
        0x7f0200c7
        0x7f0200c8
        0x7f0200c9
        0x7f0200ca
        0x7f0200cb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changePoint(ILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-ne p0, v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02010e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f02010d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static delEmjo(Landroid/widget/EditText;)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#("

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method public static getEmoji(II)[I
    .locals 5

    new-array v2, p1, [I

    mul-int v1, p0, p1

    add-int v3, v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    sget-object v4, Lcn/apppark/vertify/activity/tieba/TBaseParam;->emojis:[I

    array-length v4, v4

    if-ge v1, v4, :cond_0

    sget-object v4, Lcn/apppark/vertify/activity/tieba/TBaseParam;->emojis:[I

    aget v4, v4, v1

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static getEmojiStr(II)[Ljava/lang/String;
    .locals 5

    new-array v2, p1, [Ljava/lang/String;

    mul-int v1, p0, p1

    add-int v3, v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    sget-object v4, Lcn/apppark/vertify/activity/tieba/TBaseParam;->emojiStrs:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    sget-object v4, Lcn/apppark/vertify/activity/tieba/TBaseParam;->emojiStrs:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static getFaceImgSpan(Landroid/content/Context;III)Landroid/text/style/ImageSpan;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float v1, p2

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v1

    int-to-float v2, p3

    invoke-static {v2}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, p0, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static getSpanStr(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;
    .locals 9

    const/16 v8, 0x14

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const-string v0, "#\\((.)*?\\)"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    move v0, v1

    :goto_2
    sget-object v6, Lcn/apppark/vertify/activity/tieba/TBaseParam;->emojiStrs:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_1

    sget-object v6, Lcn/apppark/vertify/activity/tieba/TBaseParam;->emojiStrs:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcn/apppark/vertify/activity/tieba/TBaseParam;->emojis:[I

    aget v0, v6, v0

    invoke-static {p0, v0, v8, v8}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getFaceImgSpan(Landroid/content/Context;III)Landroid/text/style/ImageSpan;

    move-result-object v0

    const/16 v6, 0x11

    invoke-virtual {v2, v0, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public static getSpanStrEndPic(Landroid/content/Context;Ljava/lang/String;II)Landroid/text/SpannableString;
    .locals 7

    const/16 v6, 0x21

    const/16 v0, 0x19

    const/16 v1, 0x10

    invoke-static {p0, p2, v0, v1}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getFaceImgSpan(Landroid/content/Context;III)Landroid/text/style/ImageSpan;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  floor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v0, v3, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v2
.end method

.method public static getSpanStrStartPic(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/text/SpannableString;
    .locals 6

    const/16 v5, 0x21

    const/4 v4, 0x0

    invoke-static {p0, p2, p4, p5}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getFaceImgSpan(Landroid/content/Context;III)Landroid/text/style/ImageSpan;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v4, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v2
.end method

.method public static initFaceData(Landroid/content/Context;Landroid/widget/EditText;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/EditText;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/16 v10, 0x15

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    new-instance v4, Landroid/widget/GridView;

    invoke-direct {v4, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcn/apppark/vertify/adapter/TEmojiCellAdapter;

    invoke-static {v0, v10}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getEmoji(II)[I

    move-result-object v6

    invoke-static {v0, v10}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getEmojiStr(II)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lcn/apppark/vertify/adapter/TEmojiCellAdapter;-><init>(Landroid/content/Context;[I[Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {v4, v1}, Landroid/widget/GridView;->setBackgroundColor(I)V

    invoke-virtual {v4, v8}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    invoke-virtual {v4, v8}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setStretchMode(I)V

    invoke-virtual {v4, v1}, Landroid/widget/GridView;->setCacheColorHint(I)V

    invoke-virtual {v4, v9, v1, v9, v1}, Landroid/widget/GridView;->setPadding(IIII)V

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Lqs;

    invoke-direct {v6, p0, p1, v5}, Lqs;-><init>(Landroid/content/Context;Landroid/widget/EditText;Lcn/apppark/vertify/adapter/TEmojiCellAdapter;)V

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static initPoint(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    const/4 v6, -0x2

    const/16 v5, 0xa

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v3, 0x7f02010d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v0, :cond_0

    const v3, 0x7f02010e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static setFace(Landroid/content/Context;Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 5

    const/16 v0, 0x14

    const/16 v1, 0x14

    :try_start_0
    invoke-static {p0, p2, v0, v1}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->getFaceImgSpan(Landroid/content/Context;III)Landroid/text/style/ImageSpan;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
