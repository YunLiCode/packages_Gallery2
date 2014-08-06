.class public Lcom/google/android/pano/widget/MetadataView;
.super Landroid/widget/FrameLayout;
.source "MetadataView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/MetadataView$MetadataHolder;
    }
.end annotation


# instance fields
.field protected mAlbum:Landroid/widget/TextView;

.field protected mArt:Landroid/widget/ImageView;

.field protected mArtist:Landroid/widget/TextView;

.field protected mHandler:Landroid/os/Handler;

.field protected mMetadata:Lcom/google/android/pano/widget/MetadataView$MetadataHolder;

.field protected mMetadataUpdater:Ljava/lang/Runnable;

.field protected mRes:Landroid/content/res/Resources;

.field protected mTitle:Landroid/widget/TextView;

.field protected mUseArt:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/MetadataView;->mHandler:Landroid/os/Handler;

    .line 40
    new-instance v0, Lcom/google/android/pano/widget/MetadataView$1;

    invoke-direct {v0, p0}, Lcom/google/android/pano/widget/MetadataView$1;-><init>(Lcom/google/android/pano/widget/MetadataView;)V

    iput-object v0, p0, Lcom/google/android/pano/widget/MetadataView;->mMetadataUpdater:Ljava/lang/Runnable;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/pano/widget/MetadataView;->mRes:Landroid/content/res/Resources;

    .line 65
    invoke-virtual {p0}, Lcom/google/android/pano/widget/MetadataView;->initDefaults()V

    .line 66
    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/google/android/pano/widget/MetadataView;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/pano/widget/MetadataView;->setupViews()V

    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/pano/widget/MetadataView;->setMetadata(Lcom/google/android/pano/widget/MetadataView$MetadataHolder;Z)V

    .line 71
    return-void
.end method


# virtual methods
.method protected initDefaults()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method protected initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    return-void
.end method

.method public setMetadata(Lcom/google/android/pano/widget/MetadataView$MetadataHolder;Z)V
    .locals 2
    .param p1, "metadata"    # Lcom/google/android/pano/widget/MetadataView$MetadataHolder;
    .param p2, "useArt"    # Z

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/pano/widget/MetadataView;->mMetadata:Lcom/google/android/pano/widget/MetadataView$MetadataHolder;

    .line 75
    iput-boolean p2, p0, Lcom/google/android/pano/widget/MetadataView;->mUseArt:Z

    .line 76
    iget-object v0, p0, Lcom/google/android/pano/widget/MetadataView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/pano/widget/MetadataView;->mMetadataUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method

.method protected setupViews()V
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/android/pano/widget/MetadataView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 89
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/google/android/pano/R$layout;->default_metadata_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 90
    sget v1, Lcom/google/android/pano/R$id;->title:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/MetadataView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/pano/widget/MetadataView;->mTitle:Landroid/widget/TextView;

    .line 91
    sget v1, Lcom/google/android/pano/R$id;->album:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/MetadataView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/pano/widget/MetadataView;->mAlbum:Landroid/widget/TextView;

    .line 92
    sget v1, Lcom/google/android/pano/R$id;->artist:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/MetadataView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/pano/widget/MetadataView;->mArtist:Landroid/widget/TextView;

    .line 93
    sget v1, Lcom/google/android/pano/R$id;->art:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/widget/MetadataView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/pano/widget/MetadataView;->mArt:Landroid/widget/ImageView;

    .line 94
    return-void
.end method
