.class public Lcom/baidu/location/f$d;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/f;


# direct methods
.method public constructor <init>(Lcom/baidu/location/f;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/16 v3, 0x1a

    const/16 v2, 0x15

    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->if(Lcom/baidu/location/f;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1}, Lcom/baidu/location/f;->do(Lcom/baidu/location/f;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1}, Lcom/baidu/location/f;->a(Lcom/baidu/location/f;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1}, Lcom/baidu/location/f;->try(Lcom/baidu/location/f;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1, v2}, Lcom/baidu/location/f;->a(Lcom/baidu/location/f;Landroid/os/Message;I)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1, v3}, Lcom/baidu/location/f;->a(Lcom/baidu/location/f;Landroid/os/Message;I)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1}, Lcom/baidu/location/f;->int(Lcom/baidu/location/f;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->else(Lcom/baidu/location/f;)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->byte(Lcom/baidu/location/f;)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1}, Lcom/baidu/location/f;->for(Lcom/baidu/location/f;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->int(Lcom/baidu/location/f;)V

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1}, Lcom/baidu/location/f;->if(Lcom/baidu/location/f;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1}, Lcom/baidu/location/f;->byte(Lcom/baidu/location/f;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, p1}, Lcom/baidu/location/f;->new(Lcom/baidu/location/f;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->a(Lcom/baidu/location/f;)V

    goto :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->try(Lcom/baidu/location/f;)V

    goto :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->b(Lcom/baidu/location/f;)V

    goto :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->for(Lcom/baidu/location/f;)V

    goto :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, v2}, Lcom/baidu/location/f;->a(Lcom/baidu/location/f;I)V

    goto :goto_0

    :sswitch_12
    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0, v3}, Lcom/baidu/location/f;->a(Lcom/baidu/location/f;I)V

    goto :goto_0

    :sswitch_13
    sget-boolean v0, Lcom/baidu/location/j;->try:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->case(Lcom/baidu/location/f;)Lcom/baidu/location/f$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/f$d;->a:Lcom/baidu/location/f;

    invoke-static {v0}, Lcom/baidu/location/f;->case(Lcom/baidu/location/f;)Lcom/baidu/location/f$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/f$c;->do()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xc -> :sswitch_1
        0xf -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_a
        0x18 -> :sswitch_5
        0x19 -> :sswitch_c
        0x1a -> :sswitch_4
        0x1c -> :sswitch_b
        0x1f -> :sswitch_6
        0x29 -> :sswitch_d
        0x33 -> :sswitch_7
        0x34 -> :sswitch_9
        0x35 -> :sswitch_10
        0x39 -> :sswitch_8
        0x3e -> :sswitch_11
        0x3f -> :sswitch_11
        0x40 -> :sswitch_12
        0x41 -> :sswitch_12
        0x51 -> :sswitch_e
        0x5b -> :sswitch_f
        0x65 -> :sswitch_13
    .end sparse-switch
.end method
