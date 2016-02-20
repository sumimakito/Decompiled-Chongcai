.class public final Lws;
.super Lwr;


# instance fields
.field final synthetic d:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V
    .locals 0

    iput-object p1, p0, Lws;->d:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    invoke-direct {p0, p1}, Lwr;-><init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;Lwq;)V
    .locals 0

    invoke-direct {p0, p1}, Lws;-><init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V

    return-void
.end method


# virtual methods
.method final a()Lwu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwu",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lws;->d:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->b:Lwu;

    return-object v0
.end method

.method final a(Lwu;)Lwu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwu",
            "<TE;>;)",
            "Lwu",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p1, Lwu;->b:Lwu;

    return-object v0
.end method
