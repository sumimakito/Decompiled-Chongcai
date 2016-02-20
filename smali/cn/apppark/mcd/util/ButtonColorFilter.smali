.class public Lcn/apppark/mcd/util/ButtonColorFilter;
.super Ljava/lang/Object;


# static fields
.field public static final BT_NOT_SELECTED:[F

.field public static final BT_SELECTED:[F

.field public static CLICKALPHA:I

.field public static INITALPHA:I

.field private static final buttonColorOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private static final buttonColorOnTouchListener:Landroid/view/View$OnTouchListener;

.field private static final buttonOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private static final buttonOnTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x14

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcn/apppark/mcd/util/ButtonColorFilter;->BT_SELECTED:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcn/apppark/mcd/util/ButtonColorFilter;->BT_NOT_SELECTED:[F

    const/16 v0, 0xff

    sput v0, Lcn/apppark/mcd/util/ButtonColorFilter;->INITALPHA:I

    const/16 v0, 0xc8

    sput v0, Lcn/apppark/mcd/util/ButtonColorFilter;->CLICKALPHA:I

    new-instance v0, Lf;

    invoke-direct {v0}, Lf;-><init>()V

    sput-object v0, Lcn/apppark/mcd/util/ButtonColorFilter;->buttonOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lg;

    invoke-direct {v0}, Lg;-><init>()V

    sput-object v0, Lcn/apppark/mcd/util/ButtonColorFilter;->buttonOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lh;

    invoke-direct {v0}, Lh;-><init>()V

    sput-object v0, Lcn/apppark/mcd/util/ButtonColorFilter;->buttonColorOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Li;

    invoke-direct {v0}, Li;-><init>()V

    sput-object v0, Lcn/apppark/mcd/util/ButtonColorFilter;->buttonColorOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x42480000    # 50.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x42480000    # 50.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x42480000    # 50.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final setButtonColorFocusChanged(Landroid/widget/Button;[I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Lj;

    invoke-direct {v0, p1}, Lj;-><init>([I)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lk;

    invoke-direct {v0, p1}, Lk;-><init>([I)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public static final setButtonFocusChanged(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcn/apppark/mcd/util/ButtonColorFilter;->buttonOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Lcn/apppark/mcd/util/ButtonColorFilter;->buttonOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public static final setButtonFocusChanged(Landroid/view/View;I)V
    .locals 1

    sput p1, Lcn/apppark/mcd/util/ButtonColorFilter;->INITALPHA:I

    sget-object v0, Lcn/apppark/mcd/util/ButtonColorFilter;->buttonOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v0, Lcn/apppark/mcd/util/ButtonColorFilter;->buttonOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public static final setImageViewFocusChanged(Landroid/view/View;)V
    .locals 1

    new-instance v0, Ll;

    invoke-direct {v0, p0}, Ll;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static final setImageViewSrcFocusChanged(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lm;

    invoke-direct {v0, p0}, Lm;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
