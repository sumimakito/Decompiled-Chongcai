.class Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectCountryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountryAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;


# direct methods
.method private constructor <init>(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;-><init>(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)V

    return-void
.end method

.method private createTitleView(I)Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;
    .locals 5
    .param p1, "indexInListArray"    # I

    .prologue
    .line 348
    new-instance v0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;-><init>(Landroid/content/Context;)V

    .line 349
    .local v0, "titleView":Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;
    if-nez p1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    const-string v2, "Common"

    const-string v3, "\u5e38\u7528"

    const-string v4, "\u5e38\u7528"

    invoke-static {v1, v2, v3, v4}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;->setTitle(Ljava/lang/String;)V

    .line 354
    :goto_0
    return-object v0

    .line 352
    :cond_0
    add-int/lit8 v1, p1, 0x41

    add-int/lit8 v1, v1, -0x1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    # getter for: Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->indexCountries:Ljava/util/List;
    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->access$0(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    # getter for: Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->indexCountries:Ljava/util/List;
    invoke-static {v0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->access$0(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 281
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 286
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    # getter for: Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->indexCountries:Ljava/util/List;
    invoke-static {v2}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->access$0(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    # getter for: Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->indexCountries:Ljava/util/List;
    invoke-static {v2}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->access$0(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-object v1

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    # getter for: Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->indexCountries:Ljava/util/List;
    invoke-static {v2}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->access$0(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq p1, v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    # getter for: Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->indexCountries:Ljava/util/List;
    invoke-static {v2}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->access$0(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;

    .line 293
    .local v0, "indexCountry":Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;
    iget v2, v0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInList:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 296
    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    # getter for: Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->arrSubCountry:[Ljava/util/List;
    invoke-static {v1}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->access$1(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)[Ljava/util/List;

    move-result-object v1

    iget v2, v0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInListArray:I

    aget-object v1, v1, v2

    iget v2, v0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInList:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 303
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, -0x1

    .line 308
    const/4 v2, 0x0

    .line 309
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    # getter for: Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->indexCountries:Ljava/util/List;
    invoke-static {v3}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->access$0(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;

    .line 311
    .local v1, "indexCountry":Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;
    if-nez p2, :cond_1

    .line 313
    iget v3, v1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInList:I

    if-ne v3, v4, :cond_0

    .line 314
    iget v3, v1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInListArray:I

    invoke-direct {p0, v3}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;->createTitleView(I)Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;

    move-result-object v2

    .line 344
    :goto_0
    return-object v2

    .line 318
    :cond_0
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    # getter for: Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->arrSubCountry:[Ljava/util/List;
    invoke-static {v3}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->access$1(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)[Ljava/util/List;

    move-result-object v3

    iget v4, v1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInListArray:I

    aget-object v3, v3, v4

    iget v4, v1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInList:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/register/mobile/Country;

    .line 319
    .local v0, "coutry":Lcom/sina/weibo/sdk/register/mobile/Country;
    new-instance v2, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;

    .end local v2    # "view":Landroid/view/View;
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/register/mobile/Country;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/register/mobile/Country;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 322
    .end local v0    # "coutry":Lcom/sina/weibo/sdk/register/mobile/Country;
    :cond_1
    iget v3, v1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInList:I

    if-ne v3, v4, :cond_4

    .line 323
    instance-of v3, p2, Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;

    if-eqz v3, :cond_3

    .line 324
    iget v3, v1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInListArray:I

    if-nez v3, :cond_2

    move-object v3, p2

    .line 325
    check-cast v3, Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;

    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    const-string v5, "Common"

    const-string v6, "\u5e38\u7528"

    const-string v7, "\u5e38\u7528"

    invoke-static {v4, v5, v6, v7}, Lcom/sina/weibo/sdk/utils/ResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;->update(Ljava/lang/String;)V

    .line 340
    :goto_1
    move-object v2, p2

    goto :goto_0

    .line 327
    :cond_2
    iget v3, v1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInListArray:I

    invoke-direct {p0, v3}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;->createTitleView(I)Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;

    move-result-object p2

    .line 329
    goto :goto_1

    .line 330
    :cond_3
    iget v3, v1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInListArray:I

    invoke-direct {p0, v3}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;->createTitleView(I)Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;

    move-result-object p2

    .line 332
    goto :goto_1

    .line 333
    :cond_4
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    # getter for: Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->arrSubCountry:[Ljava/util/List;
    invoke-static {v3}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->access$1(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)[Ljava/util/List;

    move-result-object v3

    iget v4, v1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInListArray:I

    aget-object v3, v3, v4

    iget v4, v1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$IndexCountry;->indexInList:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/register/mobile/Country;

    .line 334
    .restart local v0    # "coutry":Lcom/sina/weibo/sdk/register/mobile/Country;
    instance-of v3, p2, Lcom/sina/weibo/sdk/register/mobile/SelectCountryTitleView;

    if-eqz v3, :cond_5

    .line 335
    new-instance p2, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$CountryAdapter;->this$0:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/register/mobile/Country;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/register/mobile/Country;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p2, v3, v4, v5}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .restart local p2    # "convertView":Landroid/view/View;
    goto :goto_1

    :cond_5
    move-object v3, p2

    .line 337
    check-cast v3, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/register/mobile/Country;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/register/mobile/Country;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryItemView;->updateContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
