.class final Lld;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Llc;


# direct methods
.method constructor <init>(Llc;)V
    .locals 0

    iput-object p1, p0, Lld;->a:Llc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lld;->a:Llc;

    iget-object v0, v0, Llc;->a:Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;->b(Lcn/apppark/vertify/activity/free/self/Mp4PlayerActivity;)Lcn/apppark/mcd/widget/Mp4VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/apppark/mcd/widget/Mp4VideoView;->stopPlayback()V

    return-void
.end method
