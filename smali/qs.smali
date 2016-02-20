.class public final Lqs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcn/apppark/vertify/adapter/TEmojiCellAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/EditText;Lcn/apppark/vertify/adapter/TEmojiCellAdapter;)V
    .locals 0

    iput-object p1, p0, Lqs;->a:Landroid/content/Context;

    iput-object p2, p0, Lqs;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lqs;->c:Lcn/apppark/vertify/adapter/TEmojiCellAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lqs;->a:Landroid/content/Context;

    iget-object v1, p0, Lqs;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lqs;->c:Lcn/apppark/vertify/adapter/TEmojiCellAdapter;

    invoke-virtual {v2, p3}, Lcn/apppark/vertify/adapter/TEmojiCellAdapter;->getFaceId(I)I

    move-result v2

    iget-object v3, p0, Lqs;->c:Lcn/apppark/vertify/adapter/TEmojiCellAdapter;

    invoke-virtual {v3, p3}, Lcn/apppark/vertify/adapter/TEmojiCellAdapter;->getFaceStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcn/apppark/vertify/activity/tieba/TBaseParam;->setFace(Landroid/content/Context;Landroid/widget/TextView;ILjava/lang/String;)V

    return-void
.end method
