.class public Lcom/android/dreams/phototable/PhotoTableDream;
.super Landroid/service/dreams/DreamService;
.source "PhotoTableDream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 47
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    .line 48
    const-string v1, "PhotoTableDream"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/dreams/phototable/PhotoTableDream;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dreams/phototable/AlbumSettings;->getAlbumSettings(Landroid/content/SharedPreferences;)Lcom/android/dreams/phototable/AlbumSettings;

    move-result-object v0

    .line 50
    .local v0, "settings":Lcom/android/dreams/phototable/AlbumSettings;
    invoke-virtual {v0}, Lcom/android/dreams/phototable/AlbumSettings;->isConfigured()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const v1, 0x7f04007e

    invoke-virtual {p0, v1}, Lcom/android/dreams/phototable/PhotoTableDream;->setContentView(I)V

    .line 55
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/dreams/phototable/PhotoTableDream;->setFullscreen(Z)V

    .line 56
    return-void

    .line 53
    :cond_0
    const v1, 0x7f040012

    invoke-virtual {p0, v1}, Lcom/android/dreams/phototable/PhotoTableDream;->setContentView(I)V

    goto :goto_0
.end method

.method public onDreamingStarted()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 28
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 29
    invoke-virtual {p0, v5}, Lcom/android/dreams/phototable/PhotoTableDream;->setInteractive(Z)V

    .line 31
    const v3, 0x7f0a007d

    invoke-virtual {p0, v3}, Lcom/android/dreams/phototable/PhotoTableDream;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/dreams/phototable/BummerView;

    .line 32
    .local v0, "bummer":Lcom/android/dreams/phototable/BummerView;
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTableDream;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 34
    .local v1, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0d0003

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v4, 0x7f0d0004

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v0, v5, v3, v4}, Lcom/android/dreams/phototable/BummerView;->setAnimationParams(ZII)V

    .line 39
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_0
    const v3, 0x7f0a0185

    invoke-virtual {p0, v3}, Lcom/android/dreams/phototable/PhotoTableDream;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/dreams/phototable/PhotoTable;

    .line 40
    .local v2, "table":Lcom/android/dreams/phototable/PhotoTable;
    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {v2, p0}, Lcom/android/dreams/phototable/PhotoTable;->setDream(Landroid/service/dreams/DreamService;)V

    .line 43
    :cond_1
    return-void
.end method
