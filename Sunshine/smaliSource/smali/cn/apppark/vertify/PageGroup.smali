.class public Lcn/apppark/vertify/PageGroup;
.super Landroid/app/ActivityGroup;


# static fields
.field private static final BITS_PER_UNIT:I = 0x8


# instance fields
.field a:I

.field public activityHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/mcd/vo/base/ActivityHistoryVo;",
            ">;"
        }
    .end annotation
.end field

.field public currentShowName:Ljava/lang/String;

.field private exitTime:J

.field private g:Lcn/apppark/vertify/IGroup;

.field public includeViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field public mainActivity:Lcn/apppark/ckj10185912/Main;

.field public pageActivityManager:Landroid/app/LocalActivityManager;

.field public pageGroupLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/apppark/vertify/PageGroup;->g:Lcn/apppark/vertify/IGroup;

    const/4 v0, 0x0

    iput v0, p0, Lcn/apppark/vertify/PageGroup;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/apppark/vertify/PageGroup;->exitTime:J

    return-void
.end method

.method private static AntiDecompile()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [C

    aput-char v1, v2, v1

    move v0, v1

    :goto_0
    if-gtz v0, :cond_0

    aput-char v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private native checkFile(I)Ljava/lang/String;
.end method

.method private native getAlertStr()Ljava/lang/String;
.end method

.method private native getFile(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private native getName(I)Ljava/lang/String;
.end method

.method public static native jniCheckAPP(Landroid/content/Context;)I
.end method

.method private static postion(I)I
    .locals 2

    const/4 v0, 0x1

    rem-int/lit8 v1, p0, 0x8

    rsub-int/lit8 v1, v1, 0x7

    shl-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public canBack()Z
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/PageGroup;->activityHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native getCC()Ljava/lang/String;
.end method

.method public getPKG()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/apppark/ckj10185912/HQCHApplication;->getInstance()Lcn/apppark/ckj10185912/HQCHApplication;

    move-result-object v0

    iget-object v0, v0, Lcn/apppark/ckj10185912/HQCHApplication;->PKGNAME:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Landroid/content/Context;Ljava/lang/String;)I
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

.method public goFunction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/PageGroup;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-static {p1, p2, v0}, Lcn/apppark/vertify/activity/FunctionFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public goNextPage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-boolean v0, Lcn/apppark/ckj10185912/HQCHApplication;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "***  goNextPage  *** nPageType--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nPageModuleType--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nPageId--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/vertify/PageGroup;->g:Lcn/apppark/vertify/IGroup;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcn/apppark/vertify/IGroup;->goNextPage(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hiddenAD()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Lcn/apppark/vertify/PageGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcn/apppark/vertify/base/OnActivityGroupResultListener;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/apppark/vertify/base/OnActivityGroupResultListener;

    invoke-interface {v0, p1, p2, p3}, Lcn/apppark/vertify/base/OnActivityGroupResultListener;->onActivityGroupResult(IILandroid/content/Intent;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/ActivityGroup;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/LinearLayout;

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/apppark/vertify/PageGroup;->pageGroupLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/apppark/vertify/PageGroup;->pageGroupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/PageGroup;->setContentView(Landroid/view/View;)V

    sget-object v0, Lcn/apppark/ckj10185912/HQCHApplication;->mainActivity:Lcn/apppark/ckj10185912/Main;

    iput-object v0, p0, Lcn/apppark/vertify/PageGroup;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {p0}, Lcn/apppark/vertify/PageGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/vertify/PageGroup;->pageActivityManager:Landroid/app/LocalActivityManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/vertify/PageGroup;->activityHistoryList:Ljava/util/ArrayList;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcn/apppark/vertify/PageGroup;->includeViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/apppark/ckj10185912/HQCHApplication;->instance:Lcn/apppark/ckj10185912/HQCHApplication;

    invoke-virtual {v1}, Lcn/apppark/ckj10185912/HQCHApplication;->getYygyDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/apppark/vertify/PageGroup;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-instance v2, Ldalvik/system/DexClassLoader;

    const-string v3, "10185912"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3, v0}, Lcn/apppark/vertify/PageGroup;->getFile(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/apppark/vertify/PageGroup;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4, v1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v0, "10185912"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/apppark/vertify/PageGroup;->checkFile(I)Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lcn/apppark/vertify/PageGroup;->getPKG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lcn/apppark/vertify/PageGroup;->getValue(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/apppark/vertify/PageGroup;->getName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcn/apppark/vertify/PageGroup;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/IGroup;

    iput-object v0, p0, Lcn/apppark/vertify/PageGroup;->g:Lcn/apppark/vertify/IGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, p0, Lcn/apppark/vertify/PageGroup;->a:I

    if-nez v0, :cond_0

    iget v0, p0, Lcn/apppark/vertify/PageGroup;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/vertify/PageGroup;->a:I

    invoke-static {p0}, Lcn/apppark/vertify/PageGroup;->jniCheckAPP(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v6, :cond_0

    invoke-direct {p0}, Lcn/apppark/vertify/PageGroup;->getAlertStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcn/apppark/vertify/PageGroup;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v0}, Lcn/apppark/ckj10185912/Main;->finish()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcn/apppark/vertify/PageGroup;->activityHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/apppark/vertify/PageGroup;->exitTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcn/apppark/vertify/PageGroup;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u7a0b\u5e8f"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/apppark/vertify/PageGroup;->exitTime:J

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p0}, Lcn/apppark/vertify/PageGroup;->finish()V

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcn/apppark/vertify/PageGroup;->pageBack()V

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/PageGroup;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-virtual {v0, p1, p2}, Lcn/apppark/ckj10185912/Main;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public pageBack()V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/PageGroup;->g:Lcn/apppark/vertify/IGroup;

    invoke-interface {v0}, Lcn/apppark/vertify/IGroup;->pageBack()V

    return-void
.end method

.method public pageBackHome()V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/PageGroup;->g:Lcn/apppark/vertify/IGroup;

    invoke-interface {v0}, Lcn/apppark/vertify/IGroup;->pageBackHome()V

    return-void
.end method

.method public saveActivityHistory(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Lcn/apppark/mcd/vo/base/ActivityHistoryVo;

    invoke-direct {v0}, Lcn/apppark/mcd/vo/base/ActivityHistoryVo;-><init>()V

    iget-object v1, p0, Lcn/apppark/vertify/PageGroup;->pageActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/base/ActivityHistoryVo;->setId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/PageGroup;->pageActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/vo/base/ActivityHistoryVo;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v0, p2}, Lcn/apppark/mcd/vo/base/ActivityHistoryVo;->setPageId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/apppark/vertify/PageGroup;->activityHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public showAD()V
    .locals 0

    return-void
.end method

.method public showExitDialog()V
    .locals 3

    new-instance v0, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    iget-object v1, p0, Lcn/apppark/vertify/PageGroup;->mainActivity:Lcn/apppark/ckj10185912/Main;

    invoke-direct {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setTitle(I)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setMessage(I)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const v1, 0x7f080008

    new-instance v2, Lat;

    invoke-direct {v2, p0}, Lat;-><init>(Lcn/apppark/vertify/PageGroup;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    const v1, 0x7f080009

    new-instance v2, Las;

    invoke-direct {v2, p0}, Las;-><init>(Lcn/apppark/vertify/PageGroup;)V

    invoke-virtual {v0, v1, v2}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogTwoBtn$Builder;->create()Lcn/apppark/mcd/widget/DialogTwoBtn;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/DialogTwoBtn;->show()V

    return-void
.end method

.method public startPageActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcn/apppark/vertify/PageGroup;->g:Lcn/apppark/vertify/IGroup;

    invoke-interface {v0, p1, p2}, Lcn/apppark/vertify/IGroup;->startPageActivity(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
