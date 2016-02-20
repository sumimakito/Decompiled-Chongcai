.class final Ljq;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;


# instance fields
.field final synthetic a:Ljp;


# direct methods
.method constructor <init>(Ljp;)V
    .locals 0

    iput-object p1, p0, Ljq;->a:Ljp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final Notify(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ljq;->a:Ljp;

    iget-object v0, v0, Ljp;->b:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->a(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;Z)Z

    iget-object v0, p0, Ljq;->a:Ljp;

    iget-object v0, v0, Ljp;->b:Lcn/apppark/vertify/activity/free/dyn/DynRss5003;

    invoke-static {v0, p1}, Lcn/apppark/vertify/activity/free/dyn/DynRss5003;->a(Lcn/apppark/vertify/activity/free/dyn/DynRss5003;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
