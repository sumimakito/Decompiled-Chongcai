.class public Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$MyonClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Lcom/google/gson/JsonElement;

.field final synthetic d:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;Lcom/google/gson/JsonElement;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$MyonClickListener;->d:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$MyonClickListener;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$MyonClickListener;->c:Lcom/google/gson/JsonElement;

    iput-object p4, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$MyonClickListener;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lid;

    invoke-direct {v0, p0}, Lid;-><init>(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$MyonClickListener;)V

    invoke-virtual {v0}, Lid;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$MyonClickListener;->c:Lcom/google/gson/JsonElement;

    invoke-static {v1, v0}, Lcn/apppark/mcd/util/jsonparse/JsonParserUtil;->parseElement2ListDirect(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$MyonClickListener;->d:Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;

    iget-object v2, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$MyonClickListener;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001$MyonClickListener;->b:Landroid/widget/TextView;

    invoke-static {v1, v0, v2, v3}, Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;->a(Lcn/apppark/vertify/activity/free/dyn/DynMsgSubmit5001;Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method
