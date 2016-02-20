.class public final Lus;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcn/apppark/vertify/base/SetAct;


# direct methods
.method public constructor <init>(Lcn/apppark/vertify/base/SetAct;)V
    .locals 0

    iput-object p1, p0, Lus;->a:Lcn/apppark/vertify/base/SetAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lus;->a:Lcn/apppark/vertify/base/SetAct;

    iget-object v0, v0, Lcn/apppark/vertify/base/SetAct;->c:Lcn/apppark/mcd/widget/TimePreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/TimePreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0
.end method
