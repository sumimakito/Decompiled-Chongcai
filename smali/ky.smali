.class public final Lky;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/activity/free/function/FunctionsSms;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/activity/free/function/FunctionsSms;)V
    .locals 0

    iput-object p1, p0, Lky;->a:Lcn/apppark/vertify/activity/free/function/FunctionsSms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lky;->a:Lcn/apppark/vertify/activity/free/function/FunctionsSms;

    invoke-virtual {v0}, Lcn/apppark/vertify/activity/free/function/FunctionsSms;->sendSmsMainEnter()V

    return-void
.end method
