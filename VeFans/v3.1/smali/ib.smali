.class public final Lib;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;Landroid/widget/TextView;[Ljava/lang/String;Landroid/widget/TextView;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lib;->e:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    iput-object p2, p0, Lib;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lib;->b:[Ljava/lang/String;

    iput-object p4, p0, Lib;->c:Landroid/widget/TextView;

    iput-object p5, p0, Lib;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lib;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lib;->b:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lib;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, p0, Lib;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lib;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/vo/dyn/Dyn5001Item2Vo;

    invoke-virtual {v0}, Lcn/apppark/mcd/vo/dyn/Dyn5001Item2Vo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
