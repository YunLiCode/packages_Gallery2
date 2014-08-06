.class public Lcom/google/android/pano/dialog/BaseContentFragment;
.super Ljava/lang/Object;
.source "BaseContentFragment.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBitmapCallBack:Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;

.field private final mFragment:Lcom/google/android/pano/dialog/LiteFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/pano/dialog/LiteFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/google/android/pano/dialog/LiteFragment;

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/pano/dialog/BaseContentFragment;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/pano/dialog/BaseContentFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/android/pano/dialog/BaseContentFragment;->addShadow(Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method

.method private addShadow(Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 2
    .param p1, "icon"    # Landroid/widget/ImageView;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 255
    sget v1, Lcom/google/android/pano/R$id;->shadow_layout:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/pano/widget/FrameLayoutWithShadows;

    .line 257
    .local v0, "shadowLayout":Lcom/google/android/pano/widget/FrameLayoutWithShadows;
    invoke-virtual {v0, p1}, Lcom/google/android/pano/widget/FrameLayoutWithShadows;->addShadowView(Landroid/view/View;)Landroid/view/View;

    .line 258
    return-void
.end method

.method public static buildArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "breadcrumb"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "iconResourceId"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/pano/dialog/BaseContentFragment;->buildArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static buildArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)Landroid/os/Bundle;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "breadcrumb"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "iconResourceId"    # I
    .param p4, "iconUri"    # Landroid/net/Uri;

    .prologue
    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "breadcrumb"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "description"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "iconResourceId"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    const-string v1, "iconUri"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 71
    return-object v0
.end method

.method public static buildArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 1
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "breadcrumb"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "iconUri"    # Landroid/net/Uri;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/android/pano/dialog/BaseContentFragment;->buildArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBreadCrumb()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v0}, Lcom/google/android/pano/dialog/LiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v0}, Lcom/google/android/pano/dialog/LiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/google/android/pano/R$id;->breadcrumb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method public getDescription()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v0}, Lcom/google/android/pano/dialog/LiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v0}, Lcom/google/android/pano/dialog/LiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/google/android/pano/R$id;->description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method public getIcon()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v0}, Lcom/google/android/pano/dialog/LiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v0}, Lcom/google/android/pano/dialog/LiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/google/android/pano/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public getIconResourceId()I
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v0}, Lcom/google/android/pano/dialog/LiteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "iconResourceId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIconResourceUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v0}, Lcom/google/android/pano/dialog/LiteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "iconUri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v0}, Lcom/google/android/pano/dialog/LiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v0}, Lcom/google/android/pano/dialog/LiteFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/google/android/pano/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mActivity:Landroid/app/Activity;

    .line 80
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    sget v5, Lcom/google/android/pano/R$layout;->content_fragment:I

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 106
    .local v4, "view":Landroid/view/View;
    sget v5, Lcom/google/android/pano/R$id;->title:I

    const-string v6, "title"

    invoke-virtual {p0, v4, v5, v6}, Lcom/google/android/pano/dialog/BaseContentFragment;->setTextToExtra(Landroid/view/View;ILjava/lang/String;)V

    .line 107
    sget v5, Lcom/google/android/pano/R$id;->breadcrumb:I

    const-string v6, "breadcrumb"

    invoke-virtual {p0, v4, v5, v6}, Lcom/google/android/pano/dialog/BaseContentFragment;->setTextToExtra(Landroid/view/View;ILjava/lang/String;)V

    .line 108
    sget v5, Lcom/google/android/pano/R$id;->description:I

    const-string v6, "description"

    invoke-virtual {p0, v4, v5, v6}, Lcom/google/android/pano/dialog/BaseContentFragment;->setTextToExtra(Landroid/view/View;ILjava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/BaseContentFragment;->getIconResourceId()I

    move-result v2

    .line 110
    .local v2, "iconResourceId":I
    sget v5, Lcom/google/android/pano/R$id;->icon:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 112
    .local v1, "iconImageView":Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    .line 113
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    invoke-direct {p0, v1, v4}, Lcom/google/android/pano/dialog/BaseContentFragment;->addShadow(Landroid/widget/ImageView;Landroid/view/View;)V

    .line 142
    :cond_0
    :goto_0
    return-object v4

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/pano/dialog/BaseContentFragment;->getIconResourceUri()Landroid/net/Uri;

    move-result-object v3

    .line 117
    .local v3, "iconUri":Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 118
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    iget-object v5, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_0

    .line 121
    iget-object v5, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/google/android/pano/widget/BitmapDownloader;->getInstance(Landroid/content/Context;)Lcom/google/android/pano/widget/BitmapDownloader;

    move-result-object v0

    .line 122
    .local v0, "bitmapDownloader":Lcom/google/android/pano/widget/BitmapDownloader;
    new-instance v5, Lcom/google/android/pano/dialog/BaseContentFragment$1;

    invoke-direct {v5, p0, v1, v4}, Lcom/google/android/pano/dialog/BaseContentFragment$1;-><init>(Lcom/google/android/pano/dialog/BaseContentFragment;Landroid/widget/ImageView;Landroid/view/View;)V

    iput-object v5, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mBitmapCallBack:Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;

    .line 131
    new-instance v5, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;

    iget-object v6, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->resource(Landroid/net/Uri;)Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->width(I)Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/pano/widget/BitmapWorkerOptions$Builder;->build()Lcom/google/android/pano/widget/BitmapWorkerOptions;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mBitmapCallBack:Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/pano/widget/BitmapDownloader;->getBitmap(Lcom/google/android/pano/widget/BitmapWorkerOptions;Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;)V

    goto :goto_0

    .line 138
    .end local v0    # "bitmapDownloader":Lcom/google/android/pano/widget/BitmapDownloader;
    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mBitmapCallBack:Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/pano/widget/BitmapDownloader;->getInstance(Landroid/content/Context;)Lcom/google/android/pano/widget/BitmapDownloader;

    move-result-object v0

    .line 99
    .local v0, "bitmapDownloader":Lcom/google/android/pano/widget/BitmapDownloader;
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mBitmapCallBack:Lcom/google/android/pano/widget/BitmapDownloader$BitmapCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/BitmapDownloader;->cancelDownload(Ljava/lang/Object;)Z

    .line 101
    .end local v0    # "bitmapDownloader":Lcom/google/android/pano/widget/BitmapDownloader;
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mActivity:Landroid/app/Activity;

    .line 88
    return-void
.end method

.method public setText(Landroid/view/View;ILjava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "textViewResourceId"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 190
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 191
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :cond_0
    return-void
.end method

.method public setTextToExtra(Landroid/view/View;ILjava/lang/String;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "textViewResourceId"    # I
    .param p3, "extraLabel"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/google/android/pano/dialog/BaseContentFragment;->mFragment:Lcom/google/android/pano/dialog/LiteFragment;

    invoke-interface {v1}, Lcom/google/android/pano/dialog/LiteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/pano/dialog/BaseContentFragment;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 181
    return-void
.end method
