.class public Lcom/android/gallery3d/util/LightCycleHelper;
.super Ljava/lang/Object;
.source "LightCycleHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/util/LightCycleHelper$PanoramaViewHelper;,
        Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;
    }
.end annotation


# static fields
.field public static final NOT_PANORAMA:Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;

.field private static mInitializationLock:Ljava/lang/Object;

.field private static mIsNativeInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/util/LightCycleHelper;->mIsNativeInitialized:Z

    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/gallery3d/util/LightCycleHelper;->mInitializationLock:Ljava/lang/Object;

    .line 153
    new-instance v0, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    invoke-direct {v0}, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;-><init>()V

    sput-object v0, Lcom/android/gallery3d/util/LightCycleHelper;->NOT_PANORAMA:Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static createPanoramaModule()Lcom/android/camera/CameraModule;
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;-><init>()V

    return-object v0
.end method

.method public static createStitchingManagerInstance(Lcom/android/gallery3d/app/GalleryApp;)Lcom/android/gallery3d/app/StitchingProgressManager;
    .locals 1
    .param p0, "app"    # Lcom/android/gallery3d/app/GalleryApp;

    .prologue
    .line 202
    new-instance v0, Lcom/android/gallery3d/app/StitchingProgressManager;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/StitchingProgressManager;-><init>(Lcom/android/gallery3d/app/GalleryApp;)V

    return-object v0
.end method

.method public static getPanoramaMetadata(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 169
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    invoke-static {v0, p1}, Lcom/android/gallery3d/util/LightCycleHelper;->getPathFromURI(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "filePath":Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_1

    .line 178
    sget-object v3, Lcom/android/gallery3d/util/LightCycleHelper;->NOT_PANORAMA:Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    .line 185
    :goto_1
    return-object v3

    .line 174
    .end local v1    # "filePath":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "filePath":Ljava/lang/String;
    goto :goto_0

    .line 180
    :cond_1
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->parse(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    move-result-object v2

    .line 181
    .local v2, "panoMeta":Lcom/google/android/apps/lightcycle/util/PanoMetadata;
    if-nez v2, :cond_2

    .line 182
    sget-object v3, Lcom/android/gallery3d/util/LightCycleHelper;->NOT_PANORAMA:Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    goto :goto_1

    .line 185
    :cond_2
    new-instance v3, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;

    invoke-direct {v3, v2}, Lcom/android/gallery3d/util/LightCycleHelper$PanoramaMetadata;-><init>(Lcom/google/android/apps/lightcycle/util/PanoMetadata;)V

    goto :goto_1
.end method

.method public static getPathFromURI(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 209
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .local v2, "proj":[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 212
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 213
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 224
    :goto_0
    return-object v3

    .line 217
    :cond_0
    :try_start_0
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 218
    .local v6, "columnIndex":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 224
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 221
    :cond_1
    :try_start_1
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 224
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v6    # "columnIndex":I
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static hasLightCycleCapture(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 161
    sget-boolean v0, Lcom/android/gallery3d/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initNative()V
    .locals 2

    .prologue
    .line 189
    sget-object v1, Lcom/android/gallery3d/util/LightCycleHelper;->mInitializationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    sget-boolean v0, Lcom/android/gallery3d/util/LightCycleHelper;->mIsNativeInitialized:Z

    if-nez v0, :cond_0

    .line 191
    invoke-static {}, Lcom/google/android/apps/lightcycle/LightCycleApp;->initLightCycleNative()V

    .line 192
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/gallery3d/util/LightCycleHelper;->mIsNativeInitialized:Z

    .line 194
    :cond_0
    monitor-exit v1

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
