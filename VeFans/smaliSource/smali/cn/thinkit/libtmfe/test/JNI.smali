.class public Lcn/thinkit/libtmfe/test/JNI;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "Audiofe_V1"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "JNI"

    const-string v1, "Audiofe_V1 library not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native mfeClose()I
.end method

.method public static native mfeDetect()I
.end method

.method public static native mfeExit()I
.end method

.method public static native mfeGetCallbackData([BI)I
.end method

.method public static native mfeInit()I
.end method

.method public static native mfeInit(II)I
.end method

.method public static native mfeOpen()I
.end method

.method public static native mfeSendData([SI)I
.end method

.method public static native mfeStart()I
.end method

.method public static native mfeStop()I
.end method
