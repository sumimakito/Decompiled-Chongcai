.class Lcn/apppark/vertify/adapter/SoftAdapter$MyonClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcn/apppark/vertify/adapter/SoftAdapter;


# direct methods
.method private constructor <init>(Lcn/apppark/vertify/adapter/SoftAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/apppark/vertify/adapter/SoftAdapter$MyonClickListener;->b:Lcn/apppark/vertify/adapter/SoftAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/apppark/vertify/adapter/SoftAdapter$MyonClickListener;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcn/apppark/vertify/adapter/SoftAdapter;Ljava/lang/String;Luz;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/apppark/vertify/adapter/SoftAdapter$MyonClickListener;-><init>(Lcn/apppark/vertify/adapter/SoftAdapter;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/apppark/vertify/adapter/SoftAdapter$MyonClickListener;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&imei="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/apppark/ckj10185912/YYGYContants;->IMEI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcn/apppark/vertify/adapter/SoftAdapter$MyonClickListener;->b:Lcn/apppark/vertify/adapter/SoftAdapter;

    invoke-static {v1}, Lcn/apppark/vertify/adapter/SoftAdapter;->a(Lcn/apppark/vertify/adapter/SoftAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
