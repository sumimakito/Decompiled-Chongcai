.class public Lcom/baidu/platform/comjni/map/basemap/JNIBaseMap;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native MapProc(IIII)I
.end method


# virtual methods
.method public native AddGeometryData(ILandroid/os/Bundle;)I
.end method

.method public native AddItemData(ILandroid/os/Bundle;)V
.end method

.method public native AddLayer(IIILjava/lang/String;)I
.end method

.method public native AddLogoData(ILandroid/os/Bundle;)V
.end method

.method public native AddPopupData(ILandroid/os/Bundle;)V
.end method

.method public native ClearLayer(II)V
.end method

.method public native Create()I
.end method

.method public native GeoPtToScrPoint(III)Ljava/lang/String;
.end method

.method public native GetMapStatus(I)Landroid/os/Bundle;
.end method

.method public native GetNearlyObjID(IIIII)Ljava/lang/String;
.end method

.method public native Init(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)Z
.end method

.method public native MoveToScrPoint(III)V
.end method

.method public native OnHotcityGet(I)Ljava/lang/String;
.end method

.method public native OnPause(I)V
.end method

.method public native OnRecordAdd(II)Z
.end method

.method public native OnRecordGetAll(I)Ljava/lang/String;
.end method

.method public native OnRecordGetAt(II)Ljava/lang/String;
.end method

.method public native OnRecordImport(IZ)Z
.end method

.method public native OnRecordRemove(IIZ)Z
.end method

.method public native OnRecordStart(IIZI)Z
.end method

.method public native OnRecordSuspend(IIZI)Z
.end method

.method public native OnResume(I)V
.end method

.method public native OnSchcityGet(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public native Release(I)I
.end method

.method public native RemoveGeometryData(ILandroid/os/Bundle;)Z
.end method

.method public native RemoveItemData(ILandroid/os/Bundle;)Z
.end method

.method public native ResetImageRes(I)V
.end method

.method public native SaveScreenToLocal(ILjava/lang/String;)V
.end method

.method public native ScrPtToGeoPoint(III)Ljava/lang/String;
.end method

.method public native SetCallback(ILcom/baidu/platform/comjni/map/basemap/BaseMapCallback;)I
.end method

.method public native SetLayersClickable(IIZ)V
.end method

.method public native SetMapStatus(ILandroid/os/Bundle;)V
.end method

.method public native ShowLayers(IIZ)V
.end method

.method public native ShowSatelliteMap(IZ)V
.end method

.method public native ShowTrafficMap(IZ)V
.end method

.method public native UpdateLayers(II)V
.end method
