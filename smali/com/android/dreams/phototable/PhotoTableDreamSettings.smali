.class public Lcom/android/dreams/phototable/PhotoTableDreamSettings;
.super Lcom/android/dreams/phototable/FlipperDreamSettings;
.source "PhotoTableDreamSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/dreams/phototable/FlipperDreamSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/android/dreams/phototable/FlipperDreamSettings;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const-string v0, "PhotoTableDream"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/dreams/phototable/PhotoTableDreamSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/FlipperDreamSettings;->mSettings:Landroid/content/SharedPreferences;

    .line 32
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoTableDreamSettings;->init()V

    .line 33
    return-void
.end method
