.class public Lorg/mozilla/intl/chardet/nsDetector;
.super Lorg/mozilla/intl/chardet/nsPSMDetector;

# interfaces
.implements Lorg/mozilla/intl/chardet/nsICharsetDetector;


# instance fields
.field mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/intl/chardet/nsPSMDetector;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsDetector;->mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/mozilla/intl/chardet/nsPSMDetector;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsDetector;->mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    return-void
.end method


# virtual methods
.method public DoIt([BIZ)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/intl/chardet/nsDetector;->HandleData([BI)Z

    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsDetector;->mDone:Z

    goto :goto_0
.end method

.method public Done()V
    .locals 0

    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsDetector;->DataEnd()V

    return-void
.end method

.method public Init(Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/intl/chardet/nsDetector;->mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    return-void
.end method

.method public Report(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsDetector;->mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsDetector;->mObserver:Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;

    invoke-interface {v0, p1}, Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;->Notify(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isAscii([BI)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
