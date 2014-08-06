.class public Lcom/android/dreams/phototable/FlipperDream;
.super Landroid/service/dreams/DreamService;
.source "FlipperDream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 34
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    .line 35
    const-string v1, "FlipperDream"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/dreams/phototable/FlipperDream;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dreams/phototable/AlbumSettings;->getAlbumSettings(Landroid/content/SharedPreferences;)Lcom/android/dreams/phototable/AlbumSettings;

    move-result-object v0

    .line 37
    .local v0, "settings":Lcom/android/dreams/phototable/AlbumSettings;
    invoke-virtual {v0}, Lcom/android/dreams/phototable/AlbumSettings;->isConfigured()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const v1, 0x7f040015

    invoke-virtual {p0, v1}, Lcom/android/dreams/phototable/FlipperDream;->setContentView(I)V

    .line 43
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/dreams/phototable/FlipperDream;->setFullscreen(Z)V

    .line 44
    return-void

    .line 40
    :cond_0
    const v1, 0x7f040012

    invoke-virtual {p0, v1}, Lcom/android/dreams/phototable/FlipperDream;->setContentView(I)V

    goto :goto_0
.end method

.method public onDreamingStarted()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dreams/phototable/FlipperDream;->setInteractive(Z)V

    .line 30
    return-void
.end method
