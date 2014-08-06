.class Lcom/android/gallery3d/filtershow/FilterShowActivity$6;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/FilterShowActivity;->setWallpaperInBackground(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/gallery3d/filtershow/tools/BitmapTask$Callbacks",
        "<",
        "Lcom/android/gallery3d/filtershow/FilterShowActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field final synthetic val$bmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$6;->this$0:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$6;->val$bmap:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 1031
    return-void
.end method

.method public onComplete(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1028
    return-void
.end method

.method public onExecute(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "param"    # Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .prologue
    .line 1036
    :try_start_0
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity$6;->val$bmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "FilterShowActivity"

    const-string v2, "fail to set wall paper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic onExecute(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1026
    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$6;->onExecute(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
