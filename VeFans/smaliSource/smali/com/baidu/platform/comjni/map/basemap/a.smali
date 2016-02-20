.class public Lcom/baidu/platform/comjni/map/basemap/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

.field private c:Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    iput-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iput-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;

    new-instance v0, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    new-instance v0, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;

    return-void
.end method

.method public static b(IIII)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->MapProc(IIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(IILjava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->AddLayer(IIILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(II)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ScrPtToGeoPoint(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(IIII)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->GetNearlyObjID(IIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->UpdateLayers(II)V

    return-void
.end method

.method public a(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ShowLayers(IIZ)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->SetMapStatus(ILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->SaveScreenToLocal(ILjava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ShowSatelliteMap(IZ)V

    return-void
.end method

.method public a()Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->Create()I

    move-result v0

    iput v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    iget-object v2, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->SetCallback(ILcom/baidu/platform/comjni/map/basemap/BaseMapCallback;)I

    const/4 v0, 0x1

    return v0
.end method

.method public a(IZI)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordStart(IIZI)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->c:Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;->SetMapCallback(Lcom/baidu/platform/comjni/map/basemap/BaseMapCallback;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)Z
    .locals 14

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->Init(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)Z

    move-result v0

    return v0
.end method

.method public b(II)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->GeoPtToScrPoint(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnSchcityGet(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ClearLayer(II)V

    return-void
.end method

.method public b(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->SetLayersClickable(IIZ)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->AddPopupData(ILandroid/os/Bundle;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ShowTrafficMap(IZ)V

    return-void
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->Release(I)I

    const/4 v0, 0x1

    return v0
.end method

.method public b(IZI)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordSuspend(IIZI)Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    return v0
.end method

.method public c(II)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->MoveToScrPoint(III)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->AddItemData(ILandroid/os/Bundle;)V

    return-void
.end method

.method public c(I)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordAdd(II)Z

    move-result v0

    return v0
.end method

.method public c(IZ)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordRemove(IIZ)Z

    move-result v0

    return v0
.end method

.method public c(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordImport(IZ)Z

    move-result v0

    return v0
.end method

.method public d(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordGetAt(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnPause(I)V

    return-void
.end method

.method public d(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->RemoveItemData(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnResume(I)V

    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->AddLogoData(ILandroid/os/Bundle;)V

    return-void
.end method

.method public f(Landroid/os/Bundle;)I
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->AddGeometryData(ILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->ResetImageRes(I)V

    return-void
.end method

.method public g()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->GetMapStatus(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->RemoveGeometryData(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnRecordGetAll(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/a;->b:Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;

    iget v1, p0, Lcom/baidu/platform/comjni/map/basemap/a;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;->OnHotcityGet(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
