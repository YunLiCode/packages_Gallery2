.class public Lcom/android/photos/canvas/CanvasProvider;
.super Lcom/android/photos/canvas/CanvasProviderBase;
.source "CanvasProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/photos/canvas/CanvasProvider$CacheImageWaiter;
    }
.end annotation


# static fields
.field public static final BASE_URI:Landroid/net/Uri;

.field public static final BROWSE_ALBUM_URI:Landroid/net/Uri;

.field public static final BROWSE_SETTINGS_URI:Landroid/net/Uri;

.field public static final GRID_ITEMS_URI:Landroid/net/Uri;

.field public static final GRID_URI:Landroid/net/Uri;

.field private static final PROJECTION_ACCOUNT:[Ljava/lang/String;

.field private static final PROJECTION_COUNT:[Ljava/lang/String;

.field private static final PROJECTION_PHOTO_PREVIEW:[Ljava/lang/String;

.field public static final QUAD_IMAGE_URI:Landroid/net/Uri;

.field protected static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mGridThumbnailDips:I

.field private mLastSync:J

.field private mResolver:Landroid/content/ContentResolver;

.field private mResources:Landroid/content/res/Resources;

.field private mThumbnailDips:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 72
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "preview_url"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/photos/canvas/CanvasProvider;->PROJECTION_PHOTO_PREVIEW:[Ljava/lang/String;

    .line 78
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/photos/canvas/CanvasProvider;->PROJECTION_ACCOUNT:[Ljava/lang/String;

    .line 84
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_count"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/photos/canvas/CanvasProvider;->PROJECTION_COUNT:[Ljava/lang/String;

    .line 105
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.android.gallery3d.provider.CanvasProvider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/photos/canvas/CanvasProvider;->BASE_URI:Landroid/net/Uri;

    .line 107
    sget-object v0, Lcom/android/photos/canvas/CanvasProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "browse/album"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/photos/canvas/CanvasProvider;->BROWSE_ALBUM_URI:Landroid/net/Uri;

    .line 108
    sget-object v0, Lcom/android/photos/canvas/CanvasProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "browse/settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/photos/canvas/CanvasProvider;->BROWSE_SETTINGS_URI:Landroid/net/Uri;

    .line 109
    sget-object v0, Lcom/android/photos/canvas/CanvasProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "grid"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/photos/canvas/CanvasProvider;->GRID_URI:Landroid/net/Uri;

    .line 110
    sget-object v0, Lcom/android/photos/canvas/CanvasProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "griditems"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/photos/canvas/CanvasProvider;->GRID_ITEMS_URI:Landroid/net/Uri;

    .line 111
    sget-object v0, Lcom/android/photos/canvas/CanvasProvider;->BASE_URI:Landroid/net/Uri;

    const-string v1, "quad"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/photos/canvas/CanvasProvider;->QUAD_IMAGE_URI:Landroid/net/Uri;

    .line 127
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/photos/canvas/CanvasProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 130
    sget-object v0, Lcom/android/photos/canvas/CanvasProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.gallery3d.provider.CanvasProvider"

    const-string v2, "browse/account/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    sget-object v0, Lcom/android/photos/canvas/CanvasProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.gallery3d.provider.CanvasProvider"

    const-string v2, "browse/album/*/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    sget-object v0, Lcom/android/photos/canvas/CanvasProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.gallery3d.provider.CanvasProvider"

    const-string v2, "browse/settings"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    sget-object v0, Lcom/android/photos/canvas/CanvasProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.gallery3d.provider.CanvasProvider"

    const-string v2, "quad/*/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/photos/canvas/CanvasProviderBase;-><init>()V

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/photos/canvas/CanvasProvider;->mLastSync:J

    .line 136
    return-void
.end method

.method private addAccountCluster(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/pano/data/Cluster;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 216
    iget-object v0, p0, Lcom/android/photos/canvas/CanvasProvider;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/photos/canvas/GalleryCanvasUtils;->queryVisibleAlbums(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v2

    .line 219
    if-eqz v2, :cond_5

    .line 220
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, p0, Lcom/android/photos/canvas/CanvasProvider;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    iget-object v0, p0, Lcom/android/photos/canvas/CanvasProvider;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0146

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 226
    :goto_1
    if-nez v1, :cond_3

    .line 227
    iget-object v0, p0, Lcom/android/photos/canvas/CanvasProvider;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 228
    iget-object v0, p0, Lcom/android/photos/canvas/CanvasProvider;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0148

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v7, v1

    .line 232
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 233
    const-string v3, "is_configured = 0"

    .line 235
    :goto_3
    iget-object v0, p0, Lcom/android/photos/canvas/CanvasProvider;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/photos/data/PhotoProvider$Accounts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/photos/canvas/CanvasProvider;->PROJECTION_ACCOUNT:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 237
    if-nez v0, :cond_0

    .line 258
    :goto_4
    return-void

    .line 240
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 242
    new-instance v2, Lcom/google/android/pano/data/Cluster$Builder;

    invoke-direct {v2}, Lcom/google/android/pano/data/Cluster$Builder;-><init>()V

    .line 243
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/pano/data/Cluster$Builder;->id(J)Lcom/google/android/pano/data/Cluster$Builder;

    .line 244
    invoke-virtual {v2, v8}, Lcom/google/android/pano/data/Cluster$Builder;->importance(I)Lcom/google/android/pano/data/Cluster$Builder;

    .line 245
    new-array v3, v8, [Ljava/lang/Object;

    aput-object v1, v3, v9

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-virtual {v2, v1}, Lcom/google/android/pano/data/Cluster$Builder;->name(Ljava/lang/String;)Lcom/google/android/pano/data/Cluster$Builder;

    .line 247
    invoke-virtual {v2, v1}, Lcom/google/android/pano/data/Cluster$Builder;->displayName(Ljava/lang/CharSequence;)Lcom/google/android/pano/data/Cluster$Builder;

    .line 248
    invoke-virtual {v2, v6}, Lcom/google/android/pano/data/Cluster$Builder;->displayDescription(Ljava/lang/CharSequence;)Lcom/google/android/pano/data/Cluster$Builder;

    .line 249
    invoke-virtual {v2, v8}, Lcom/google/android/pano/data/Cluster$Builder;->visibleCount(I)Lcom/google/android/pano/data/Cluster$Builder;

    .line 250
    sget-object v1, Lcom/android/photos/canvas/CanvasProvider;->CACHE_TIME_MS:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/pano/data/Cluster$Builder;->cacheTimeMs(J)Lcom/google/android/pano/data/Cluster$Builder;

    .line 251
    invoke-virtual {v2, v8}, Lcom/google/android/pano/data/Cluster$Builder;->imageCropAllowed(Z)Lcom/google/android/pano/data/Cluster$Builder;

    .line 252
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/android/photos/canvas/CanvasProvider;->createImageUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/pano/data/Cluster$Builder;->addItem(Landroid/net/Uri;)Lcom/google/android/pano/data/Cluster$Builder;

    .line 253
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/photos/canvas/CanvasProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/photos/canvas/AccountSelectionActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    invoke-virtual {v2, v1}, Lcom/google/android/pano/data/Cluster$Builder;->intent(Landroid/content/Intent;)Lcom/google/android/pano/data/Cluster$Builder;

    .line 255
    invoke-virtual {v2}, Lcom/google/android/pano/data/Cluster$Builder;->build()Lcom/google/android/pano/data/Cluster;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :cond_2
    move-object v3, v4

    goto :goto_3

    :cond_3
    move-object v6, v0

    move-object v7, v1

    goto :goto_2

    :cond_4
    move-object v0, v4

    move-object v1, v4

    goto/16 :goto_0

    :cond_5
    move-object v0, v4

    move-object v1, v4

    goto/16 :goto_1
.end method

.method private addAlbumClusters(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/pano/data/Cluster;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "clusters":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/pano/data/Cluster;>;"
    iget-object v11, p0, Lcom/android/photos/canvas/CanvasProvider;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v11}, Lcom/android/photos/canvas/GalleryCanvasUtils;->queryVisibleAlbums(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v4

    .line 263
    .local v4, "albums":Landroid/database/Cursor;
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 264
    .local v6, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x3

    if-ge v11, v12, :cond_1

    .line 265
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 266
    const/4 v11, 0x0

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 267
    .local v0, "albumId":J
    invoke-direct {p0, v0, v1}, Lcom/android/photos/canvas/CanvasProvider;->getMediaCount(J)I

    move-result v10

    .line 268
    .local v10, "itemCount":I
    if-lez v10, :cond_0

    .line 269
    new-instance v5, Lcom/google/android/pano/data/Cluster$Builder;

    invoke-direct {v5}, Lcom/google/android/pano/data/Cluster$Builder;-><init>()V

    .line 270
    .local v5, "bob":Lcom/google/android/pano/data/Cluster$Builder;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v5, v11, v12}, Lcom/google/android/pano/data/Cluster$Builder;->id(J)Lcom/google/android/pano/data/Cluster$Builder;

    .line 271
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lcom/google/android/pano/data/Cluster$Builder;->importance(I)Lcom/google/android/pano/data/Cluster$Builder;

    .line 272
    const/4 v11, 0x1

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/google/android/pano/data/Cluster$Builder;->displayName(Ljava/lang/CharSequence;)Lcom/google/android/pano/data/Cluster$Builder;

    .line 273
    const/4 v11, 0x2

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/google/android/pano/data/Cluster$Builder;->displayDescription(Ljava/lang/CharSequence;)Lcom/google/android/pano/data/Cluster$Builder;

    .line 274
    invoke-virtual {v5, v10}, Lcom/google/android/pano/data/Cluster$Builder;->visibleCount(I)Lcom/google/android/pano/data/Cluster$Builder;

    .line 275
    sget-object v11, Lcom/android/photos/canvas/CanvasProvider;->CACHE_TIME_MS:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v5, v11, v12}, Lcom/google/android/pano/data/Cluster$Builder;->cacheTimeMs(J)Lcom/google/android/pano/data/Cluster$Builder;

    .line 276
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lcom/google/android/pano/data/Cluster$Builder;->imageCropAllowed(Z)Lcom/google/android/pano/data/Cluster$Builder;

    .line 277
    invoke-static {v4}, Lcom/android/photos/canvas/GalleryCanvasUtils;->getEtag(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    .line 278
    .local v7, "etag":Ljava/lang/String;
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "albumIdStr":Ljava/lang/String;
    sget-object v11, Lcom/android/photos/canvas/CanvasProvider;->BROWSE_ALBUM_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 281
    .local v3, "albumUri":Landroid/net/Uri;
    invoke-virtual {v5, v3}, Lcom/google/android/pano/data/Cluster$Builder;->browseItemsUri(Landroid/net/Uri;)Lcom/google/android/pano/data/Cluster$Builder;

    .line 282
    sget-object v11, Lcom/android/photos/canvas/CanvasProvider;->BROWSER_ROOT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/photos/canvas/CanvasProvider;->getAlbumName(J)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/google/android/pano/provider/PanoContract;->getBrowseIntentByName(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 284
    .local v9, "intent":Landroid/content/Intent;
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 285
    invoke-virtual {v5, v9}, Lcom/google/android/pano/data/Cluster$Builder;->intent(Landroid/content/Intent;)Lcom/google/android/pano/data/Cluster$Builder;

    .line 286
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lcom/google/android/pano/data/Cluster$Builder;->notificationText(Ljava/lang/String;)Lcom/google/android/pano/data/Cluster$Builder;

    .line 287
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lcom/google/android/pano/data/Cluster$Builder;->notificationUri(Landroid/net/Uri;)Lcom/google/android/pano/data/Cluster$Builder;

    .line 288
    invoke-virtual {v5}, Lcom/google/android/pano/data/Cluster$Builder;->build()Lcom/google/android/pano/data/Cluster;

    move-result-object v11

    invoke-interface {p1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v2    # "albumIdStr":Ljava/lang/String;
    .end local v3    # "albumUri":Landroid/net/Uri;
    .end local v5    # "bob":Lcom/google/android/pano/data/Cluster$Builder;
    .end local v7    # "etag":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 291
    .end local v0    # "albumId":J
    .end local v10    # "itemCount":I
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 293
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_2

    .line 294
    invoke-direct {p0, p1}, Lcom/android/photos/canvas/CanvasProvider;->handleEmptyClusters(Ljava/util/List;)V

    .line 296
    :cond_2
    return-void
.end method

.method private addAllPhotosToCursor(Landroid/database/Cursor;Landroid/net/Uri;J)Landroid/database/Cursor;
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "imageUri"    # Landroid/net/Uri;
    .param p3, "albumId"    # J

    .prologue
    .line 532
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    const/4 v9, 0x4

    if-ge v8, v9, :cond_1

    .line 565
    .end local p1    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object p1

    .line 535
    .restart local p1    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v6

    .line 536
    .local v6, "projection":[Ljava/lang/String;
    array-length v8, v6

    new-array v7, v8, [Ljava/lang/Object;

    .line 537
    .local v7, "values":[Ljava/lang/Object;
    sget-object v8, Lcom/android/photos/canvas/CanvasProvider;->GRID_URI:Landroid/net/Uri;

    invoke-static {v8, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 538
    .local v3, "gridUri":Landroid/net/Uri;
    const/4 v8, 0x0

    invoke-static {v3, v8}, Lcom/google/android/pano/provider/PanoContract;->getGridIntent(Landroid/net/Uri;I)Landroid/content/Intent;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    .line 539
    .local v5, "intent":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v8, v6

    if-ge v4, v8, :cond_3

    .line 540
    sget-object v8, Lcom/android/photos/canvas/CanvasProviderBase;->BROWSE_COLUMN_CASES:Ljava/util/HashMap;

    aget-object v9, v6, v4

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 541
    .local v1, "column":Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 539
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 544
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 552
    :pswitch_1
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_2

    .line 546
    :pswitch_2
    aput-object v5, v7, v4

    goto :goto_2

    .line 549
    :pswitch_3
    aput-object p2, v7, v4

    goto :goto_2

    .line 556
    :pswitch_4
    sget-object v8, Lcom/android/photos/data/MediaRetriever$MediaSize;->Thumbnail:Lcom/android/photos/data/MediaRetriever$MediaSize;

    invoke-static {v8}, Lcom/android/photos/data/MediaCacheUtils;->getTargetSize(Lcom/android/photos/data/MediaRetriever$MediaSize;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    goto :goto_2

    .line 560
    .end local v1    # "column":Ljava/lang/Integer;
    :cond_3
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v8, 0x1

    invoke-direct {v0, v6, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 561
    .local v0, "allPhotos":Landroid/database/MatrixCursor;
    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 562
    const/4 v8, 0x2

    new-array v2, v8, [Landroid/database/Cursor;

    const/4 v8, 0x0

    aput-object v0, v2, v8

    const/4 v8, 0x1

    aput-object p1, v2, v8

    .line 565
    .local v2, "cursors":[Landroid/database/Cursor;
    new-instance p1, Landroid/database/MergeCursor;

    .end local p1    # "cursor":Landroid/database/Cursor;
    invoke-direct {p1, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_0

    .line 544
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private buildBrowseRow([Ljava/lang/String;IJIILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)[Ljava/lang/Object;
    .locals 7
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "itemCount"    # I
    .param p3, "id"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "imageUri"    # Landroid/net/Uri;
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "title"    # Ljava/lang/String;
    .param p10, "intent"    # Landroid/content/Intent;

    .prologue
    .line 583
    array-length v5, p1

    new-array v2, v5, [Ljava/lang/Object;

    .line 584
    .local v2, "header":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_2

    .line 585
    sget-object v5, Lcom/android/photos/canvas/CanvasProvider;->BROWSE_COLUMN_CASES:Ljava/util/HashMap;

    aget-object v6, p1, v3

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 584
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 588
    :cond_0
    sget-object v5, Lcom/android/photos/canvas/CanvasProvider;->BROWSE_COLUMN_CASES:Ljava/util/HashMap;

    aget-object v6, p1, v3

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 589
    .local v1, "column":I
    const/4 v4, 0x0

    .line 590
    .local v4, "obj":Ljava/lang/Object;
    packed-switch v1, :pswitch_data_0

    .line 618
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_1
    :goto_2
    :pswitch_0
    aput-object v4, v2, v3

    goto :goto_1

    .line 592
    .restart local v4    # "obj":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 593
    .local v4, "obj":Ljava/lang/Long;
    goto :goto_2

    .line 595
    .local v4, "obj":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 596
    .local v4, "obj":Ljava/lang/Integer;
    goto :goto_2

    .line 598
    .local v4, "obj":Ljava/lang/Object;
    :pswitch_3
    move-object/from16 v4, p9

    .line 599
    .local v4, "obj":Ljava/lang/String;
    goto :goto_2

    .line 601
    .local v4, "obj":Ljava/lang/Object;
    :pswitch_4
    move-object v4, p8

    .line 602
    .local v4, "obj":Ljava/lang/String;
    goto :goto_2

    .line 604
    .local v4, "obj":Ljava/lang/Object;
    :pswitch_5
    move-object v4, p7

    .line 605
    .local v4, "obj":Landroid/net/Uri;
    goto :goto_2

    .line 607
    .local v4, "obj":Ljava/lang/Object;
    :pswitch_6
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 608
    .local v4, "obj":Ljava/lang/Integer;
    goto :goto_2

    .line 610
    .local v4, "obj":Ljava/lang/Object;
    :pswitch_7
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 611
    .local v4, "obj":Ljava/lang/Integer;
    goto :goto_2

    .line 613
    .local v4, "obj":Ljava/lang/Object;
    :pswitch_8
    if-eqz p10, :cond_1

    .line 614
    const/4 v5, 0x1

    move-object/from16 v0, p10

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "obj":Ljava/lang/String;
    goto :goto_2

    .line 620
    .end local v1    # "column":I
    .end local v4    # "obj":Ljava/lang/String;
    :cond_2
    return-object v2

    .line 590
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private buildSettingsRow([Ljava/lang/String;Landroid/database/MatrixCursor;)V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x3

    .line 569
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/android/photos/canvas/CanvasProvider;->createImageUri(I)Landroid/net/Uri;

    move-result-object v7

    .line 572
    new-instance v10, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/photos/canvas/CanvasProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/photos/canvas/AccountSelectionActivity;

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 573
    const-wide/16 v3, 0x2

    iget-object v0, p0, Lcom/android/photos/canvas/CanvasProvider;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    invoke-direct/range {v0 .. v10}, Lcom/android/photos/canvas/CanvasProvider;->buildBrowseRow([Ljava/lang/String;IJIILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 575
    const-wide/16 v3, 0x1

    iget-object v0, p0, Lcom/android/photos/canvas/CanvasProvider;->mResources:Landroid/content/res/Resources;

    const/high16 v1, 0x7f110000

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v5

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    move-object v10, v8

    invoke-direct/range {v0 .. v10}, Lcom/android/photos/canvas/CanvasProvider;->buildBrowseRow([Ljava/lang/String;IJIILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 577
    const-wide/16 v3, 0x3

    iget-object v0, p0, Lcom/android/photos/canvas/CanvasProvider;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b0144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    move-object v10, v8

    invoke-direct/range {v0 .. v10}, Lcom/android/photos/canvas/CanvasProvider;->buildBrowseRow([Ljava/lang/String;IJIILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 579
    return-void
.end method

.method private createBrowseHeaderRow(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)[Ljava/lang/Object;
    .locals 6
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "badgeUri"    # Landroid/net/Uri;
    .param p6, "itemsUri"    # Landroid/net/Uri;

    .prologue
    .line 376
    array-length v4, p4

    new-array v3, v4, [Ljava/lang/Object;

    .line 377
    .local v3, "row":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p4

    if-ge v1, v4, :cond_1

    .line 378
    sget-object v4, Lcom/android/photos/canvas/CanvasProvider;->BROWSE_HEADER_COLUMN_CASES:Ljava/util/HashMap;

    aget-object v5, p4, v1

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 377
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_0
    sget-object v4, Lcom/android/photos/canvas/CanvasProvider;->BROWSE_HEADER_COLUMN_CASES:Ljava/util/HashMap;

    aget-object v5, p4, v1

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 382
    .local v0, "column":I
    const/4 v2, 0x0

    .line 383
    .local v2, "obj":Ljava/lang/Object;
    packed-switch v0, :pswitch_data_0

    .line 415
    .end local v2    # "obj":Ljava/lang/Object;
    :goto_2
    :pswitch_0
    aput-object v2, v3, v1

    goto :goto_1

    .line 385
    .restart local v2    # "obj":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 386
    .local v2, "obj":Ljava/lang/Integer;
    goto :goto_2

    .line 388
    .local v2, "obj":Ljava/lang/Object;
    :pswitch_2
    move-object v2, p2

    .line 389
    .local v2, "obj":Ljava/lang/String;
    goto :goto_2

    .line 391
    .local v2, "obj":Ljava/lang/Object;
    :pswitch_3
    move-object v2, p3

    .line 392
    .local v2, "obj":Ljava/lang/String;
    goto :goto_2

    .line 396
    .local v2, "obj":Ljava/lang/Object;
    :pswitch_4
    move-object v2, p5

    .line 397
    .local v2, "obj":Landroid/net/Uri;
    goto :goto_2

    .line 405
    .local v2, "obj":Ljava/lang/Object;
    :pswitch_5
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 406
    .local v2, "obj":Ljava/lang/Integer;
    goto :goto_2

    .line 409
    .local v2, "obj":Ljava/lang/Object;
    :pswitch_6
    iget v4, p0, Lcom/android/photos/canvas/CanvasProvider;->mThumbnailDips:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 410
    .local v2, "obj":Ljava/lang/Integer;
    goto :goto_2

    .line 412
    .local v2, "obj":Ljava/lang/Object;
    :pswitch_7
    move-object v2, p6

    .local v2, "obj":Landroid/net/Uri;
    goto :goto_2

    .line 417
    .end local v0    # "column":I
    .end local v2    # "obj":Landroid/net/Uri;
    :cond_1
    return-object v3

    .line 383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private createImageDescriptor(Landroid/net/Uri;)Landroid/content/res/AssetFileDescriptor;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x0

    .line 639
    new-instance v11, Lcom/android/photos/canvas/CanvasProvider$CacheImageWaiter;

    invoke-direct {v11}, Lcom/android/photos/canvas/CanvasProvider$CacheImageWaiter;-><init>()V

    .line 640
    .local v11, "waiter":Lcom/android/photos/canvas/CanvasProvider$CacheImageWaiter;
    invoke-static {}, Lcom/android/photos/data/MediaCache;->getInstance()Lcom/android/photos/data/MediaCache;

    move-result-object v0

    invoke-virtual {v0, p1, v11, v12}, Lcom/android/photos/data/MediaCache;->retrieveOriginal(Landroid/net/Uri;Lcom/android/photos/data/MediaCache$OriginalReady;Lcom/android/photos/data/MediaCache$ImageReady;)V

    .line 641
    invoke-virtual {v11}, Lcom/android/photos/canvas/CanvasProvider$CacheImageWaiter;->getFile()Ljava/io/File;

    move-result-object v9

    .line 642
    .local v9, "file":Ljava/io/File;
    if-eqz v9, :cond_0

    .line 644
    const/high16 v0, 0x10000000

    :try_start_0
    invoke-static {v9, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 646
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v0

    .line 647
    :catch_0
    move-exception v8

    .line 648
    .local v8, "e":Ljava/io/IOException;
    const-string v0, "GalleryCanvasProvider"

    const-string v2, "Couldn\'t open file"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 653
    .end local v8    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    .line 654
    .local v10, "pipe":[Landroid/os/ParcelFileDescriptor;
    new-instance v0, Lcom/android/photos/canvas/CanvasProvider$1;

    invoke-direct {v0, p0, v10, v11}, Lcom/android/photos/canvas/CanvasProvider$1;-><init>(Lcom/android/photos/canvas/CanvasProvider;[Landroid/os/ParcelFileDescriptor;Lcom/android/photos/canvas/CanvasProvider$CacheImageWaiter;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 661
    new-instance v2, Landroid/content/res/AssetFileDescriptor;

    const/4 v0, 0x0

    aget-object v3, v10, v0

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    invoke-direct/range {v2 .. v7}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    goto :goto_0

    .line 662
    .end local v10    # "pipe":[Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v8

    .line 663
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v0, "GalleryCanvasProvider"

    const-string v2, "Could not create cover"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v12

    .line 664
    goto :goto_0
.end method

.method public static createThumbnailUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "previewUri"    # Ljava/lang/String;

    .prologue
    .line 299
    sget-object v1, Lcom/android/photos/data/MediaRetriever$MediaSize;->Thumbnail:Lcom/android/photos/data/MediaRetriever$MediaSize;

    invoke-static {v1}, Lcom/android/photos/data/MediaCacheUtils;->getTargetSize(Lcom/android/photos/data/MediaRetriever$MediaSize;)I

    move-result v0

    .line 300
    .local v0, "targetSize":I
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/picasastore/PicasaStoreFacade;->convertImageUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private fillGridRow([Ljava/lang/Object;[Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 5
    .param p1, "row"    # [Ljava/lang/Object;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "albumId"    # J
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "badgeUri"    # Landroid/net/Uri;
    .param p7, "itemsUri"    # Landroid/net/Uri;

    .prologue
    .line 470
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    .line 471
    sget-object v3, Lcom/android/photos/canvas/CanvasProvider;->BROWSE_HEADER_COLUMN_CASES:Ljava/util/HashMap;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 470
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 474
    :cond_0
    sget-object v3, Lcom/android/photos/canvas/CanvasProvider;->BROWSE_HEADER_COLUMN_CASES:Ljava/util/HashMap;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 475
    .local v0, "column":I
    const/4 v2, 0x0

    .line 476
    .local v2, "obj":Ljava/lang/Object;
    packed-switch v0, :pswitch_data_0

    .line 494
    .end local v2    # "obj":Ljava/lang/Object;
    :goto_2
    :pswitch_0
    aput-object v2, p1, v1

    goto :goto_1

    .line 478
    .restart local v2    # "obj":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 479
    .local v2, "obj":Ljava/lang/Long;
    goto :goto_2

    .line 481
    .local v2, "obj":Ljava/lang/Object;
    :pswitch_2
    move-object v2, p5

    .line 482
    .local v2, "obj":Ljava/lang/String;
    goto :goto_2

    .line 484
    .local v2, "obj":Ljava/lang/Object;
    :pswitch_3
    move-object v2, p6

    .line 485
    .local v2, "obj":Landroid/net/Uri;
    goto :goto_2

    .line 487
    .local v2, "obj":Ljava/lang/Object;
    :pswitch_4
    move-object v2, p7

    .line 488
    .local v2, "obj":Landroid/net/Uri;
    goto :goto_2

    .line 491
    .local v2, "obj":Ljava/lang/Object;
    :pswitch_5
    iget v3, p0, Lcom/android/photos/canvas/CanvasProvider;->mGridThumbnailDips:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .local v2, "obj":Ljava/lang/Integer;
    goto :goto_2

    .line 496
    .end local v0    # "column":I
    .end local v2    # "obj":Ljava/lang/Integer;
    :cond_1
    return-void

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private getAlbumName(J)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Album "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMediaCount(J)I
    .locals 9
    .param p1, "albumId"    # J

    .prologue
    const/4 v8, 0x0

    .line 421
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 424
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string v3, "album_id = ?"

    .line 425
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/photos/canvas/CanvasProvider;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/photos/data/PhotoProvider$Photos;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/photos/canvas/CanvasProvider;->PROJECTION_COUNT:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 427
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 428
    .local v6, "count":I
    if-eqz v7, :cond_1

    .line 429
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 432
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 434
    :cond_1
    const/4 v0, 0x4

    if-le v6, v0, :cond_2

    .line 435
    add-int/lit8 v6, v6, 0x1

    .line 437
    :cond_2
    return v6
.end method

.method private handleEmptyClusters(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/pano/data/Cluster;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0}, Lcom/android/photos/canvas/CanvasProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 307
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 308
    const-string v5, "com.google.android.gallery3d.GooglePhotoProvider"

    invoke-static {v4, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_0
    new-instance v0, Lcom/google/android/pano/data/Cluster$Builder;

    invoke-direct {v0}, Lcom/google/android/pano/data/Cluster$Builder;-><init>()V

    .line 311
    invoke-virtual {p0}, Lcom/android/photos/canvas/CanvasProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b01e9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/pano/data/Cluster$Builder;->displayName(Ljava/lang/CharSequence;)Lcom/google/android/pano/data/Cluster$Builder;

    .line 312
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/android/photos/canvas/CanvasProvider;->createImageUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/pano/data/Cluster$Builder;->addItem(Landroid/net/Uri;)Lcom/google/android/pano/data/Cluster$Builder;

    .line 313
    invoke-virtual {v0, v6}, Lcom/google/android/pano/data/Cluster$Builder;->visibleCount(I)Lcom/google/android/pano/data/Cluster$Builder;

    .line 314
    invoke-virtual {v0}, Lcom/google/android/pano/data/Cluster$Builder;->build()Lcom/google/android/pano/data/Cluster;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    if-nez v1, :cond_1

    .line 316
    new-instance v0, Lcom/google/android/pano/data/Cluster$Builder;

    invoke-direct {v0}, Lcom/google/android/pano/data/Cluster$Builder;-><init>()V

    .line 317
    const-string v1, "Enable Picasa sync"

    invoke-virtual {v0, v1}, Lcom/google/android/pano/data/Cluster$Builder;->displayName(Ljava/lang/CharSequence;)Lcom/google/android/pano/data/Cluster$Builder;

    .line 318
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/pano/data/Cluster$Builder;->id(J)Lcom/google/android/pano/data/Cluster$Builder;

    .line 319
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/photos/canvas/CanvasProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/photos/canvas/EnableSyncActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/google/android/pano/data/Cluster$Builder;->intent(Landroid/content/Intent;)Lcom/google/android/pano/data/Cluster$Builder;

    .line 320
    const v1, 0x7f0200b4

    invoke-virtual {p0, v1}, Lcom/android/photos/canvas/CanvasProvider;->createImageUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/pano/data/Cluster$Builder;->addItem(Landroid/net/Uri;)Lcom/google/android/pano/data/Cluster$Builder;

    .line 321
    invoke-virtual {v0, v6}, Lcom/google/android/pano/data/Cluster$Builder;->visibleCount(I)Lcom/google/android/pano/data/Cluster$Builder;

    .line 322
    invoke-virtual {v0}, Lcom/google/android/pano/data/Cluster$Builder;->build()Lcom/google/android/pano/data/Cluster;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_1
    return-void
.end method

.method public static notifyChange(Landroid/content/Context;Ljava/util/Set;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "changed":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/photos/canvas/CanvasProvider;->NOTIFY_CHANGED_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 185
    :cond_0
    return-void
.end method


# virtual methods
.method protected buildBrowseHeaders([Ljava/lang/String;Landroid/database/MatrixCursor;)V
    .locals 36
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "c"    # Landroid/database/MatrixCursor;

    .prologue
    .line 329
    const v4, 0x7f030001

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/photos/canvas/CanvasProvider;->createImageUri(I)Landroid/net/Uri;

    move-result-object v9

    .line 330
    .local v9, "badge":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/photos/canvas/CanvasProvider;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0141

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 331
    .local v7, "allPhotosTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/photos/canvas/CanvasProvider;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4}, Lcom/android/photos/canvas/GalleryCanvasUtils;->queryVisibleAlbums(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v28

    .line 332
    .local v28, "albums":Landroid/database/Cursor;
    if-nez v28, :cond_0

    .line 372
    :goto_0
    return-void

    .line 335
    :cond_0
    const-wide/16 v32, 0x0

    .line 336
    .local v32, "hash":J
    :goto_1
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 337
    const/4 v4, 0x3

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 338
    .local v29, "etag":Ljava/lang/String;
    if-nez v29, :cond_1

    const-wide/16 v30, 0x0

    .line 339
    .local v30, "etagHash":J
    :goto_2
    move-wide/from16 v0, v32

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Lcom/android/photos/canvas/GalleryCanvasUtils;->addHash(JJ)J

    move-result-wide v32

    .line 340
    goto :goto_1

    .line 338
    .end local v30    # "etagHash":J
    :cond_1
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v30, v0

    goto :goto_2

    .line 341
    .end local v29    # "etag":Ljava/lang/String;
    :cond_2
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->abs(J)J

    move-result-wide v32

    .line 342
    const/4 v4, -0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 344
    sget-object v4, Lcom/android/photos/canvas/CanvasProvider;->BROWSE_ALBUM_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 346
    .local v10, "uri":Landroid/net/Uri;
    const/4 v5, 0x0

    const-string v6, "All Photos"

    move-object/from16 v4, p0

    move-object/from16 v8, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/photos/canvas/CanvasProvider;->createBrowseHeaderRow(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)[Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 349
    if-eqz v28, :cond_5

    .line 350
    :cond_3
    :goto_3
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 351
    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 352
    .local v25, "albumId":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/android/photos/canvas/CanvasProvider;->getMediaCount(J)I

    move-result v35

    .line 353
    .local v35, "mediaCount":I
    if-eqz v35, :cond_3

    .line 356
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 357
    .local v14, "title":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/android/photos/canvas/GalleryCanvasUtils;->getEtag(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v29

    .line 358
    .restart local v29    # "etag":Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v27

    .line 359
    .local v27, "albumIdStr":Ljava/lang/String;
    sget-object v4, Lcom/android/photos/canvas/CanvasProvider;->BROWSE_ALBUM_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v17

    .line 361
    .local v17, "browseUri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/database/MatrixCursor;->getCount()I

    move-result v12

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/android/photos/canvas/CanvasProvider;->getAlbumName(J)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v11, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v9

    invoke-direct/range {v11 .. v17}, Lcom/android/photos/canvas/CanvasProvider;->createBrowseHeaderRow(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)[Ljava/lang/Object;

    move-result-object v34

    .line 363
    .local v34, "header":[Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    .line 365
    .end local v14    # "title":Ljava/lang/String;
    .end local v17    # "browseUri":Landroid/net/Uri;
    .end local v25    # "albumId":J
    .end local v27    # "albumIdStr":Ljava/lang/String;
    .end local v29    # "etag":Ljava/lang/String;
    .end local v34    # "header":[Ljava/lang/Object;
    .end local v35    # "mediaCount":I
    :cond_4
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 369
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/photos/canvas/CanvasProvider;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0b0142

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 370
    .local v21, "settingsTitle":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/database/MatrixCursor;->getCount()I

    move-result v19

    const-string v20, "Settings"

    sget-object v24, Lcom/android/photos/canvas/CanvasProvider;->BROWSE_SETTINGS_URI:Landroid/net/Uri;

    move-object/from16 v18, p0

    move-object/from16 v22, p1

    move-object/from16 v23, v9

    invoke-direct/range {v18 .. v24}, Lcom/android/photos/canvas/CanvasProvider;->createBrowseHeaderRow(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)[Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected buildBrowseRow([Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 507
    sget-object v6, Lcom/android/photos/canvas/CanvasProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 508
    .local v3, "match":I
    const/4 v2, 0x0

    .line 509
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez p1, :cond_0

    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 510
    sget-object p1, Lcom/android/photos/canvas/CanvasProvider;->BROWSE_PROJECTION_ALL:[Ljava/lang/String;

    .line 512
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 528
    :goto_0
    return-object v2

    .line 514
    :pswitch_0
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 515
    .local v0, "albumId":J
    iget-object v6, p0, Lcom/android/photos/canvas/CanvasProvider;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v6, p1, v0, v1}, Lcom/android/photos/canvas/GalleryCanvasUtils;->queryPhotos(Landroid/content/ContentResolver;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v5

    .line 517
    .local v5, "photosInAlbum":Landroid/database/Cursor;
    new-instance v2, Lcom/android/photos/canvas/ImageBrowseRowCursor;

    .end local v2    # "cursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/photos/canvas/CanvasProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6, v5, p1}, Lcom/android/photos/canvas/ImageBrowseRowCursor;-><init>(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 518
    .restart local v2    # "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v2, p2, v0, v1}, Lcom/android/photos/canvas/CanvasProvider;->addAllPhotosToCursor(Landroid/database/Cursor;Landroid/net/Uri;J)Landroid/database/Cursor;

    move-result-object v2

    .line 519
    goto :goto_0

    .line 522
    .end local v0    # "albumId":J
    .end local v5    # "photosInAlbum":Landroid/database/Cursor;
    :pswitch_1
    new-instance v4, Landroid/database/MatrixCursor;

    invoke-direct {v4, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 523
    .local v4, "matrixCursor":Landroid/database/MatrixCursor;
    invoke-direct {p0, p1, v4}, Lcom/android/photos/canvas/CanvasProvider;->buildSettingsRow([Ljava/lang/String;Landroid/database/MatrixCursor;)V

    .line 524
    move-object v2, v4

    .line 525
    goto :goto_0

    .line 512
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected buildGrid([Ljava/lang/String;Landroid/database/MatrixCursor;Landroid/net/Uri;)V
    .locals 23
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "c"    # Landroid/database/MatrixCursor;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 442
    invoke-static/range {p3 .. p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v20

    .line 443
    .local v20, "albumId":J
    const v2, 0x7f030001

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/photos/canvas/CanvasProvider;->createImageUri(I)Landroid/net/Uri;

    move-result-object v8

    .line 445
    .local v8, "badge":Landroid/net/Uri;
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v3, v2, [Ljava/lang/Object;

    .line 446
    .local v3, "row":[Ljava/lang/Object;
    const-wide/16 v4, 0x0

    cmp-long v2, v20, v4

    if-nez v2, :cond_1

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/photos/canvas/CanvasProvider;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b0141

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 449
    .local v7, "allPhotosTitle":Ljava/lang/String;
    sget-object v2, Lcom/android/photos/canvas/CanvasProvider;->GRID_ITEMS_URI:Landroid/net/Uri;

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 450
    .local v9, "allPhotosUri":Landroid/net/Uri;
    const-wide/16 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/photos/canvas/CanvasProvider;->fillGridRow([Ljava/lang/Object;[Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 451
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 466
    .end local v7    # "allPhotosTitle":Ljava/lang/String;
    .end local v9    # "allPhotosUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    sget-object v2, Lcom/android/photos/data/PhotoProvider$Albums;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 454
    .local v11, "albumUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/photos/canvas/CanvasProvider;->mResolver:Landroid/content/ContentResolver;

    sget-object v12, Lcom/android/photos/canvas/GalleryCanvasUtils;->PROJECTION_ALBUM:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 456
    .local v22, "albums":Landroid/database/Cursor;
    if-eqz v22, :cond_0

    .line 457
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 458
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 459
    .local v17, "title":Ljava/lang/String;
    sget-object v2, Lcom/android/photos/canvas/CanvasProvider;->GRID_ITEMS_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .local v19, "itemsUri":Landroid/net/Uri;
    move-object/from16 v12, p0

    move-object v13, v3

    move-object/from16 v14, p1

    move-wide/from16 v15, v20

    move-object/from16 v18, v8

    .line 460
    invoke-direct/range {v12 .. v19}, Lcom/android/photos/canvas/CanvasProvider;->fillGridRow([Ljava/lang/Object;[Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 461
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 463
    .end local v17    # "title":Ljava/lang/String;
    .end local v19    # "itemsUri":Landroid/net/Uri;
    :cond_2
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected buildGridItems([Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 5
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 500
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 501
    .local v0, "albumId":J
    iget-object v3, p0, Lcom/android/photos/canvas/CanvasProvider;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, p1, v0, v1}, Lcom/android/photos/canvas/GalleryCanvasUtils;->queryPhotos(Landroid/content/ContentResolver;[Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v2

    .line 502
    .local v2, "cursor":Landroid/database/Cursor;
    new-instance v3, Lcom/android/photos/canvas/ImageBrowseRowCursor;

    invoke-virtual {p0}, Lcom/android/photos/canvas/CanvasProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2, p1}, Lcom/android/photos/canvas/ImageBrowseRowCursor;-><init>(Landroid/content/Context;Landroid/database/Cursor;[Ljava/lang/String;)V

    return-object v3
.end method

.method protected loadClusters(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/pano/data/Cluster;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "clusters":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/pano/data/Cluster;>;"
    iget-wide v0, p0, Lcom/android/photos/canvas/CanvasProvider;->mLastSync:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 207
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/photos/canvas/CanvasProvider;->mLastSync:J

    .line 208
    invoke-virtual {p0}, Lcom/android/photos/canvas/CanvasProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/picasasource/PicasaSource;->requestSync(Landroid/content/Context;)V

    .line 211
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/photos/canvas/CanvasProvider;->addAccountCluster(Ljava/util/List;)V

    .line 212
    invoke-direct {p0, p1}, Lcom/android/photos/canvas/CanvasProvider;->addAlbumClusters(Ljava/util/List;)V

    .line 213
    return-void
.end method

.method public onCreate()Z
    .locals 7

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/photos/canvas/CanvasProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/photos/canvas/CanvasProvider;->mResolver:Landroid/content/ContentResolver;

    .line 190
    invoke-virtual {p0}, Lcom/android/photos/canvas/CanvasProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/photos/canvas/CanvasProvider;->mResources:Landroid/content/res/Resources;

    .line 191
    invoke-virtual {p0}, Lcom/android/photos/canvas/CanvasProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 192
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 193
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 194
    sget-object v2, Lcom/android/photos/data/MediaRetriever$MediaSize;->Thumbnail:Lcom/android/photos/data/MediaRetriever$MediaSize;

    invoke-static {v2}, Lcom/android/photos/data/MediaCacheUtils;->getTargetSize(Lcom/android/photos/data/MediaRetriever$MediaSize;)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/android/photos/canvas/CanvasProvider;->mThumbnailDips:I

    .line 196
    iget-object v2, p0, Lcom/android/photos/canvas/CanvasProvider;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0e005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/android/photos/canvas/CanvasProvider;->mGridThumbnailDips:I

    .line 198
    invoke-virtual {p0}, Lcom/android/photos/canvas/CanvasProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/photos/data/MediaCache;->initialize(Landroid/content/Context;)V

    .line 199
    invoke-static {}, Lcom/android/photos/data/MediaCache;->getInstance()Lcom/android/photos/data/MediaCache;

    move-result-object v2

    sget-object v3, Lcom/android/photos/canvas/CanvasProvider;->QUAD_IMAGE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/photos/canvas/CanvasProvider;->QUAD_IMAGE_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/photos/canvas/QuadImageRetriever;

    invoke-virtual {p0}, Lcom/android/photos/canvas/CanvasProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/photos/canvas/QuadImageRetriever;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/photos/data/MediaCache;->addRetriever(Ljava/lang/String;Ljava/lang/String;Lcom/android/photos/data/MediaRetriever;)V

    .line 201
    const/4 v2, 0x1

    return v2
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 629
    sget-object v1, Lcom/android/photos/canvas/CanvasProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 630
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 635
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/android/photos/canvas/CanvasProviderBase;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    :goto_0
    return-object v1

    .line 633
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/photos/canvas/CanvasProvider;->createImageDescriptor(Landroid/net/Uri;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    goto :goto_0

    .line 630
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
