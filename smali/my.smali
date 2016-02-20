.class public final Lmy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/typenine/SelfGridView4007;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/typenine/SelfGridView4007;)V
    .locals 0

    iput-object p1, p0, Lmy;->a:Lcn/apppark/vertify/activity/free/typenine/SelfGridView4007;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lmy;->a:Lcn/apppark/vertify/activity/free/typenine/SelfGridView4007;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4007;->c(Lcn/apppark/vertify/activity/free/typenine/SelfGridView4007;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lmy;->a:Lcn/apppark/vertify/activity/free/typenine/SelfGridView4007;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/typenine/SelfGridView4007;->c(Lcn/apppark/vertify/activity/free/typenine/SelfGridView4007;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method
