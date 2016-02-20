.class Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "EditBlogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "$anonymous1"    # Z

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;->this$0:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    .line 124
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/4 v8, -0x1

    .line 129
    iget-object v7, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;->this$0:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v7}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 130
    .local v0, "content":Landroid/text/Editable;
    new-instance v4, Ljava/lang/String;

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 131
    .local v4, "oldText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    .line 132
    .local v5, "start":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 133
    .local v3, "end":I
    if-eq v5, v8, :cond_3

    if-eq v3, v8, :cond_3

    .line 134
    iget-object v7, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;->this$0:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v7, v5}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->correctPosition(I)I

    move-result v2

    .line 135
    .local v2, "correctStart":I
    iget-object v7, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;->this$0:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v7, v3}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->correctPosition(I)I

    move-result v1

    .line 137
    .local v1, "correctEnd":I
    if-le v2, v1, :cond_0

    .line 138
    move v6, v2

    .line 139
    .local v6, "temp":I
    move v2, v1

    .line 140
    move v1, v6

    .line 142
    .end local v6    # "temp":I
    :cond_0
    if-ne v2, v5, :cond_1

    if-eq v1, v3, :cond_2

    .line 143
    :cond_1
    invoke-static {v0, v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 145
    :cond_2
    if-eq v2, v1, :cond_3

    .line 146
    iget-object v7, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;->this$0:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v7}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 150
    .end local v1    # "correctEnd":I
    .end local v2    # "correctStart":I
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v7

    return v7
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/4 v8, -0x1

    .line 156
    iget-object v7, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;->this$0:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v7}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 157
    .local v0, "content":Landroid/text/Editable;
    new-instance v4, Ljava/lang/String;

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 158
    .local v4, "oldText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    .line 159
    .local v5, "start":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 161
    .local v3, "end":I
    if-eq v5, v8, :cond_3

    if-eq v3, v8, :cond_3

    .line 162
    iget-object v7, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;->this$0:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v7, v5}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->correctPosition(I)I

    move-result v2

    .line 163
    .local v2, "correctStart":I
    iget-object v7, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;->this$0:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v7, v3}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->correctPosition(I)I

    move-result v1

    .line 165
    .local v1, "correctEnd":I
    if-le v2, v1, :cond_0

    .line 166
    move v6, v2

    .line 167
    .local v6, "temp":I
    move v2, v1

    .line 168
    move v1, v6

    .line 170
    .end local v6    # "temp":I
    :cond_0
    if-ne v2, v5, :cond_1

    if-eq v1, v3, :cond_2

    .line 171
    :cond_1
    invoke-static {v0, v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 173
    :cond_2
    if-eq v2, v1, :cond_3

    .line 174
    iget-object v7, p0, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView$1;->this$0:Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;

    invoke-virtual {v7}, Lcom/sina/weibo/sdk/api/share/ui/EditBlogView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 178
    .end local v1    # "correctEnd":I
    .end local v2    # "correctStart":I
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v7

    return v7
.end method
