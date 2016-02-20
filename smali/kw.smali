.class final Lkw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mapapi/map/PopupClickListener;


# instance fields
.field final synthetic a:Lkv;


# direct methods
.method constructor <init>(Lkv;)V
    .locals 0

    iput-object p1, p0, Lkw;->a:Lkv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickedPopup(I)V
    .locals 2

    iget-object v0, p0, Lkw;->a:Lkv;

    iget-object v0, v0, Lkv;->b:Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;

    iget-object v1, p0, Lkw;->a:Lkv;

    iget-object v1, v1, Lkv;->a:Lcn/apppark/mcd/vo/free/FunctionMapVo;

    invoke-virtual {v0, v1}, Lcn/apppark/vertify/activity/free/function/FunctionBaiduMapActivity;->startFunctions(Lcn/apppark/mcd/vo/free/FunctionMapVo;)V

    return-void
.end method
