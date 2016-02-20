.class public Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;
.super Landroid/widget/EditText;
.source "EditBlogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$OnEnterListener;,
        Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$OnSelectionListener;
    }
.end annotation


# instance fields
.field private canSelectionChanged:Z

.field private count:I

.field private ctx:Landroid/content/Context;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$OnSelectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnEnterListener:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$OnEnterListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->canSelectionChanged:Z

    .line 31
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->canSelectionChanged:Z

    .line 36
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->canSelectionChanged:Z

    .line 41
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->init()V

    .line 42
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->ctx:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->listeners:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public correctPosition(I)I
    .locals 5
    .param p1, "pos"    # I

    .prologue
    const/4 v4, 0x0

    .line 102
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 119
    .end local p1    # "pos":I
    :cond_0
    :goto_0
    return p1

    .line 106
    .restart local p1    # "pos":I
    :cond_1
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 107
    .local v0, "editable":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 108
    .local v1, "length":I
    if-ge p1, v1, :cond_0

    .line 112
    const-class v3, Landroid/text/style/ImageSpan;

    invoke-interface {v0, p1, p1, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 113
    .local v2, "objs":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_0

    .line 114
    aget-object v3, v2, v4

    invoke-interface {v0, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    if-eq p1, v3, :cond_0

    .line 115
    aget-object v3, v2, v4

    invoke-interface {v0, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0
.end method

.method public enableSelectionChanged(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->canSelectionChanged:Z

    .line 68
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 124
    new-instance v0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;

    .line 125
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x0

    .line 124
    invoke-direct {v0, p0, v1, v2}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;-><init>(Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;Landroid/view/inputmethod/InputConnection;Z)V

    .line 181
    .local v0, "inputConnection":Landroid/view/inputmethod/InputConnection;
    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 89
    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->mOnEnterListener:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$OnEnterListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->mOnEnterListener:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$OnEnterListener;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$OnEnterListener;->onEnterKey()V

    .line 93
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSelectionChanged(II)V
    .locals 3
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 56
    iget-boolean v1, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->canSelectionChanged:Z

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->listeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    :cond_0
    return-void

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$OnSelectionListener;

    .line 62
    .local v0, "l":Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$OnSelectionListener;
    invoke-interface {v0, p1, p2}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$OnSelectionListener;->onSelectionChanged(II)V

    goto :goto_0
.end method

.method public setOnEnterListener(Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$OnEnterListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$OnEnterListener;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->mOnEnterListener:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$OnEnterListener;

    .line 72
    return-void
.end method

.method public setOnSelectionListener(Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$OnSelectionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$OnSelectionListener;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method
