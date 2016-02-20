.class Lcom/baidu/platform/comapi/b/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/baidu/platform/comapi/b/c;

.field private b:Lcom/baidu/platform/comapi/b/a;

.field private c:Lcom/baidu/platform/comapi/b/e;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    iput-object v0, p0, Lcom/baidu/platform/comapi/b/d;->b:Lcom/baidu/platform/comapi/b/a;

    iput-object v0, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 4

    const/16 v3, 0x23

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->b:Lcom/baidu/platform/comapi/b/a;

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->b:Lcom/baidu/platform/comapi/b/a;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v2, v1}, Lcom/baidu/platform/comapi/b/a;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Lcom/baidu/platform/comapi/b/c;->a(I)V

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/b/e;->b(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_4
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v0, v2}, Lcom/baidu/platform/comapi/b/c;->e(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/b/e;->b(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v0, v2}, Lcom/baidu/platform/comapi/b/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v1, v0}, Lcom/baidu/platform/comapi/b/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/b/e;->b(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v0, v2}, Lcom/baidu/platform/comapi/b/c;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v1, v0}, Lcom/baidu/platform/comapi/b/c;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/b/e;->b(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v0, v2}, Lcom/baidu/platform/comapi/b/c;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v1, v0}, Lcom/baidu/platform/comapi/b/c;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/b/e;->b(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v0, v2}, Lcom/baidu/platform/comapi/b/c;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v1, v0}, Lcom/baidu/platform/comapi/b/c;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/b/e;->b(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v0, v2}, Lcom/baidu/platform/comapi/b/c;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v1, v0}, Lcom/baidu/platform/comapi/b/c;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v1, v0}, Lcom/baidu/platform/comapi/b/c;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/b/e;->b(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v0, v2}, Lcom/baidu/platform/comapi/b/c;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    iget-object v1, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v1, v0}, Lcom/baidu/platform/comapi/b/c;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/b/e;->b(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v0, v2}, Lcom/baidu/platform/comapi/b/c;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    iget-object v1, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v1, v0}, Lcom/baidu/platform/comapi/b/c;->h(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/b/e;->b(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_14

    iget-object v1, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v1, v0}, Lcom/baidu/platform/comapi/b/c;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v0, v2}, Lcom/baidu/platform/comapi/b/c;->g(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/b/e;->b(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_15

    iget-object v1, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v1, v0}, Lcom/baidu/platform/comapi/b/c;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v0, v2}, Lcom/baidu/platform/comapi/b/c;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/b/e;->b(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16

    iget-object v1, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v1, v0}, Lcom/baidu/platform/comapi/b/c;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v0, v2}, Lcom/baidu/platform/comapi/b/c;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    const/16 v1, 0x1fa

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/b/e;->b(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_17
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v0, v2}, Lcom/baidu/platform/comapi/b/c;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    iget-object v1, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v1, v0}, Lcom/baidu/platform/comapi/b/c;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_19

    const-string v0, ""

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    invoke-virtual {v0, v3}, Lcom/baidu/platform/comapi/b/e;->b(I)Ljava/lang/String;

    :cond_19
    :sswitch_d
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/b/e;->b(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_1a
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v0, v2}, Lcom/baidu/platform/comapi/b/c;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    iget-object v1, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v1, v0}, Lcom/baidu/platform/comapi/b/c;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    invoke-virtual {v0, v3}, Lcom/baidu/platform/comapi/b/e;->b(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v0, v2}, Lcom/baidu/platform/comapi/b/c;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    iget-object v1, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v1, v0}, Lcom/baidu/platform/comapi/b/c;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/b/e;->b(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v1, v0}, Lcom/baidu/platform/comapi/b/c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_10
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/b/e;->b(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1d
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v0, v2}, Lcom/baidu/platform/comapi/b/c;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    iget-object v1, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v1, v0}, Lcom/baidu/platform/comapi/b/c;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_11
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/b/e;->b(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1f

    iget-object v1, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v1, v0}, Lcom/baidu/platform/comapi/b/c;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    invoke-interface {v0, v2}, Lcom/baidu/platform/comapi/b/c;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_12
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/b/e;->b(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_20
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->b:Lcom/baidu/platform/comapi/b/a;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v2, v1}, Lcom/baidu/platform/comapi/b/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_21
    iget-object v1, p0, Lcom/baidu/platform/comapi/b/d;->b:Lcom/baidu/platform/comapi/b/a;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v2}, Lcom/baidu/platform/comapi/b/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_13
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    iget-object v1, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/b/e;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/baidu/platform/comapi/b/c;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_12
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0xb -> :sswitch_1
        0xe -> :sswitch_11
        0x12 -> :sswitch_10
        0x14 -> :sswitch_7
        0x15 -> :sswitch_1
        0x17 -> :sswitch_4
        0x1a -> :sswitch_5
        0x1c -> :sswitch_5
        0x1f -> :sswitch_6
        0x21 -> :sswitch_9
        0x23 -> :sswitch_e
        0x2c -> :sswitch_d
        0x2d -> :sswitch_f
        0x2e -> :sswitch_13
        0x33 -> :sswitch_c
        0x1f4 -> :sswitch_8
        0x1fa -> :sswitch_b
        0x1fc -> :sswitch_8
        0x1fe -> :sswitch_a
    .end sparse-switch
.end method

.method public a(Lcom/baidu/platform/comapi/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/platform/comapi/b/d;->a:Lcom/baidu/platform/comapi/b/c;

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/platform/comapi/b/d;->c:Lcom/baidu/platform/comapi/b/e;

    return-void
.end method
