.class public Lcn/apppark/ckj10185912/Main;
.super Landroid/app/ActivityGroup;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BITS_PER_UNIT:I = 0x8


# instance fields
.field public clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

.field private fileUpdater:Lcn/apppark/vertify/network/FileUpdater;

.field public finish:Z

.field private img:Landroid/widget/ImageView;

.field private linearLayoutBottom:Landroid/widget/LinearLayout;

.field public linearLayoutMain:Landroid/widget/LinearLayout;

.field private linearLayoutMiddle:Landroid/widget/LinearLayout;

.field private ll_checkupdate:Landroid/widget/LinearLayout;

.field private ll_exit:Landroid/widget/LinearLayout;

.field private ll_more:Landroid/widget/LinearLayout;

.field private ll_setting:Landroid/widget/LinearLayout;

.field private locationManager:Landroid/app/LocalActivityManager;

.field public manualCheckUpdate:Z

.field private myFV:Lcn/apppark/mcd/widget/MyFloatView;

.field private myMenu:Ld;

.field public pageGroup:Lcn/apppark/vertify/PageGroup;

.field private sdcardPath:Ljava/lang/String;

.field private windowIsShow:Z

.field private wm:Landroid/view/WindowManager;

.field public wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    iput-boolean v1, p0, Lcn/apppark/ckj10185912/Main;->manualCheckUpdate:Z

    iput-boolean v1, p0, Lcn/apppark/ckj10185912/Main;->finish:Z

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcn/apppark/ckj10185912/Main;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v2, p0, Lcn/apppark/ckj10185912/Main;->wm:Landroid/view/WindowManager;

    iput-object v2, p0, Lcn/apppark/ckj10185912/Main;->myFV:Lcn/apppark/mcd/widget/MyFloatView;

    iput-boolean v1, p0, Lcn/apppark/ckj10185912/Main;->windowIsShow:Z

    return-void
.end method

