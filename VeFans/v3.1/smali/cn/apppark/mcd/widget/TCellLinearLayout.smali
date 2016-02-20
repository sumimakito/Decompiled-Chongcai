.class public Lcn/apppark/mcd/widget/TCellLinearLayout;
.super Landroid/widget/LinearLayout;


# static fields
.field public static final REQUEST_CAMERA:I = 0x2

.field public static final SELECT_PICTURE_SHARE:I = 0x0

.field public static final SELECT_PICTURE_SHARE_KIT:I = 0x1


# instance fields
.field public MIN_MOVE_DIS:I

.field public MaxPicNum:I

.field private btn_add:Landroid/widget/Button;

.field public cellHeight:I

.field public cellWidth:I

.field public childNum:I

.field public isMove:Z

.field public lastPositionX:I

.field public lastX:I

.field public leftScrollPos:I

.field public locationX:[I

.field public mInflater:Landroid/view/LayoutInflater;

.field public mVibrator:Landroid/os/Vibrator;

.field private parentAct:Landroid/app/Activity;

.field private parentScroll:Landroid/widget/HorizontalScrollView;

.field public photoUri:Landroid/net/Uri;

.field public rightScrollPos:I

.field public screenWidth:I

.field public tempFile:Ljava/io/File;

.field private tempFilePath:Ljava/lang/String;

.field public tempTPicCellInfo:Lcn/apppark/vertify/activity/tieba/TPicCellInfo;

.field private tv_number:Landroid/widget/TextView;

.field public uniqueIndex:I

.field public uniqueIndexSeq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/apppark/vertify/activity/tieba/TPicCellInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

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

    iput-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->tempFilePath:Ljava/lang/String;

    iput-boolean v2, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->isMove:Z

    sget v0, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    iput v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->screenWidth:I

    const/16 v0, 0x9

    iput v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->MaxPicNum:I

    const/16 v0, 0xa

    iput v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->MIN_MOVE_DIS:I

    const/16 v0, 0x5a

    iput v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->cellWidth:I

    const/16 v0, 0x82

    iput v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->cellHeight:I

    iget v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->MaxPicNum:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->locationX:[I

    iput v2, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    sget v0, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->rightScrollPos:I

    sget v0, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->leftScrollPos:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->mInflater:Landroid/view/LayoutInflater;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    iput-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->tempFilePath:Ljava/lang/String;

    iput-boolean v2, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->isMove:Z

    sget v0, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    iput v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->screenWidth:I

    const/16 v0, 0x9

    iput v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->MaxPicNum:I

    const/16 v0, 0xa

    iput v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->MIN_MOVE_DIS:I

    const/16 v0, 0x5a

    iput v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->cellWidth:I

    const/16 v0, 0x82

    iput v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->cellHeight:I

    iget v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->MaxPicNum:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->locationX:[I

    iput v2, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    sget v0, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->rightScrollPos:I

    sget v0, Lcn/apppark/ckj10185912/YYGYContants;->screenWidth:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->leftScrollPos:I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->mInflater:Landroid/view/LayoutInflater;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/TCellLinearLayout;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->parentScroll:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/TCellLinearLayout;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->getPhoto(I)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/TCellLinearLayout;II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcn/apppark/mcd/widget/TCellLinearLayout;->getPic(II)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/TCellLinearLayout;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/apppark/mcd/widget/TCellLinearLayout;->isExchangePosition(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/TCellLinearLayout;Landroid/view/View;IIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public static synthetic a(Lcn/apppark/mcd/widget/TCellLinearLayout;ZLandroid/widget/HorizontalScrollView;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic b(Lcn/apppark/mcd/widget/TCellLinearLayout;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/apppark/mcd/widget/TCellLinearLayout;->jumpToPosition(Landroid/view/View;I)V

    return-void
.end method

.method private exchangePostion(II)V
    .locals 3

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;

    iget-object v1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getCurrentLocationIndex(I)I
    .locals 3

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;->getCid()I

    move-result v0

    if-ne p1, v0, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private getPhoto(I)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->tempFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->tempFile:Ljava/io/File;

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->tempFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->photoUri:Landroid/net/Uri;

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->parentAct:Landroid/app/Activity;

    iget-object v1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->photoUri:Landroid/net/Uri;

    invoke-static {v1}, Lcn/apppark/mcd/util/imge/ImgUtil;->takePhotoIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getPic()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->parentAct:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u9009\u53d6\u56fe\u7247"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u76f8\u518c"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u62cd\u7167"

    aput-object v3, v1, v2

    new-instance v2, Lal;

    invoke-direct {v2, p0}, Lal;-><init>(Lcn/apppark/mcd/widget/TCellLinearLayout;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private getPic(II)V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->tempFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->tempFile:Ljava/io/File;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->parentAct:Landroid/app/Activity;

    const-string v2, "\u9009\u62e9\u56fe\u7247"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private isExchangePosition(Landroid/view/View;I)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;->getCid()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->getCurrentLocationIndex(I)I

    move-result v1

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->locationX:[I

    aget v0, v0, v1

    iput v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->lastPositionX:I

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->childNum:I

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->locationX:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    sub-int/2addr v0, v2

    if-le p2, v0, :cond_1

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;->getRel()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v2, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->locationX:[I

    aget v2, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->locationX:[I

    aget v4, v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->layout(IIII)V

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v1, v0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->exchangePostion(II)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->locationX:[I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->lastPositionX:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, -0x1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->locationX:[I

    add-int/lit8 v2, v1, -0x1

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;->getRel()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v2, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->locationX:[I

    aget v2, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->locationX:[I

    aget v4, v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout;->layout(IIII)V

    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, v1, v0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->exchangePostion(II)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->locationX:[I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iput v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->lastPositionX:I

    goto :goto_0
.end method

.method private jumpToPosition(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;->getImgbg()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private moveToPosition(Landroid/view/View;IIII)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private setParentScrollAble(ZLandroid/widget/HorizontalScrollView;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addCell()V
    .locals 2

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;->getRel()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->childNum:I

    iget v1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->MaxPicNum:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->getPic()V

    :goto_1
    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->tv_number:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcn/apppark/mcd/widget/TCellLinearLayout;->setTextNum(Landroid/widget/TextView;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->btn_add:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public addCellToView(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 3

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->getView()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/apppark/mcd/widget/TCellLinearLayout;->addView(Landroid/view/View;I)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;

    iput-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->tempTPicCellInfo:Lcn/apppark/vertify/activity/tieba/TPicCellInfo;

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->tempTPicCellInfo:Lcn/apppark/vertify/activity/tieba/TPicCellInfo;

    invoke-virtual {v0, p1}, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;->setPicSDpath(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->tempTPicCellInfo:Lcn/apppark/vertify/activity/tieba/TPicCellInfo;

    invoke-virtual {v0, p1}, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;->setPicName(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance v0, Lan;

    invoke-direct {v0, p0}, Lan;-><init>(Lcn/apppark/mcd/widget/TCellLinearLayout;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->tv_number:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcn/apppark/mcd/widget/TCellLinearLayout;->setTextNum(Landroid/widget/TextView;I)V

    return-void
.end method

.method public destroyCell()V
    .locals 0

    return-void
.end method

.method public getBtn_add()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->btn_add:Landroid/widget/Button;

    return-object v0
.end method

.method public getParentAct()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->parentAct:Landroid/app/Activity;

    return-object v0
.end method

.method public getParentScroll()Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->parentScroll:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method public getTv_number()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->tv_number:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView()Landroid/widget/RelativeLayout;
    .locals 7

    const/4 v6, 0x0

    iget v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndex:I

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030093

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0263

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v2, 0x7f0a0379

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a037a

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;

    invoke-direct {v4}, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;-><init>()V

    iget v5, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndex:I

    invoke-virtual {v4, v5}, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;->setCid(I)V

    invoke-virtual {v4, v1}, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;->setImg(Landroid/widget/ImageView;)V

    invoke-virtual {v4, v2}, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;->setImgbg(Landroid/widget/ImageView;)V

    invoke-virtual {v4, v0}, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;->setRel(Landroid/widget/RelativeLayout;)V

    invoke-virtual {v4, v3}, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;->setTv(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->cellWidth:I

    int-to-float v2, v2

    invoke-static {v2}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v2

    iget v5, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->cellHeight:I

    int-to-float v5, v5

    invoke-static {v5}, Lcn/apppark/mcd/util/PublicUtil;->dip2px(F)I

    move-result v5

    invoke-direct {v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lam;

    invoke-direct {v1, p0}, Lam;-><init>(Lcn/apppark/mcd/widget/TCellLinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v1, Lcn/apppark/mcd/widget/TCellLinearLayout$3;

    invoke-direct {v1, p0}, Lcn/apppark/mcd/widget/TCellLinearLayout$3;-><init>(Lcn/apppark/mcd/widget/TCellLinearLayout;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcn/apppark/mcd/widget/TCellLinearLayout$4;

    invoke-direct {v1, p0}, Lcn/apppark/mcd/widget/TCellLinearLayout$4;-><init>(Lcn/apppark/mcd/widget/TCellLinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lao;

    invoke-direct {v1, p0, v6}, Lao;-><init>(Lcn/apppark/mcd/widget/TCellLinearLayout;Lal;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->getChildCount()I

    move-result v1

    iput v1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->childNum:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->locationX:[I

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAllCell()V
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcn/apppark/mcd/widget/TCellLinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->btn_add:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->tv_number:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcn/apppark/mcd/widget/TCellLinearLayout;->setTextNum(Landroid/widget/TextView;I)V

    return-void
.end method

.method public removeCell(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/tieba/TPicCellInfo;->getRel()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/apppark/mcd/widget/TCellLinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->childNum:I

    iget v1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->MaxPicNum:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->btn_add:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->tv_number:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->uniqueIndexSeq:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcn/apppark/mcd/widget/TCellLinearLayout;->setTextNum(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setBtn_add(Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->btn_add:Landroid/widget/Button;

    return-void
.end method

.method public setParentAct(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->parentAct:Landroid/app/Activity;

    return-void
.end method

.method public setParentScroll(Landroid/widget/HorizontalScrollView;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->parentScroll:Landroid/widget/HorizontalScrollView;

    return-void
.end method

.method public setTextNum(Landroid/widget/TextView;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u9009 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5f20\uff0c\u8fd8\u5269 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->MaxPicNum:I

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u5f20\u53ef\u9009"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTv_number(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/TCellLinearLayout;->tv_number:Landroid/widget/TextView;

    return-void
.end method
