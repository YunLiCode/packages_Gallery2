.class public final Lcom/google/android/pano/provider/PanoContract;
.super Ljava/lang/Object;
.source "PanoContract.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1396
    return-void
.end method

.method public static getBrowseIntent(Landroid/net/Uri;I)Landroid/content/Intent;
    .locals 2
    .param p0, "root"    # Landroid/net/Uri;
    .param p1, "start"    # I

    .prologue
    .line 1410
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.pano.action.BROWSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1411
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1412
    const-string v1, "start_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1413
    return-object v0
.end method

.method public static getBrowseIntentByName(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "root"    # Landroid/net/Uri;
    .param p1, "startName"    # Ljava/lang/String;

    .prologue
    .line 1428
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.pano.action.BROWSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1429
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1430
    const-string v1, "start_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1431
    return-object v0
.end method

.method public static getGridIntent(Landroid/net/Uri;I)Landroid/content/Intent;
    .locals 2
    .param p0, "root"    # Landroid/net/Uri;
    .param p1, "start"    # I

    .prologue
    .line 1461
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.pano.action.VIEW_GRID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1462
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1463
    const-string v1, "start_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1464
    return-object v0
.end method
