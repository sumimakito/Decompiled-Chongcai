.class public final Ljw;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)V
    .locals 0

    iput-object p1, p0, Ljw;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ljw;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v0}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Ljw;->a:Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;

    invoke-static {v1}, Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;->a(Lcn/apppark/vertify/activity/free/dyn/DynSearch5007Act;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
