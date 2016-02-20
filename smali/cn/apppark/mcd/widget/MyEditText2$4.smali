.class Lcn/apppark/mcd/widget/MyEditText2$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/mcd/widget/MyEditText2;


# direct methods
.method constructor <init>(Lcn/apppark/mcd/widget/MyEditText2;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/mcd/widget/MyEditText2$4;->a:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/apppark/mcd/widget/MyEditText2$4;->a:Lcn/apppark/mcd/widget/MyEditText2;

    invoke-static {v0}, Lcn/apppark/mcd/widget/MyEditText2;->a(Lcn/apppark/mcd/widget/MyEditText2;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
