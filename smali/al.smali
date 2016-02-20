.class public final Lal;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/TCellLinearLayout;


# direct methods
.method public constructor <init>(Lcn/apppark/mcd/widget/TCellLinearLayout;)V
    .locals 0

    iput-object p1, p0, Lal;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lal;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/apppark/mcd/widget/TCellLinearLayout;->a(Lcn/apppark/mcd/widget/TCellLinearLayout;II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lal;->a:Lcn/apppark/mcd/widget/TCellLinearLayout;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/apppark/mcd/widget/TCellLinearLayout;->a(Lcn/apppark/mcd/widget/TCellLinearLayout;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
