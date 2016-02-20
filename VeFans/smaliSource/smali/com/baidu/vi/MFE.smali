.class public Lcom/baidu/vi/MFE;
.super Ljava/lang/Object;


# static fields
.field public static final MFE_ERROR_UNKNOWN:I = -0x64

.field public static final MFE_FORMAT_ADPCM_8K:I = 0x2

.field public static final MFE_FORMAT_BV32_16K:I = 0x4

.field public static final MFE_FORMAT_BV32_8K:I = 0x0

.field public static final MFE_FORMAT_PCM_16K:I = 0x5

.field public static final MFE_FORMAT_PCM_8K:I = 0x1

.field public static final MFE_MEMALLOC_ERR:I = -0x6b

.field public static final MFE_PARAMRANGE_ERR:I = -0x6d

.field public static final MFE_POINTER_ERR:I = -0x67

.field public static final MFE_SEND_TOOMORE_DATA_ONCE:I = -0x76

.field public static final MFE_STATE_ERR:I = -0x66

.field public static final MFE_SUCCESS:I = 0x0

.field public static final MFE_VAD_INIT_ERROR:I = -0x78

.field public static final PARAM_ENERGY_THRESHOLD_EP:I = 0x7

.field public static final PARAM_ENERGY_THRESHOLD_SP:I = 0x6

.field public static final PARAM_MAX_SP_DURATION:I = 0x2

.field public static final PARAM_MAX_SP_PAUSE:I = 0x3

.field public static final PARAM_MAX_WAIT_DURATION:I = 0x1

.field public static final PARAM_MIN_SP_DURATION:I = 0x4

.field public static final PARAM_OFFSET:I = 0x8

.field public static final PARAM_SLEEP_TIMEOUT:I = 0x5

.field public static final PARAM_SPEECH_END:I = 0x9

.field public static final PARAM_SPEECH_MODE:I = 0xa

.field public static final SPEECH_EMPTY:I = 0x3

.field public static final SPEECH_END:I = 0x2

.field public static final SPEECH_NOT_START:I = 0x0

.field public static final SPEECH_START:I = 0x1

.field public static final SPEECH_TOO_SHORT:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mfeClose()I
    .locals 1

    invoke-static {}, Lcn/thinkit/libtmfe/test/JNI;->mfeClose()I

    move-result v0

    return v0
.end method

.method public mfeDetect()I
    .locals 1

    invoke-static {}, Lcn/thinkit/libtmfe/test/JNI;->mfeDetect()I

    move-result v0

    return v0
.end method

.method public mfeExit()I
    .locals 1

    invoke-static {}, Lcn/thinkit/libtmfe/test/JNI;->mfeExit()I

    move-result v0

    return v0
.end method

.method public mfeGetCallbackData([BI)I
    .locals 1

    invoke-static {p1, p2}, Lcn/thinkit/libtmfe/test/JNI;->mfeGetCallbackData([BI)I

    move-result v0

    return v0
.end method

.method public mfeInit()I
    .locals 1

    invoke-static {}, Lcn/thinkit/libtmfe/test/JNI;->mfeInit()I

    move-result v0

    return v0
.end method

.method public mfeInit(II)I
    .locals 1

    invoke-static {p1, p2}, Lcn/thinkit/libtmfe/test/JNI;->mfeInit(II)I

    move-result v0

    return v0
.end method

.method public mfeOpen()I
    .locals 1

    invoke-static {}, Lcn/thinkit/libtmfe/test/JNI;->mfeOpen()I

    move-result v0

    return v0
.end method

.method public mfeSendData([SI)I
    .locals 1

    invoke-static {p1, p2}, Lcn/thinkit/libtmfe/test/JNI;->mfeSendData([SI)I

    move-result v0

    return v0
.end method

.method public mfeStart()I
    .locals 1

    invoke-static {}, Lcn/thinkit/libtmfe/test/JNI;->mfeStart()I

    move-result v0

    return v0
.end method

.method public mfeStop()I
    .locals 1

    invoke-static {}, Lcn/thinkit/libtmfe/test/JNI;->mfeStop()I

    move-result v0

    return v0
.end method
