.class public Lcn/apppark/vertify/base/SetAct;
.super Landroid/preference/PreferenceActivity;


# instance fields
.field public a:Lcn/apppark/mcd/widget/TimePreference;

.field b:Landroid/preference/CheckBoxPreference;

.field public c:Lcn/apppark/mcd/widget/TimePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/SetAct;->addPreferencesFromResource(I)V

    const-string v0, "lbs_on_off"

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/SetAct;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcn/apppark/vertify/base/SetAct;->b:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v0, p0, Lcn/apppark/vertify/base/SetAct;->b:Landroid/preference/CheckBoxPreference;

    const-string v2, "lbs_on_off"

    sget-boolean v3, Lcn/apppark/ckj10185912/HQCHApplication;->isLBSopen:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcn/apppark/vertify/base/SetAct;->b:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lur;

    invoke-direct {v2, p0}, Lur;-><init>(Lcn/apppark/vertify/base/SetAct;)V

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "lbs_start"

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/SetAct;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/TimePreference;

    iput-object v0, p0, Lcn/apppark/vertify/base/SetAct;->c:Lcn/apppark/mcd/widget/TimePreference;

    iget-object v0, p0, Lcn/apppark/vertify/base/SetAct;->c:Lcn/apppark/mcd/widget/TimePreference;

    const-string v2, "lbs_start"

    const-string v3, "09:00"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/TimePreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/base/SetAct;->c:Lcn/apppark/mcd/widget/TimePreference;

    new-instance v2, Lus;

    invoke-direct {v2, p0}, Lus;-><init>(Lcn/apppark/vertify/base/SetAct;)V

    invoke-virtual {v0, v2}, Lcn/apppark/mcd/widget/TimePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "lbs_end"

    invoke-virtual {p0, v0}, Lcn/apppark/vertify/base/SetAct;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcn/apppark/mcd/widget/TimePreference;

    iput-object v0, p0, Lcn/apppark/vertify/base/SetAct;->a:Lcn/apppark/mcd/widget/TimePreference;

    iget-object v0, p0, Lcn/apppark/vertify/base/SetAct;->a:Lcn/apppark/mcd/widget/TimePreference;

    const-string v2, "lbs_end"

    const-string v3, "23:59"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/TimePreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/apppark/vertify/base/SetAct;->a:Lcn/apppark/mcd/widget/TimePreference;

    new-instance v1, Lut;

    invoke-direct {v1, p0}, Lut;-><init>(Lcn/apppark/vertify/base/SetAct;)V

    invoke-virtual {v0, v1}, Lcn/apppark/mcd/widget/TimePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
