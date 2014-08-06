.class public Lcom/android/photos/FullscreenViewer;
.super Landroid/app/Activity;
.source "FullscreenViewer.java"


# instance fields
.field private mTextureView:Lcom/android/photos/views/TiledImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/photos/FullscreenViewer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Lcom/android/photos/views/TiledImageView;

    invoke-direct {v1, p0}, Lcom/android/photos/views/TiledImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/photos/FullscreenViewer;->mTextureView:Lcom/android/photos/views/TiledImageView;

    .line 34
    iget-object v1, p0, Lcom/android/photos/FullscreenViewer;->mTextureView:Lcom/android/photos/views/TiledImageView;

    new-instance v2, Lcom/android/photos/BitmapRegionTileSource;

    invoke-direct {v2, v0}, Lcom/android/photos/BitmapRegionTileSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/photos/views/TiledImageView;->setTileSource(Lcom/android/photos/views/TiledImageRenderer$TileSource;)V

    .line 35
    iget-object v1, p0, Lcom/android/photos/FullscreenViewer;->mTextureView:Lcom/android/photos/views/TiledImageView;

    invoke-virtual {p0, v1}, Lcom/android/photos/FullscreenViewer;->setContentView(Landroid/view/View;)V

    .line 36
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 41
    iget-object v0, p0, Lcom/android/photos/FullscreenViewer;->mTextureView:Lcom/android/photos/views/TiledImageView;

    invoke-virtual {v0}, Lcom/android/photos/views/TiledImageView;->destroy()V

    .line 42
    return-void
.end method
