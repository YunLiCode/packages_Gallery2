.class Lcom/android/gallery3d/app/StitchingProgressManager$RemoveFailedStitches;
.super Ljava/lang/Object;
.source "StitchingProgressManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/StitchingProgressManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveFailedStitches"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/StitchingProgressManager;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/StitchingProgressManager;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/gallery3d/app/StitchingProgressManager$RemoveFailedStitches;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/StitchingProgressManager;Lcom/android/gallery3d/app/StitchingProgressManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/gallery3d/app/StitchingProgressManager;
    .param p2, "x1"    # Lcom/android/gallery3d/app/StitchingProgressManager$1;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/StitchingProgressManager$RemoveFailedStitches;-><init>(Lcom/android/gallery3d/app/StitchingProgressManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 166
    new-instance v1, Lcom/google/android/apps/lightcycle/StitchingProgressDatabase;

    iget-object v7, p0, Lcom/android/gallery3d/app/StitchingProgressManager$RemoveFailedStitches;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    # getter for: Lcom/android/gallery3d/app/StitchingProgressManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v7}, Lcom/android/gallery3d/app/StitchingProgressManager;->access$100(Lcom/android/gallery3d/app/StitchingProgressManager;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/google/android/apps/lightcycle/StitchingProgressDatabase;-><init>(Landroid/content/Context;)V

    .line 168
    .local v1, "db":Lcom/google/android/apps/lightcycle/StitchingProgressDatabase;
    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/StitchingProgressDatabase;->getAndClearStitchingUris()Ljava/util/List;

    move-result-object v5

    .line 169
    .local v5, "oldStitches":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/StitchingProgressDatabase;->close()V

    .line 170
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 171
    iget-object v7, p0, Lcom/android/gallery3d/app/StitchingProgressManager$RemoveFailedStitches;->this$0:Lcom/android/gallery3d/app/StitchingProgressManager;

    # getter for: Lcom/android/gallery3d/app/StitchingProgressManager;->mApplication:Lcom/android/gallery3d/app/GalleryApp;
    invoke-static {v7}, Lcom/android/gallery3d/app/StitchingProgressManager;->access$100(Lcom/android/gallery3d/app/StitchingProgressManager;)Lcom/android/gallery3d/app/GalleryApp;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 172
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 173
    .local v6, "uri":Landroid/net/Uri;
    invoke-static {v0, v6}, Lcom/android/gallery3d/util/LightCycleHelper;->getPathFromURI(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "filePath":Ljava/lang/String;
    invoke-virtual {v0, v6, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 175
    if-eqz v3, :cond_0

    .line 176
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v2, "failedStitchFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 179
    .end local v2    # "failedStitchFile":Ljava/io/File;
    :cond_0
    # getter for: Lcom/android/gallery3d/app/StitchingProgressManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/gallery3d/app/StitchingProgressManager;->access$500()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removed failed stitch: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method
