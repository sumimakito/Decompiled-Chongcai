.class Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;
.super Ljava/lang/Object;
.source "SelectCountryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndexCountry"
.end annotation


# instance fields
.field indexInList:I

.field indexInListArray:I

.field final synthetic this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;II)V
    .locals 0
    .param p2, "indexInListArray"    # I
    .param p3, "indexInList"    # I

    .prologue
    .line 201
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput p2, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInListArray:I

    .line 203
    iput p3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInList:I

    .line 204
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 208
    instance-of v2, p1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;

    if-nez v2, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v1

    .line 211
    :cond_1
    iget v2, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInList:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 214
    check-cast v0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;

    .line 215
    .local v0, "another":Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;
    iget v2, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInListArray:I

    iget v3, v0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInListArray:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInList:I

    iget v3, v0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInList:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
