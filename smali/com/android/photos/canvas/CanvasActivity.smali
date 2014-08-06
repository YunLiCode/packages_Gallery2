.class public Lcom/android/photos/canvas/CanvasActivity;
.super Landroid/app/Activity;
.source "CanvasActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget-object v1, Lcom/android/photos/canvas/CanvasProvider;->BROWSER_ROOT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/pano/provider/PanoContract;->getBrowseIntent(Landroid/net/Uri;I)Landroid/content/Intent;

    move-result-object v0

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/photos/canvas/CanvasActivity;->startActivity(Landroid/content/Intent;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/photos/canvas/CanvasActivity;->finish()V

    .line 34
    return-void
.end method
