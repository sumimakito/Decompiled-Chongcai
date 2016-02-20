.class public final Llm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/STogetherBase;)V
    .locals 0

    iput-object p1, p0, Llm;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Llm;->a:Lcn/apppark/vertify/activity/free/dyn/STogetherBase;

    invoke-virtual {v0, p3}, Lcn/apppark/vertify/activity/free/dyn/STogetherBase;->changePoint(I)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
