.class public Lorg/mozilla/intl/chardet/HtmlCharsetDetector;
.super Ljava/lang/Object;


# static fields
.field public static found:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/mozilla/intl/chardet/HtmlCharsetDetector;->found:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    array-length v0, p0

    if-eq v0, v2, :cond_1

    array-length v0, p0

    if-eq v0, v3, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: HtmlCharsetDetector <url> [<languageHint>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Where <url> is http://..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "For optional <languageHint>. Use following..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\t\t1 => Japanese"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\t\t2 => Chinese"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\t\t3 => Simplified Chinese"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\t\t4 => Traditional Chinese"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\t\t5 => Korean"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\t\t6 => Dont know (default)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    array-length v0, p0

    if-ne v0, v3, :cond_4

    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    new-instance v4, Lorg/mozilla/intl/chardet/nsDetector;

    invoke-direct {v4, v0}, Lorg/mozilla/intl/chardet/nsDetector;-><init>(I)V

    new-instance v0, Lorg/mozilla/intl/chardet/HtmlCharsetDetector$1;

    invoke-direct {v0}, Lorg/mozilla/intl/chardet/HtmlCharsetDetector$1;-><init>()V

    invoke-virtual {v4, v0}, Lorg/mozilla/intl/chardet/nsDetector;->Init(Lorg/mozilla/intl/chardet/nsICharsetDetectionObserver;)V

    new-instance v0, Ljava/net/URL;

    aget-object v3, p0, v1

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x400

    new-array v6, v0, [B

    move v0, v2

    move v3, v1

    :cond_2
    :goto_1
    array-length v7, v6

    invoke-virtual {v5, v6, v1, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    if-eqz v0, :cond_3

    invoke-virtual {v4, v6, v7}, Lorg/mozilla/intl/chardet/nsDetector;->isAscii([BI)Z

    move-result v0

    :cond_3
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    invoke-virtual {v4, v6, v7, v1}, Lorg/mozilla/intl/chardet/nsDetector;->DoIt([BIZ)Z

    move-result v3

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Lorg/mozilla/intl/chardet/nsDetector;->DataEnd()V

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "CHARSET = ASCII"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sput-boolean v2, Lorg/mozilla/intl/chardet/HtmlCharsetDetector;->found:Z

    :cond_6
    sget-boolean v0, Lorg/mozilla/intl/chardet/HtmlCharsetDetector;->found:Z

    if-nez v0, :cond_0

    invoke-virtual {v4}, Lorg/mozilla/intl/chardet/nsDetector;->getProbableCharsets()[Ljava/lang/String;

    move-result-object v0

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Probable Charset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
