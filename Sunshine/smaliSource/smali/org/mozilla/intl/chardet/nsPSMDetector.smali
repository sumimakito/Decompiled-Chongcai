.class public abstract Lorg/mozilla/intl/chardet/nsPSMDetector;
.super Ljava/lang/Object;


# static fields
.field public static final ALL:I = 0x0

.field public static final CHINESE:I = 0x2

.field public static final JAPANESE:I = 0x1

.field public static final KOREAN:I = 0x5

.field public static final MAX_VERIFIERS:I = 0x10

.field public static final NO_OF_LANGUAGES:I = 0x6

.field public static final SIMPLIFIED_CHINESE:I = 0x3

.field public static final TRADITIONAL_CHINESE:I = 0x4


# instance fields
.field mClassItems:I

.field mClassRunSampler:Z

.field mDone:Z

.field mItemIdx:[I

.field mItems:I

.field mRunSampler:Z

.field mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

.field mState:[B

.field mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

.field mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-direct {v0}, Lorg/mozilla/intl/chardet/nsEUCSampler;-><init>()V

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->initVerifiers(I)V

    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Reset()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-direct {v0}, Lorg/mozilla/intl/chardet/nsEUCSampler;-><init>()V

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    invoke-virtual {p0, p1}, Lorg/mozilla/intl/chardet/nsPSMDetector;->initVerifiers(I)V

    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Reset()V

    return-void
.end method

.method public constructor <init>(I[Lorg/mozilla/intl/chardet/nsVerifier;[Lorg/mozilla/intl/chardet/nsEUCStatistics;)V
    .locals 2

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-direct {v0}, Lorg/mozilla/intl/chardet/nsEUCSampler;-><init>()V

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassRunSampler:Z

    iput-object p3, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    iput-object p2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iput p1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassItems:I

    invoke-virtual {p0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Reset()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DataEnd()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GB18030"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    iput-boolean v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Sample([BIZ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GB18030"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    iput-boolean v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    goto :goto_1
.end method

.method public HandleData([BI)Z
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x1

    move v4, v1

    :goto_0
    if-ge v4, p2, :cond_9

    aget-byte v3, p1, v4

    move v0, v1

    :cond_0
    :goto_1
    iget v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v5, v5, v0

    aget-object v2, v2, v5

    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    aget-byte v5, v5, v0

    invoke-static {v2, v3, v5}, Lorg/mozilla/intl/chardet/nsVerifier;->getNextState(Lorg/mozilla/intl/chardet/nsVerifier;BB)B

    move-result v5

    const/4 v2, 0x2

    if-ne v5, v2, :cond_1

    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v0, v2, v0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    iput-boolean v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    :goto_2
    return v0

    :cond_1
    if-ne v5, v7, :cond_2

    iget v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    iget v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    iget v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    aget v5, v5, v6

    aput v5, v2, v0

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    iget v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    aget-byte v5, v5, v6

    aput-byte v5, v2, v0

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    add-int/lit8 v2, v0, 0x1

    aput-byte v5, v6, v0

    move v0, v2

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-gt v0, v7, :cond_5

    iget v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-ne v7, v0, :cond_4

    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v2, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    :cond_4
    iput-boolean v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    goto :goto_2

    :cond_5
    move v0, v1

    move v2, v1

    move v3, v1

    :goto_3
    iget v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-ge v3, v5, :cond_7

    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/mozilla/intl/chardet/nsVerifier;->isUCS2()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/mozilla/intl/chardet/nsVerifier;->isUCS2()Z

    move-result v5

    if-nez v5, :cond_6

    add-int/lit8 v2, v2, 0x1

    move v0, v3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    if-ne v7, v2, :cond_8

    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v0, v2, v0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    iput-boolean v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    :cond_9
    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Sample([BI)V

    :cond_a
    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    goto/16 :goto_2
.end method

.method public abstract Report(Ljava/lang/String;)V
.end method

.method public Reset()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassRunSampler:Z

    iput-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    iput-boolean v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    iget v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassItems:I

    iput v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mState:[B

    aput-byte v1, v2, v0

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsEUCSampler;->Reset()V

    return-void
.end method

.method public Sample([BI)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Sample([BIZ)V

    return-void
.end method

.method public Sample([BIZ)V
    .locals 11

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    iget v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    iget-object v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v6, v6, v2

    aget-object v5, v5, v6

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v6, v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/mozilla/intl/chardet/nsVerifier;->isUCS2()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v6, v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GB18030"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-le v0, v4, :cond_7

    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    iget-boolean v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-virtual {v2, p1, p2}, Lorg/mozilla/intl/chardet/nsEUCSampler;->Sample([BI)Z

    move-result v2

    iput-boolean v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mRunSampler:Z

    if-eqz p3, :cond_3

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-virtual {v2}, Lorg/mozilla/intl/chardet/nsEUCSampler;->GetSomeData()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-virtual {v2}, Lorg/mozilla/intl/chardet/nsEUCSampler;->EnoughData()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_4
    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsEUCSampler;->CalFreq()V

    const/4 v2, -0x1

    const/4 v0, 0x0

    move v3, v1

    :goto_2
    iget v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-ge v3, v5, :cond_8

    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    iget-object v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    if-eqz v5, :cond_6

    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Big5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mSampler:Lorg/mozilla/intl/chardet/nsEUCSampler;

    iget-object v6, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    iget-object v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v7, v7, v3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lorg/mozilla/intl/chardet/nsEUCStatistics;->mFirstByteFreq()[F

    move-result-object v6

    iget-object v7, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    iget-object v8, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v8, v8, v3

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/mozilla/intl/chardet/nsEUCStatistics;->mFirstByteWeight()F

    move-result v7

    iget-object v8, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    iget-object v9, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v9, v9, v3

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lorg/mozilla/intl/chardet/nsEUCStatistics;->mSecondByteFreq()[F

    move-result-object v8

    iget-object v9, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    iget-object v10, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v10, v10, v3

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lorg/mozilla/intl/chardet/nsEUCStatistics;->mSecondByteWeight()F

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/mozilla/intl/chardet/nsEUCSampler;->GetScore([FF[FF)F

    move-result v5

    add-int/lit8 v6, v1, 0x1

    if-eqz v1, :cond_5

    cmpl-float v1, v0, v5

    if-lez v1, :cond_a

    :cond_5
    move v0, v5

    move v1, v6

    move v2, v3

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    move v2, v1

    goto/16 :goto_1

    :cond_8
    if-ltz v2, :cond_9

    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v1, v1, v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/intl/chardet/nsPSMDetector;->Report(Ljava/lang/String;)V

    iput-boolean v4, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mDone:Z

    :cond_9
    return-void

    :cond_a
    move v1, v6

    goto :goto_3
.end method

.method public getProbableCharsets()[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "nomatch"

    aput-object v2, v1, v0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    new-array v1, v1, [Ljava/lang/String;

    :goto_1
    iget v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItems:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iget-object v3, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mItemIdx:[I

    aget v3, v3, v0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/mozilla/intl/chardet/nsVerifier;->charset()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected initVerifiers(I)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    if-ltz p1, :cond_2

    const/4 v2, 0x6

    if-ge p1, v2, :cond_2

    :goto_0
    iput-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    iput-object v5, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/nsBIG5Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsBIG5Verifier;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsEUCStatistics;

    aput-object v5, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/Big5Statistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/Big5Statistics;-><init>()V

    aput-object v3, v2, v1

    aput-object v5, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/EUCTWStatistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/EUCTWStatistics;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    aput-object v5, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    aput-object v5, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    :cond_0
    :goto_1
    iget-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassRunSampler:Z

    iget-object v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    array-length v0, v0

    iput v0, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mClassItems:I

    return-void

    :cond_2
    move p1, v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-ne p1, v2, :cond_4

    const/4 v2, 0x6

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/nsEUCKRVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsEUCKRVerifier;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    goto :goto_1

    :cond_4
    if-ne p1, v7, :cond_5

    const/16 v2, 0x8

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/nsGB2312Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsGB2312Verifier;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/nsGB18030Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsGB18030Verifier;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsHZVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsHZVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    goto/16 :goto_1

    :cond_5
    if-ne p1, v1, :cond_6

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/nsSJISVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsSJISVerifier;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/nsISO2022JPVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsISO2022JPVerifier;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    goto/16 :goto_1

    :cond_6
    if-ne p1, v6, :cond_7

    const/16 v2, 0xa

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/nsGB2312Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsGB2312Verifier;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/nsGB18030Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsGB18030Verifier;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/nsBIG5Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsBIG5Verifier;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/intl/chardet/nsHZVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsHZVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    const/16 v2, 0xa

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsEUCStatistics;

    aput-object v5, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/GB2312Statistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/GB2312Statistics;-><init>()V

    aput-object v3, v2, v1

    aput-object v5, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/Big5Statistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/Big5Statistics;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    aput-object v5, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/intl/chardet/EUCTWStatistics;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/EUCTWStatistics;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    aput-object v5, v2, v3

    const/16 v3, 0x8

    aput-object v5, v2, v3

    const/16 v3, 0x9

    aput-object v5, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    goto/16 :goto_1

    :cond_7
    if-nez p1, :cond_0

    const/16 v2, 0xf

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsVerifier;

    new-instance v3, Lorg/mozilla/intl/chardet/nsUTF8Verifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsUTF8Verifier;-><init>()V

    aput-object v3, v2, v0

    new-instance v3, Lorg/mozilla/intl/chardet/nsSJISVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsSJISVerifier;-><init>()V

    aput-object v3, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;-><init>()V

    aput-object v3, v2, v6

    new-instance v3, Lorg/mozilla/intl/chardet/nsISO2022JPVerifier;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/nsISO2022JPVerifier;-><init>()V

    aput-object v3, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/nsEUCKRVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsEUCKRVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsISO2022KRVerifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/intl/chardet/nsBIG5Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsBIG5Verifier;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsEUCTWVerifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lorg/mozilla/intl/chardet/nsGB2312Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsGB2312Verifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-instance v4, Lorg/mozilla/intl/chardet/nsGB18030Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsGB18030Verifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-instance v4, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsISO2022CNVerifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-instance v4, Lorg/mozilla/intl/chardet/nsHZVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsHZVerifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-instance v4, Lorg/mozilla/intl/chardet/nsCP1252Verifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsCP1252Verifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xd

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0xe

    new-instance v4, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/nsUCS2LEVerifier;-><init>()V

    aput-object v4, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mVerifier:[Lorg/mozilla/intl/chardet/nsVerifier;

    const/16 v2, 0xf

    new-array v2, v2, [Lorg/mozilla/intl/chardet/nsEUCStatistics;

    aput-object v5, v2, v0

    aput-object v5, v2, v1

    new-instance v3, Lorg/mozilla/intl/chardet/EUCJPStatistics;

    invoke-direct {v3}, Lorg/mozilla/intl/chardet/EUCJPStatistics;-><init>()V

    aput-object v3, v2, v6

    aput-object v5, v2, v7

    const/4 v3, 0x4

    new-instance v4, Lorg/mozilla/intl/chardet/EUCKRStatistics;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/EUCKRStatistics;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    new-instance v4, Lorg/mozilla/intl/chardet/Big5Statistics;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/Big5Statistics;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-instance v4, Lorg/mozilla/intl/chardet/EUCTWStatistics;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/EUCTWStatistics;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-instance v4, Lorg/mozilla/intl/chardet/GB2312Statistics;

    invoke-direct {v4}, Lorg/mozilla/intl/chardet/GB2312Statistics;-><init>()V

    aput-object v4, v2, v3

    const/16 v3, 0x9

    aput-object v5, v2, v3

    const/16 v3, 0xa

    aput-object v5, v2, v3

    const/16 v3, 0xb

    aput-object v5, v2, v3

    const/16 v3, 0xc

    aput-object v5, v2, v3

    const/16 v3, 0xd

    aput-object v5, v2, v3

    const/16 v3, 0xe

    aput-object v5, v2, v3

    iput-object v2, p0, Lorg/mozilla/intl/chardet/nsPSMDetector;->mStatisticsData:[Lorg/mozilla/intl/chardet/nsEUCStatistics;

    goto/16 :goto_1
.end method
