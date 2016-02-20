.class public Lcn/apppark/vertify/activity/persion/PersonInfo2;
.super Lcn/apppark/vertify/activity/buy/BuyBaseAct;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final REQUEST_CAMERA:I

.field private final REQUEST_LOGIN_OFF:I

.field private final REQUEST_SEL_PICFILE:I

.field private final SUB_PIC_METHOD:Ljava/lang/String;

.field private final SUB_PIC_WHAT:I

.field private bmp:Landroid/graphics/Bitmap;

.field private btn_back:Landroid/widget/Button;

.field private btn_camera:Landroid/widget/Button;

.field private btn_cancel:Landroid/widget/Button;

.field private btn_login:Landroid/widget/Button;

.field private btn_loginOff:Landroid/widget/Button;

.field private btn_personinfo:Landroid/widget/Button;

.field private btn_pic:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private crop:I

.field private handler:Low;

.field private img_head:Lcn/apppark/mcd/widget/RemoteImageView;

.field private lin_loginno:Landroid/widget/LinearLayout;

.field private ll_email:Landroid/widget/LinearLayout;

.field private ll_nikeName:Landroid/widget/LinearLayout;

.field private ll_operate:Landroid/widget/LinearLayout;

.field private ll_pass:Landroid/widget/LinearLayout;

.field private myMenu:Lov;

.field private rel_loginstate:Landroid/widget/RelativeLayout;

.field private tempFile:Ljava/io/File;

.field private tempFilePath:Ljava/lang/String;

.field private tv_email:Landroid/widget/TextView;

.field private tv_phone:Landroid/widget/TextView;

.field private tv_username:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;-><init>()V

    const-string v0, "updateHeadFace"

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->SUB_PIC_METHOD:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->REQUEST_LOGIN_OFF:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->REQUEST_SEL_PICFILE:I

    const/4 v0, 0x3

    iput v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->REQUEST_CAMERA:I

    const/4 v0, 0x4

    iput v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->SUB_PIC_WHAT:I

    iput-object p0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/temp.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->tempFilePath:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->crop:I

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/PersonInfo2;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/PersonInfo2;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->btn_camera:Landroid/widget/Button;

    return-object p1
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/PersonInfo2;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->initToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/vertify/activity/persion/PersonInfo2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->checkResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/persion/PersonInfo2;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->btn_cancel:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/vertify/activity/persion/PersonInfo2;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->btn_pic:Landroid/widget/Button;

    return-object p1
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/persion/PersonInfo2;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->btn_pic:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/vertify/activity/persion/PersonInfo2;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->btn_cancel:Landroid/widget/Button;

    return-object p1
.end method

