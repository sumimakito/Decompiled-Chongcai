.class public final Lup;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/base/PushWebView;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/base/PushWebView;)V
    .locals 0

    iput-object p1, p0, Lup;->a:Lcn/apppark/vertify/base/PushWebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    const/16 v1, 0x8

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lup;->a:Lcn/apppark/vertify/base/PushWebView;

    invoke-static {v0}, Lcn/apppark/vertify/base/PushWebView;->a(Lcn/apppark/vertify/base/PushWebView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lup;->a:Lcn/apppark/vertify/base/PushWebView;

    invoke-static {v0}, Lcn/apppark/vertify/base/PushWebView;->b(Lcn/apppark/vertify/base/PushWebView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lup;->a:Lcn/apppark/vertify/base/PushWebView;

    invoke-static {v0}, Lcn/apppark/vertify/base/PushWebView;->c(Lcn/apppark/vertify/base/PushWebView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
