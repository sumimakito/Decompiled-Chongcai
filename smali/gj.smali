.class public final Lgj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:Landroid/widget/EditText;

.field final synthetic b:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lgj;->b:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgj;->a:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lgj;->b:Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;

    iget-object v1, p0, Lgj;->a:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;->a(Lcn/apppark/vertify/activity/buy/adapter/BuyBuyCarAdapter;Landroid/widget/EditText;)Landroid/widget/EditText;

    const/4 v0, 0x0

    return v0
.end method
