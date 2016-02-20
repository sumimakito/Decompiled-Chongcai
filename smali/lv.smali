.class public final Llv;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/self/SelfWebView;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/self/SelfWebView;)V
    .locals 0

    iput-object p1, p0, Llv;->a:Lcn/apppark/vertify/activity/free/self/SelfWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method