.method public static synthetic a(Lcn/apppark/ckj10185912/Main;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->ll_setting:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/ckj10185912/Main;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcn/apppark/ckj10185912/Main;->ll_setting:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public static synthetic b(Lcn/apppark/ckj10185912/Main;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->ll_checkupdate:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic b(Lcn/apppark/ckj10185912/Main;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcn/apppark/ckj10185912/Main;->ll_checkupdate:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public static synthetic c(Lcn/apppark/ckj10185912/Main;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->ll_more:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic c(Lcn/apppark/ckj10185912/Main;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcn/apppark/ckj10185912/Main;->ll_more:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method private checkCilentBase(Ljava/io/File;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, " \u521d\u59cb\u5316\u6587\u4ef6\u4e0d\u5b58\u5728,\u8bf7\u68c0\u6d4b\u66f4\u65b0 "

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->img:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, La;

    invoke-direct {v1, p0}, La;-><init>(Lcn/apppark/ckj10185912/Main;)V

    invoke-virtual {v1}, La;->start()V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private createView()V
    .locals 4

    invoke-virtual {p0}, Lcn/apppark/ckj10185912/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/apppark/ckj10185912/Main;->wm:Landroid/view/WindowManager;

    new-instance v0, Lcn/apppark/mcd/widget/MyFloatView;

    invoke-virtual {p0}, Lcn/apppark/ckj10185912/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/ckj10185912/Main;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcn/apppark/ckj10185912/Main;->wm:Landroid/view/WindowManager;

    invoke-direct {v0, v1, v2, v3}, Lcn/apppark/mcd/widget/MyFloatView;-><init>(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;)V

    iput-object v0, p0, Lcn/apppark/ckj10185912/Main;->myFV:Lcn/apppark/mcd/widget/MyFloatView;

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->wmParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcn/apppark/ckj10185912/YYGYContants;->screenHeight:I

    const/high16 v2, 0x43160000    # 150.0f

    invoke-static {v2}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x42180000    # 38.0f

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x42ae0000    # 87.0f

    invoke-static {v1}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method public static synthetic d(Lcn/apppark/ckj10185912/Main;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->ll_exit:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic d(Lcn/apppark/ckj10185912/Main;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0

    iput-object p1, p0, Lcn/apppark/ckj10185912/Main;->ll_exit:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method private getLocation()V
    .locals 1

    new-instance v0, Lcn/apppark/vertify/network/PublicRequest;

    invoke-direct {v0}, Lcn/apppark/vertify/network/PublicRequest;-><init>()V

    invoke-virtual {v0}, Lcn/apppark/vertify/network/PublicRequest;->getLocation()V

    return-void
.end method

.method private initClinetFromRecource()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/base/InitClient;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "sdcardPath"

    iget-object v2, p0, Lcn/apppark/ckj10185912/Main;->sdcardPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcn/apppark/ckj10185912/Main;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static postion(I)I
    .locals 2

    const/4 v0, 0x1

    rem-int/lit8 v1, p0, 0x8

    rsub-int/lit8 v1, v1, 0x7

    shl-int/2addr v0, v1

    return v0
.end method

.method private showSDCardErrorMessage()V
    .locals 3

    new-instance v0, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    invoke-direct {v0, p0}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->setTitle(I)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->setMessage(I)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    move-result-object v0

    const v1, 0x7f080007

    new-instance v2, Lb;

    invoke-direct {v2, p0}, Lb;-><init>(Lcn/apppark/ckj10185912/Main;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogOneBtn$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogOneBtn$Builder;->create()Lcn/apppark/mcd/widget/DialogOneBtn;

    move-result-object v0

    new-instance v1, Lc;

    invoke-direct {v1, p0}, Lc;-><init>(Lcn/apppark/ckj10185912/Main;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogOneBtn;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogOneBtn;->show()V

    return-void
.end method


# virtual methods
.method public createBottom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->linearLayoutBottom:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->linearLayoutBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "foot_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/apppark/ckj10185912/Main;->sdcardPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u4e0d\u5b58\u5728"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-static {v4}, Lcn/apppark/mcd/util/file/SDFileUtils;->readFileSD(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcn/apppark/mcd/vo/navigation/NavigationHistoryVo;

    invoke-static {v0, v1}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJson2Vo(Ljava/lang/String;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/base/BasePageItemVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/BasePageItemVo;->getSys_h()I

    move-result v1

    int-to-float v1, v1

    sget v5, Lcn/apppark/ckj10185912/YYGYContants;->scaleUnite:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/BasePageItemVo;->getSys_moduleType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, v3, v0}, Lcn/apppark/ckj10185912/Main;->startBottomActivity(Ljava/lang/String;Landroid/content/Intent;)V

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->locationManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0, v3}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->locationManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0, v3}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "fPageid"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcn/apppark/vertify/activity/bottommenu/NavigationTab2;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "navJson"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "fPageid"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
    .end packed-switch
.end method

.method protected createPageGroup()V
    .locals 6

    const/4 v3, -0x1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/PageGroup;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->linearLayoutMiddle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->locationManager:Landroid/app/LocalActivityManager;

    const-string v2, "PageGroup"

    invoke-virtual {v1, v2, v0}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->linearLayoutMiddle:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->locationManager:Landroid/app/LocalActivityManager;

    const-string v1, "PageGroup"

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/PageGroup;

    iput-object v0, p0, Lcn/apppark/ckj10185912/Main;->pageGroup:Lcn/apppark/vertify/PageGroup;

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->pageGroup:Lcn/apppark/vertify/PageGroup;

    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v2}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getnPageId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcn/apppark/vertify/PageGroup;->goNextPage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCheck(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getKey(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getMainBg()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->linearLayoutMain:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getMinHeight()I
    .locals 1

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->linearLayoutMain:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPKGName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/apppark/ckj10185912/HQCHApplication;->getInstance()Lcn/apppark/ckj10185912/HQCHApplication;

    move-result-object v0

    iget-object v0, v0, Lcn/apppark/ckj10185912/HQCHApplication;->PKGNAME:Ljava/lang/String;

    return-object v0
.end method

.method public hiddenWall()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->wm:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->myFV:Lcn/apppark/mcd/widget/MyFloatView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/apppark/ckj10185912/Main;->windowIsShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/apppark/ckj10185912/Main;->windowIsShow:Z

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->myFV:Lcn/apppark/mcd/widget/MyFloatView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected initClient()V
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->mDirGenerator:Lcn/apppark/vertify/base/YygyResourceDirGenerator;

    invoke-virtual {v2}, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->getyygyPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/10185912/.nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->mDirGenerator:Lcn/apppark/vertify/base/YygyResourceDirGenerator;

    invoke-virtual {v2}, Lcn/apppark/vertify/base/YygyResourceDirGenerator;->getyygyPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1
    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->getInitFlag()I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcn/apppark/ckj10185912/Main;->initClinetFromRecource()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz v0, :cond_4

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->getLastCopyTime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "2016-02-20 10:31:004"

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->getLastCopyTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcn/apppark/ckj10185912/Main;->initClinetFromRecource()V

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcn/apppark/ckj10185912/Main;->parserClientBase()V

    invoke-virtual {p0}, Lcn/apppark/ckj10185912/Main;->initClientBase()V

    invoke-virtual {p0}, Lcn/apppark/ckj10185912/Main;->createPageGroup()V

    iget-boolean v0, p0, Lcn/apppark/ckj10185912/Main;->manualCheckUpdate:Z

    if-nez v0, :cond_2

    new-instance v0, Lcn/apppark/vertify/network/FileUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcn/apppark/vertify/network/FileUpdater;-><init>(Landroid/app/Activity;ZI)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/network/FileUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcn/apppark/ckj10185912/Main;->initClinetFromRecource()V

    goto :goto_0
.end method

.method protected initClientBase()V
    .locals 4

    const/16 v2, 0x400

    const-string v0, "1"

    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getFullScreenFlag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/apppark/ckj10185912/Main;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    const v0, 0x1030010

    invoke-virtual {p0, v0}, Lcn/apppark/ckj10185912/Main;->setTheme(I)V

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->linearLayoutMain:Landroid/widget/LinearLayout;

    const-string v1, "1"

    const-string v2, ""

    const-string v3, "ffffff"

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/mcd/util/FunctionPublic;->setBackground(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->getVipFlag()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getIsShowAD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateIsShowAD(Ljava/lang/String;)V

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getIsWall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateIsShowWall(Ljava/lang/String;)V

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getIsShowMore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateIsShowMore(Ljava/lang/String;)V

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getStartPageWatermark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateShowWaterMarker(Ljava/lang/String;)V

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getDisclaimerDeclare()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateIsShowDeclare(Ljava/lang/String;)V

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getIsVip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateIsVip(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getShareContent()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    :goto_1
    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateWeiboShareContent(Ljava/lang/String;)V

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v0}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateVipFlag()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v1}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getShareContent()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/ActivityGroup;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const v0, 0x7f08000e

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    const-string v1, "2016-02-20 10:31:004"

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->updateLastCopyTime(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcn/apppark/ckj10185912/Main;->parserClientBase()V

    invoke-virtual {p0}, Lcn/apppark/ckj10185912/Main;->initClientBase()V

    invoke-virtual {p0}, Lcn/apppark/ckj10185912/Main;->createPageGroup()V

    new-instance v0, Lcn/apppark/vertify/network/FileUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcn/apppark/vertify/network/FileUpdater;-><init>(Landroid/app/Activity;ZI)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/network/FileUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->myMenu:Ld;

    invoke-virtual {v0}, Ld;->dismiss()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/base/SetAct;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/ckj10185912/Main;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    iput-boolean v1, p0, Lcn/apppark/ckj10185912/Main;->manualCheckUpdate:Z

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->fileUpdater:Lcn/apppark/vertify/network/FileUpdater;

    if-nez v0, :cond_1

    new-instance v0, Lcn/apppark/vertify/network/FileUpdater;

    invoke-direct {v0, p0, v1, v2}, Lcn/apppark/vertify/network/FileUpdater;-><init>(Landroid/app/Activity;ZI)V

    iput-object v0, p0, Lcn/apppark/ckj10185912/Main;->fileUpdater:Lcn/apppark/vertify/network/FileUpdater;

    :cond_1
    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->fileUpdater:Lcn/apppark/vertify/network/FileUpdater;

    invoke-virtual {v0}, Lcn/apppark/vertify/network/FileUpdater;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->fileUpdater:Lcn/apppark/vertify/network/FileUpdater;

    new-array v1, v1, [Ljava/lang/Void;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/network/FileUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iput-object v3, p0, Lcn/apppark/ckj10185912/Main;->fileUpdater:Lcn/apppark/vertify/network/FileUpdater;

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcn/apppark/ckj10185912/Main;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0276
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcn/apppark/ckj10185912/Main;->setContentView(I)V

    sput-object p0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    new-instance v0, Ld;

    invoke-direct {v0, p0, p0}, Ld;-><init>(Lcn/apppark/ckj10185912/Main;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/ckj10185912/Main;->myMenu:Ld;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcn/apppark/ckj10185912/Main;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcn/apppark/ckj10185912/YYGYContants;->screenHeight:I

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    invoke-static {v1}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->getScaleFloat(I)F

    move-result v1

    sput v1, Lcn/apppark/ckj10185912/YYGYContants;->scaleUnite:F

    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Lcn/apppark/ckj10185912/YYGYContants;->dpi:I

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->getScaleDipFloat(I)F

    move-result v0

    sput v0, Lcn/apppark/ckj10185912/YYGYContants;->dpiScaleUnite:F

    sget v0, Lcn/apppark/ckj10185912/YYGYContants;->PRODUCT_INFO_BASEHEIGHT:I

    int-to-float v0, v0

    invoke-static {v0}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v0

    sput v0, Lcn/apppark/ckj10185912/YYGYContants;->PRODUCT_INFO_HEIGHT:I

    const v0, 0x7f0a0272

    invoke-virtual {p0, v0}, Lcn/apppark/ckj10185912/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/ckj10185912/Main;->linearLayoutMain:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0274

    invoke-virtual {p0, v0}, Lcn/apppark/ckj10185912/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/ckj10185912/Main;->linearLayoutMiddle:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0275

    invoke-virtual {p0, v0}, Lcn/apppark/ckj10185912/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/apppark/ckj10185912/Main;->linearLayoutBottom:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0273

    invoke-virtual {p0, v0}, Lcn/apppark/ckj10185912/Main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/apppark/ckj10185912/Main;->img:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/apppark/ckj10185912/Main;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/ckj10185912/Main;->locationManager:Landroid/app/LocalActivityManager;

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    invoke-virtual {v0}, Lcn/apppark/ckj10185912/HQCHApplication;->getResourceDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/apppark/ckj10185912/Main;->showSDCardErrorMessage()V

    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lbs_on_off"

    sget-boolean v2, Lcn/apppark/ckj10185912/HQCHApplication;->isLBSopen:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/apppark/vertify/activity/service/LBSService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/apppark/ckj10185912/Main;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    invoke-direct {p0}, Lcn/apppark/ckj10185912/Main;->getLocation()V

    invoke-direct {p0}, Lcn/apppark/ckj10185912/Main;->createView()V

    new-instance v0, Lcn/apppark/vertify/network/PublicRequest;

    invoke-direct {v0}, Lcn/apppark/vertify/network/PublicRequest;-><init>()V

    invoke-virtual {v0}, Lcn/apppark/vertify/network/PublicRequest;->checkAppState()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    invoke-virtual {v1}, Lcn/apppark/ckj10185912/HQCHApplication;->getResourceDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/ckj10185912/Main;->sdcardPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/apppark/ckj10185912/Main;->initClient()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    invoke-virtual {p0}, Lcn/apppark/ckj10185912/Main;->hiddenWall()V

    invoke-static {}, Lcn/apppark/vertify/network/PublicRequest;->updateLogFile()V

    new-instance v0, Lcn/apppark/vertify/network/PublicRequest;

    invoke-direct {v0}, Lcn/apppark/vertify/network/PublicRequest;-><init>()V

    const-string v1, "1"

    invoke-static {}, Lcn/apppark/vertify/network/PublicRequest;->getLogFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/apppark/vertify/network/PublicRequest;->saveUseLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->myMenu:Ld;

    invoke-virtual {v0}, Ld;->dismiss()V

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->pageGroup:Lcn/apppark/vertify/PageGroup;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/apppark/ckj10185912/Main;->finish()V

    :goto_0
    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->pageGroup:Lcn/apppark/vertify/PageGroup;

    invoke-virtual {v0, p1, p2}, Lcn/apppark/vertify/PageGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_2
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->myMenu:Ld;

    invoke-virtual {v1}, Ld;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->myMenu:Ld;

    invoke-virtual {v1}, Ld;->dismiss()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->myMenu:Ld;

    iget-object v2, p0, Lcn/apppark/ckj10185912/Main;->linearLayoutMain:Landroid/widget/LinearLayout;

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3, v0, v0}, Ld;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    invoke-virtual {p0}, Lcn/apppark/ckj10185912/Main;->hiddenWall()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    sput-object p0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    const-string v0, "1"

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->getIsShowWall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->VIP_0:Ljava/lang/String;

    sget-object v1, Lcn/apppark/ckj10185912/YYGYContants;->mHelper:Lcn/apppark/vertify/base/ClientInitInfoHelpler;

    invoke-virtual {v1}, Lcn/apppark/vertify/base/ClientInitInfoHelpler;->getIsVip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v0}, Lcn/apppark/ckj10185912/Main;->showWall()V

    :cond_1
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    return-void
.end method

.method protected parserClientBase()V
    .locals 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    invoke-virtual {v1}, Lcn/apppark/ckj10185912/HQCHApplication;->getResourceDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "clientBase.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/apppark/ckj10185912/Main;->checkCilentBase(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->img:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-class v0, Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseJson2Vo(Ljava/io/InputStream;Ljava/lang/Class;)Lcn/apppark/mcd/vo/base/BaseVo;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/base/ClientBaseVo;

    iput-object v0, p0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getStyle_userCenterNavBgColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/apppark/mcd/util/more/StringUtil;->isNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->clientBaseVo:Lcn/apppark/mcd/vo/base/ClientBaseVo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/base/ClientBaseVo;->getStyle_userCenterNavBgColor()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_DEFAULT_COLOR:Ljava/lang/String;

    sput-object v0, Lcn/apppark/ckj10185912/YYGYContants;->PERSIONCENTER_TOP_COLOR:Ljava/lang/String;

    goto :goto_0
.end method

.method public setWallNum(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->myFV:Lcn/apppark/mcd/widget/MyFloatView;

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->myFV:Lcn/apppark/mcd/widget/MyFloatView;

    invoke-virtual {v0, p1}, Lcn/apppark/mcd/widget/MyFloatView;->setNum(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->myFV:Lcn/apppark/mcd/widget/MyFloatView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/MyFloatView;->showHiddenNum(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->myFV:Lcn/apppark/mcd/widget/MyFloatView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/MyFloatView;->showHiddenNum(Z)V

    goto :goto_0
.end method

.method public showWall()V
    .locals 3

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->wm:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->myFV:Lcn/apppark/mcd/widget/MyFloatView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/apppark/ckj10185912/Main;->windowIsShow:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/apppark/ckj10185912/Main;->windowIsShow:Z

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->myFV:Lcn/apppark/mcd/widget/MyFloatView;

    iget-object v2, p0, Lcn/apppark/ckj10185912/Main;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected startBottomActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->linearLayoutBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcn/apppark/ckj10185912/Main;->locationManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/ckj10185912/Main;->linearLayoutBottom:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