.method private changeLoginInfo()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    new-instance v0, Lcn/apppark/vertify/base/ClientPersionInfo;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/apppark/vertify/base/ClientPersionInfo;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->tv_phone:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5df2\u7ed1\u5b9a\u624b\u673a\u53f7\u7801:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->rel_loginstate:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->lin_loginno:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->rel_loginstate:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->lin_loginno:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserNikeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->tv_username:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserNikeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->tv_username:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserHeadFace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->img_head:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserHeadFace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/apppark/mcd/widget/RemoteImageView;->setImageUrl(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->tv_email:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->tv_username:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public static synthetic d(Lcn/apppark/vertify/activity/persion/PersonInfo2;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->btn_camera:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic e(Lcn/apppark/vertify/activity/persion/PersonInfo2;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->loadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public static synthetic f(Lcn/apppark/vertify/activity/persion/PersonInfo2;)Lcn/apppark/vertify/base/ClientPersionInfo;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->info:Lcn/apppark/vertify/base/ClientPersionInfo;

    return-object v0
.end method

.method public static synthetic g(Lcn/apppark/vertify/activity/persion/PersonInfo2;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->bmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getPicFromCamera()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->tempFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->tempFile:Ljava/io/File;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "output"

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->tempFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "outputX"

    iget v2, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->crop:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "outputY"

    iget v2, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->crop:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private getPicFromSD()V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->tempFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->tempFile:Ljava/io/File;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "output"

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->tempFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "outputFormat"

    const-string v2, "JPEG"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "outputX"

    iget v2, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->crop:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "outputY"

    iget v2, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->crop:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "\u9009\u62e9\u56fe\u7247"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic h(Lcn/apppark/vertify/activity/persion/PersonInfo2;)Lcn/apppark/mcd/widget/RemoteImageView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->img_head:Lcn/apppark/mcd/widget/RemoteImageView;

    return-object v0
.end method

.method private initWidget()V
    .locals 2

    const v0, 0x7f0a0001

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/FunctionPublic;->setBackgroundColor(Ljava/lang/String;Landroid/view/View;)V

    const v0, 0x7f0a00b7

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->rel_loginstate:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00bd

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->lin_loginno:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00b9

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/RemoteImageView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->img_head:Lcn/apppark/mcd/widget/RemoteImageView;

    const v0, 0x7f0a00bb

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->tv_username:Landroid/widget/TextView;

    const v0, 0x7f0a00ba

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->tv_email:Landroid/widget/TextView;

    const v0, 0x7f0a00bc

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->btn_personinfo:Landroid/widget/Button;

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->btn_login:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->btn_login:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->rel_loginstate:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->btn_personinfo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00bf

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->ll_operate:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00c4

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->tv_phone:Landroid/widget/TextView;

    const v0, 0x7f0a00c0

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->ll_nikeName:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00c1

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->ll_pass:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00c2

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->ll_email:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00b6

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->btn_back:Landroid/widget/Button;

    const v0, 0x7f0a00c5

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->btn_loginOff:Landroid/widget/Button;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->ll_nikeName:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->ll_pass:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->ll_email:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->btn_back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->btn_loginOff:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->img_head:Lcn/apppark/mcd/widget/RemoteImageView;

    invoke-virtual {v0, p0}, Lcn/apppark/mcd/widget/RemoteImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->btn_loginOff:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->btn_back:Landroid/widget/Button;

    invoke-static {v0}, Lcn/apppark/mcd/util/ButtonColorFilter;->setButtonFocusChanged(Landroid/view/View;)V

    return-void
.end method

.method private subPhoto(I)V
    .locals 8

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->loadDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appId"

    const-string v2, "10185912"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->getInfo()Lcn/apppark/vertify/base/ClientPersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcn/apppark/vertify/base/ClientPersionInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "headFace"

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcn/apppark/mcd/util/imge/ImgUtil;->pic2String(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcn/apppark/vertify/network/request/WebServicePool;

    iget-object v2, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->handler:Low;

    const-string v3, "json"

    invoke-virtual {p0, v1}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->map2Json(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://ws.ckj.hqch.com"

    const-string v6, "http://www.apppark.cn/member.ws"

    const-string v7, "updateHeadFace"

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcn/apppark/vertify/network/request/WebServicePool;-><init>(ILandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lcn/apppark/vertify/network/request/WebServicePool;->doRequest(Lcn/apppark/vertify/network/request/NetWorkRequest;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    :cond_2
    if-ne p2, v1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->tempFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->tempFile:Ljava/io/File;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->bmp:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->subPhoto(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u9000\u51fa\u5f53\u524d\u8d26\u53f7?"

    new-instance v2, Lou;

    invoke-direct {v2, p0}, Lou;-><init>(Lcn/apppark/vertify/activity/persion/PersonInfo2;)V

    invoke-virtual {p0, v0, v1, v2}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->createMsgDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/persion/UpdateInfo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcn/apppark/ckj10185912/YYGYContants;->getLoginClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->myMenu:Lov;

    if-nez v0, :cond_0

    new-instance v0, Lov;

    invoke-direct {v0, p0, p0}, Lov;-><init>(Lcn/apppark/vertify/activity/persion/PersonInfo2;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->myMenu:Lov;

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->myMenu:Lov;

    invoke-virtual {v0}, Lov;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->myMenu:Lov;

    invoke-virtual {v0}, Lov;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->myMenu:Lov;

    iget-object v1, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->ll_email:Landroid/widget/LinearLayout;

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3, v3}, Lov;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->myMenu:Lov;

    invoke-virtual {v0}, Lov;->dismiss()V

    goto/16 :goto_0

    :sswitch_8
    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->getPicFromCamera()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->myMenu:Lov;

    invoke-virtual {v0}, Lov;->dismiss()V

    goto/16 :goto_0

    :sswitch_9
    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->getPicFromSD()V

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->myMenu:Lov;

    invoke-virtual {v0}, Lov;->dismiss()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00b6 -> :sswitch_0
        0x7f0a00b9 -> :sswitch_6
        0x7f0a00be -> :sswitch_5
        0x7f0a00c0 -> :sswitch_2
        0x7f0a00c1 -> :sswitch_3
        0x7f0a00c2 -> :sswitch_4
        0x7f0a00c5 -> :sswitch_1
        0x7f0a018a -> :sswitch_8
        0x7f0a018b -> :sswitch_9
        0x7f0a018c -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->setContentView(I)V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->initWidget()V

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->changeLoginInfo()V

    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->createLoadingDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->loadDialog:Landroid/app/Dialog;

    new-instance v0, Low;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Low;-><init>(Lcn/apppark/vertify/activity/persion/PersonInfo2;Lou;)V

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->handler:Low;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/activity/persion/PersonInfo2;->bmp:Landroid/graphics/Bitmap;

    :cond_0
    invoke-super {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-direct {p0}, Lcn/apppark/vertify/activity/persion/PersonInfo2;->changeLoginInfo()V

    invoke-super {p0}, Lcn/apppark/vertify/activity/buy/BuyBaseAct;->onResume()V

    return-void
.end method
