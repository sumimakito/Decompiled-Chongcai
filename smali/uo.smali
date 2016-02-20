.class public final Luo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:Z

.field final synthetic b:Lcn/apppark/vertify/base/PushWebView;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/base/PushWebView;)V
    .locals 1

    iput-object p1, p0, Luo;->b:Lcn/apppark/vertify/base/PushWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Luo;->a:Z

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Luo;->a:Z

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Luo;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Luo;->b:Lcn/apppark/vertify/base/PushWebView;

    invoke-static {v0, v1}, Lcn/apppark/vertify/base/PushWebView;->a(Lcn/apppark/vertify/base/PushWebView;I)I

    iget-object v0, p0, Luo;->b:Lcn/apppark/vertify/base/PushWebView;

    invoke-static {v0}, Lcn/apppark/vertify/base/PushWebView;->a(Lcn/apppark/vertify/base/PushWebView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Luo;->b:Lcn/apppark/vertify/base/PushWebView;

    invoke-static {v0}, Lcn/apppark/vertify/base/PushWebView;->b(Lcn/apppark/vertify/base/PushWebView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Luo;->b:Lcn/apppark/vertify/base/PushWebView;

    invoke-static {v0}, Lcn/apppark/vertify/base/PushWebView;->c(Lcn/apppark/vertify/base/PushWebView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iput-boolean v1, p0, Luo;->a:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
