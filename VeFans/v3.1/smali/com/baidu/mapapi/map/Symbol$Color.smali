.class public Lcom/baidu/mapapi/map/Symbol$Color;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/map/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Color"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/map/Symbol;

.field public alpha:I

.field public blue:I

.field public green:I

.field public red:I


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/Symbol;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/map/Symbol$Color;->a:Lcom/baidu/mapapi/map/Symbol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
