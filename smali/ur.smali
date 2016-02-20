.class public final Lur;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/base/SetAct;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/base/SetAct;)V
    .locals 0

    iput-object p1, p0, Lur;->a:Lcn/apppark/vertify/base/SetAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const-string v0, "true"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lur;->a:Lcn/apppark/vertify/base/SetAct;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lur;->a:Lcn/apppark/vertify/base/SetAct;

    const-class v3, Lcn/apppark/vertify/activity/service/LBSService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/SetAct;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lur;->a:Lcn/apppark/vertify/base/SetAct;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lur;->a:Lcn/apppark/vertify/base/SetAct;

    const-class v3, Lcn/apppark/vertify/activity/service/LBSService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/base/SetAct;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method
